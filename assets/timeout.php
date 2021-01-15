<?php
session_start();
// set timeout period in seconds
$inactive = 1200;
// check to see if $_SESSION['timeout'] is set
if(isset($_SESSION['timeout']) ) {
  $session_life = time() - $_SESSION['timeout'];
  if($session_life > $inactive)
        { 
         header("Location: logout.php"); 
          echo "logout";
     }
}
$_SESSION['timeout'] = time();

 /* error_reporting(E_ALL);
ini_set('display_errors', 1);
  $path = realpath("doh_sql.xml");
$xml_file = file_get_contents($path,FILE_TEXT);
$xml = new SimpleXMLElement($xml_file);

  foreach($xml->children() as $child)
  {
   define($child->getName(), $child);
  }*/

?>