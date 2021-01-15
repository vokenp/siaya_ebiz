<?php
   include("assets/bin/con_db.php");
   global $db;
   echo "<pre>";
    //$db->debug=1;
error_reporting(E_ALL);
ini_set('display_errors', 1);
    $searchqry = $rs->encode("kenya is me");

 echo $searchqry;
  
?>