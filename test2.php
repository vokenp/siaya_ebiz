<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
$postRequest = array(
    'Method' => 'DoUserLogin',
    'UserName' => '123demo',
    'Pwsd' => '#IDdemo123',
    'LoginType' => 'PFNo'
);
  echo "<pre>";
$url = "https://apps.quarto.co.ke/assemblydocs/appsrepsondents.php";

$cURLConnection = curl_init($url);
curl_setopt($cURLConnection, CURLOPT_POSTFIELDS, $postRequest);
curl_setopt($cURLConnection, CURLOPT_RETURNTRANSFER, true);

$apiResponse = curl_exec($cURLConnection);
curl_close($cURLConnection);

//$apiResponse = "[$apiResponse]";
$jsonArrayResponse = json_decode($apiResponse,true);
 print_r($jsonArrayResponse );
?>
