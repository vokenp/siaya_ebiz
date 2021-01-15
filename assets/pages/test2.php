<?php
include("../assets/bin/con_db.php");
global $db;
   $db->debug=1;
   error_reporting(E_ALL);
ini_set('display_errors', 1);
   
     echo "<pre>";

  
   $week = date("W") - 1;
   $year = date("Y");

  $DaysName = array("Monday","Tuesday","Wednesday","Thurday","Friday","Saturday","Sunday");
   $timestamp = mktime( 0, 0, 0, 1, 1,  $year ) + ( $week * 7 * 24 * 60 * 60 );
        $timestamp_for_start = $timestamp - 86400 * ( date( 'N', $timestamp ) - 1 );
        $timestamp_for_end = $timestamp - 86400 * ( date( 'N', $timestamp ) - 5 );
        $date_for_start = date( 'Y-m-d', $timestamp_for_start );
        $date_for_end = date( 'Y-m-d', $timestamp_for_end );
    

        $rangeDate = getDatesFromRange($date_for_start,$date_for_end);
           $weekList = array();
         foreach ($rangeDate as $key => $value) {
         	$weekList[$DaysName[$key]] = $value;
         }
        
        foreach ($weekList as $wDay => $MeetingDay) {
        	$getMeetingSch = $db->Execute("select *from scheduleofmeetings where MeetingDay='$wDay'");
        	while (!$getMeetingSch->EOF) {
        		$rst = array();
        		$rst = $getMeetingSch->fields;

        		 $record["CommitteeID"] = $rst['CommitteeID'];
        		 $record["FromTime"]  = date('H:i:s',strtotime($rst['FromTime']));
        		 $record["ToTime"]    = date('H:i:s',strtotime($rst['ToTime']));
        		 $record["Venue"]     = $rst['Venue'];
        		 $record["ClerkResponsible"]     = $rst['ClerkResponsible'];
        		 $record["MeetingDate"] = date('Y-m-d',strtotime($MeetingDay));
        		 $record["CreatedBy"] = "SysAdmin";
        		 $record["DateCreated"] = $db->GetOne("select current_timestamp");

        		  $table  = "committeemeetings";
                  $action    = "INSERT";
                 $db->AutoExecute($table,$record,$action);

        		$getMeetingSch->MoveNext();
        	}
        }
         
    
?>