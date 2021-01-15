<?php 

include("../timeout.php");
 include("con_db.php");
global $db;
//$db->debug=1;

      $CurTable = "assemblybizdocs";
   $recdata = array();
   $cols = $db->metaColumnNames($CurTable,true);
   $k = 0;
    $DocumentCategory = $_POST['DocumentCategory'];  
    $url = $_POST['url']; 
  /*$Order = $_POST['order'];
  $OrderColumn = $cols[$Order[0]["column"]];
  $OrderDire = $Order[0]["dir"];  

   $where = "where ItemType='$ItemType'  ";
  if ($q != "") {
    $where .= " and $SearchField like '%$q%'";
  }*/

   $getData = $db->Execute("select *from $CurTable where DocumentCategory='$DocumentCategory'  order by S_ROWID desc");
   $count = $getData->RecordCount();
    while (!$getData->EOF) {
      $rst = array();
    
        $rst = $getData->fields;
      
      $S_ROWID = $rst["S_ROWID"];
      
  
      $k +=1;
      $record = array();
     // $record[] = $k;      
      //$link = "<a href='#' id='CatID-$S_ROWID' onclick='OpenDocType(\"$DocumentCategory\",\"$S_ROWID\"); return false;'>$DocumentCategory</a>";
       $DocumentTitle = $rst["DocumentTitle"];

       $flink = "cid=$S_ROWID&view=edit";
        $LinkUrl = str_replace('view=list',$flink, $url);
      $FileLink = "<a href=' $LinkUrl'><i class='fa fa-file-pdf-o bigger-170 red'></i>  <span>$DocumentTitle</span></>";
      $record[] = $k; 
      $record[] =  $FileLink;
      $record[] = date('D jS M Y',strtotime($rst["DocumentDate"])); 
      $record[] = $rst["CreatedBy"]; 
      $record[] = date('D jS M Y h:i a',strtotime($rst["DateCreated"])); 
      $record[] = ""; 
      $recdata[] = $record;
         
    $getData->MoveNext();
    }
 
   $array = array();
   $array["draw"] = $_POST['draw'];
   $array["recordsTotal"] = $count;
   $array["recordsFiltered"] = $count;
   $array["data"] =  $recdata;
   echo json_encode($array);
?>