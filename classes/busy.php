<?php
class busy extends rooms {
	function getContent() {	 
		//$query_free = "SELECT TITLEROOM FROM tbl_orders AS r WHERE r.TITLEROOM IN (SELECT TITLEROOM,FROMDATE,FROMTIME,TODATE,TOTIME FROM tbl_orders AS o WHERE o.IDROOM=r.ID AND DATE BETWEEN o.FROMDATE AND o.TODATE)";		
		/*$query_free = "SELECT ID,IMAGE,TITLE FROM tbl_rooms AS r WHERE r.ID IN (SELECT IDROOM FROM tbl_orders AS o WHERE o.IDROOM=r.ID AND TIME BETWEEN o.FROMTIME AND o.TOTIME)";
		 $free = $this->db->getRooms($query_free);*/
		
		 $date = date('Y-m-d');
		 $time = date("H:i:s");
			
		 $regDateBusy = array();
		 $regTimeBusy = array();
		 $totime = array();
		 $massivBusy = array();
		 $query_busy = "SELECT ID,IDROOM,NAME,SURNAME,FROMTIME,TOTIME,FROMDATE,TODATE,ABOUT,TITLEROOM FROM tbl_orders WHERE FROMDATE <='".$date."' AND TODATE>='".$date."'";
		 $busy = $this->db->getAllRooms($query_busy);  
		
	  	 for($i = 0; $i < count($busy); $i++){ 	  	 
	  	  
			if((strtotime($busy[$i]['FROMTIME'])<= strtotime($time) && $busy[$i]['TODATE'] > $busy[$i]['FROMDATE']) ||(strtotime($busy[$i]['FROMTIME'])<= strtotime($time) && $busy[$i]['TODATE']==$date && strtotime($time)<= $busy[$i]['TOTIME']) )             {
			//echo (strtotime($busy[$i]['TOTIME'] )- strtotime($time)).	"time minus <br />";
				$regDateBusy[] = $busy[$i]['FROMDATE'];
				$regTimeBusy[]= $busy[$i]['FROMTIME'];
				$totime[] = $busy[$i]['TOTIME'];
				$busyroom = "SELECT ID,TITLE,INFO,IMAGE FROM tbl_rooms WHERE ID='". $busy[$i]['IDROOM'] ."'";
				$bs = $this->db->getRooms($busyroom);
			 	$massivBusy[] = $bs[0];
			}
			
		}	
		
		 $query_dell = "DELETE FROM tbl_orders WHERE TODATE<='".$date."'AND TOTIME< '".$time."'";
			$room = $this->db->delRoom($query_dell);
	// 	print_r($totime);
	require_once 'tpls/busy.tpl';
	}
}
?>