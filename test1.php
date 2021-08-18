<?php
   include("assets/bin/con_db.php");
   global $db;
   echo "<pre>";

	        $PhoneNo = "+254712364528";
          $SendTo = array($PhoneNo) ;
            $randompswd = generatePassword(7,5);
          $message = "CAS E-Business App  Password Changed Successfully. New Password is $randompswd";
          sendSMS($SendTo,$message);

?>
