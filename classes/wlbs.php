<?php
class wlbs extends rooms {
	function getContent() {
		
	//	$query_room = "SELECT ID,IMAGE,TITLE FROM tbl_rooms AS r WHERE r.ID IN (SELECT IDROOM FROM tbl_orders AS o WHERE o.IDROOM=r.ID AND DATE = o.FROMDATE AND TIME < FROMTIME)";
	//	$room = $this->db->getRooms($query_room);
	 	 date_default_timezone_set("Asia/Dushanbe");
		  
		
		 $date = date('Y-m-d');
		 $time = date("H:i:s");
		
		
	     $query = "SELECT ID,IDROOM,FROMTIME,TOTIME,FROMDATE,TODATE,ABOUT,TITLEROOM FROM tbl_orders WHERE (FROMDATE='".$date."')";
		 $wlbfree = $this->db->getAllRooms($query);  
//echo (count($wlbfree));
		 $regDate=array();
		 $regTime =array();	
		 $wlbs = array();
	  	 $totimewb = array();
	  	 $minut = array();
	  	 
	  	 $minut = array();
	  	for($i = 0; $i < count($wlbfree); $i++){
	  		
			if(($wlbfree[$i]['FROMDATE'] == $date && strtotime($wlbfree[$i]['FROMTIME']) > strtotime($time) && strtotime($wlbfree[$i]['FROMTIME']) < strtotime($time)+ 3600)){
				$regDate[] = $wlbfree[$i]['FROMDATE'];
				$regTime[]= $wlbfree[$i]['FROMTIME'];
				$totimewb[] = $wlbfree[$i]['TOTIME'];
				
				$t = (strtotime($wlbfree[$i]['FROMTIME']) - strtotime($time)) / 60;
				$wblroom = "SELECT ID,TITLE,INFO,IMAGE FROM tbl_rooms WHERE ID='". $wlbfree[$i]['IDROOM'] ."'";
				$wlb = $this->db->getRooms($wblroom);
			 	$wlbs[] = $wlb[0] ;
			 	$minut[] = (int)($t);			 
			}
		}
		
		//echo strtotime($regTime[0])."<br />";
	//	echo strtotime($time)."<br />";
		 $query_dell = "DELETE FROM tbl_orders WHERE TODATE<='".$date."'AND TOTIME< '".$time."'";
			$room = $this->db->delRoom($query_dell);
	require_once 'tpls/wlbs.tpl';
	}
}
?>