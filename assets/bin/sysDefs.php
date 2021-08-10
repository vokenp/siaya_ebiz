<?php
//Dir
PHP_OS == "Windows" || PHP_OS == "WINNT" ? define("SEPARATOR", "\\") : define("SEPARATOR", "/");
$dirname = str_replace(SEPARATOR, '/', dirname(__FILE__));
  $dirFile = str_replace($_SERVER['DOCUMENT_ROOT']."/",'', $dirname);
  $dlist = explode("/",$dirFile);

//Dir
   $list = explode('/', dirname(dirname(__DIR__)));
  $dlist[0] = end($list);
define('DIR_ROOT', $_SERVER['DOCUMENT_ROOT']."/".$dlist[0]."/");
define('DB_LOGS', DIR_ROOT.'logs/');

//define('DB_DRIVER', 'SQL Server');

define('DB_DRIVER', 'mysqli');

if (DB_DRIVER == "mysqli") {

define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'P@$$w0rd');
define('DB_DATABASE', 'siaya_ebiz');
/*define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'a6m3otmyoptr_cakadmndocs');
define('DB_PASSWORD', '!^KSue19pxC6');
define('DB_DATABASE', 'a6m3otmyoptr_cakdocs');*/
define('DB_PREFIX', 'dh_');
if (!defined('DB_PORT')) define('DB_PORT', '3306');

    $db = ADONewConnection(DB_DRIVER);
    $db->Connect(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
    ADOdb_Active_Record::SetDatabaseAdapter($db);

    class ORM extends ADODB_Active_Record {}
}
else
{

define('DB_HOSTNAME', 'QUARTO-PC');
define('DB_USERNAME', 'sa');
define('DB_PASSWORD', 'casemanager@123');
define('DB_DATABASE', 'triabiosms');
define('DB_PREFIX', 'DH_');

    $db = ADONewConnection('odbc_mssql');

     $dsn = "Driver={".DB_DRIVER."};Server=".DB_HOSTNAME.";Database=".DB_DATABASE.";";

       $db->Connect($dsn,DB_USERNAME,DB_PASSWORD);



       ADOdb_Active_Record::SetDatabaseAdapter($db);


    class ORM extends ADODB_Active_Record {}
}




?>
