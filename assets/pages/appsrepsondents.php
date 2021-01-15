<?php 
   include("assets/bin/con_db.php");
   global $db;

  $method = isset($_POST["Method"]) ? $_POST["Method"] : "";

   if ($method == "getDocCategories") {
      $getDocCategories = $db->Execute("select *from assemblybusiness order by DisplayOrder asc");
      $list = array();
      while (!$getDocCategories->EOF) {
      	
      	$list[$getDocCategories->fields["S_ROWID"]] = $getDocCategories->fields["DocumentCategory"];
      	$getDocCategories->MoveNext();
      }

      echo json_encode($list);
   }

   if ($method == "DoUserLogin") {
      $username = safehtml($_POST['PFNo']);
      $psw = safehtml($_POST['Pwsd']);
      $pswd      = safehtml(trim(md5($psw.$username.'GodFirst')));
      $response = array();
      $getuser = $rs->row("committemembers","PersonnelNo='$username' and Pwsd='$pswd'");
           
          if($getuser["S_ROWID"] != "")
         {
             if ($getuser["UserStatus"] != "Active") {
               $response["ErrorStatus"] = 0;
               $response["Msg"] = "Your account has been suspened. Consult ICT Support for Assistance!";
               
             }
             else
             {
         $host    = $_SERVER['REMOTE_ADDR']; 
         $browser = "Android";
         $log =$db->Execute("insert into syslogin(logged_user,host,browser) values ('$username','$host','$browser')");
               $response["ErrorStatus"] = 1;
               $response["Msg"] = "Login Successful";
               $response["FullName"] = $getuser["FullName"];
               $response["Email"]    = $getuser["Email"];
               $response["PhoneNo"]  = $getuser["PhoneNo"];
               $response["Ward"]  = $getuser["Ward"];
               $response["ProfileImg"]  = "https://apps.quarto.co.ke/assemblydocs/assets/images/avatars/avatar.png";
             }
         }
         else
         {
               $response["ErrorStatus"] = 0;
               $response["Msg"] = "Wrong UserName or Password Please Try Again"; 
         }
         echo json_encode($response);
   }

   if ($method == "getMemberCommittees") {
      $PFNo = safehtml($_POST['PFNo']);
      $response = array();
      $getMemComms = $db->Execute("select *from vw_commMemberList where PersonnelNo='$PFNo'");
        while (!$getMemComms->EOF) {
           $response[] = array("CommitteeID"=>$getMemComms->fields["CommitteeID"],"CommitteeName"=>$getMemComms->fields["CommitteeName"]) ;
           $getMemComms->MoveNext();
        }
     echo json_encode($response);
   }


   if ($method == "changePwsd") {
     $username = safehtml($_POST['PFNo']);
     $OldPswd = safehtml($_POST['oldPswd']);
     $NewPswd = safehtml($_POST['newPswd']);
     $Npswd      = safehtml(trim(md5($NewPswd.$username.'GodFirst')));
     $OPswd      = safehtml(trim(md5($OldPswd.$username.'GodFirst')));
      $response = array();
      $getuser = $rs->row("committemembers","PersonnelNo='$username' and Pwsd='$OPswd'");
      if($getuser["S_ROWID"] != "")
         {
          $S_ROWID = $getuser["S_ROWID"];
          $exec = $db->Execute("update committemembers set Pwsd='$Npswd' where S_ROWID='$S_ROWID'"); 
          $logChanges["UserchangedPassword"] = $Npswd;
          logAction($S_ROWID,"users",$username,"ChangedPassword",$logChanges,"6");
          $response["ErrorStatus"] = 1;
          $response["Msg"] = "Password Changed Successfully"; 
         }
         else
         {
          $response["ErrorStatus"] = 0;
          $response["Msg"] = "Invalid Old Password. Please try Again."; 
         }
     echo json_encode($response);
   }


      if ($method == "resetPwsd") {
     $username = safehtml($_POST['PFNo']);
     $randompswd = generatePassword(7,5);
     $Npswd      = safehtml(trim(md5($randompswd.$username.'GodFirst')));
      $response = array();
      $getuser = $rs->row("committemembers","PersonnelNo='$username'");
      if($getuser["S_ROWID"] != "")
         {
          $S_ROWID = $getuser["S_ROWID"];
          $exec = $db->Execute("update committemembers set Pwsd='$Npswd' where S_ROWID='$S_ROWID'"); 
          
          $SendTo = array("+254729511569") ;
          $message = "Password Changed Successfully. New Password is $randompswd";
          sendSMS($SendTo,$message);

          $response["ErrorStatus"] = 1;
          $response["Msg"] = "Password Reset Successfully"; 
          $logChanges["PasswordReset"] = $Npswd;
          logAction($S_ROWID,"users",$username,"PasswordReset",$logChanges,"6");
          
         }
         else
         {
          $response["ErrorStatus"] = 0;
          $response["Msg"] = "Invalid PFNo, Please try Again."; 
         }
     echo json_encode($response);
   }


   if ($method == "getAssemblyDocList") {
      $CategoryID = safehtml($_POST['CategoryID']);
      $DocumentCategory = "AssemblyDocs-".$CategoryID;
      $getDocs = $db->Execute("select *from assemblybizdocs where DocumentCategory='$DocumentCategory' order by S_ROWID desc");
      $response = array();
      while (!$getDocs->EOF) {
        $rst = $getDocs->fields;
        $S_ROWID = $rst["S_ROWID"];
        $response[$S_ROWID]["DocumentTitle"]  = $rst["DocumentTitle"];
        $response[$S_ROWID]["DocumentDate"]   = $rst["DocumentDate"];
        $response[$S_ROWID]["DocumentUrl"]   = "https://apps.quarto.co.ke/assemblydocs/getDocIndex.php?docid=".$rst["DocID"];
        $getDocs->MoveNext();
      }

      echo json_encode($response);
   }

?>