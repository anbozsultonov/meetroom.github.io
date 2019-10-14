<?php
class halls extends rooms {
	  
	function getContent() {
		 $query_free = "SELECT ID,IMAGE,TITLE FROM tbl_rooms AS r WHERE (NOT EXISTS(SELECT IDROOM FROM tbl_orders AS o WHERE o.IDROOM=r.ID))";
		 $free = $this->db->getRooms($query_free);
		
		
		 
		 $date = date('Y-m-d');
		 $time = date("G:i:s");
		 		 $query = "SELECT ID,IDROOM,NAME,SURNAME,FROMTIME,TOTIME,FROMDATE,TODATE,ABOUT,TITLEROOM FROM tbl_orders";
		 $wlbfree = $this->db->getAllRooms($query);  		
		 $regDate=array();
		 $regTime =array();
		 $massiv = array();
		
	  	 for($i = 0; $i < count($wlbfree); $i++){
		if($wlbfree[$i]['FROMDATE'] > $date || ($wlbfree[$i]['FROMDATE'] == $date && strtotime($wlbfree[$i]['FROMTIME']) > strtotime($time) + 3600)){
				$regDate[] = $wlbfree[$i]['FROMDATE'];
				$regTime[]= $wlbfree[$i]['FROMTIME'];
				$freeroom = "SELECT ID,TITLE,INFO,IMAGE FROM tbl_rooms WHERE ID='". $wlbfree[$i]['IDROOM'] ."'";
				$free_ = $this->db->getRooms($freeroom);
			 	$massiv[] = $free_[0] ;
			}
		}			
		 $query_dell = "DELETE FROM tbl_orders WHERE TODATE<='".$date."'AND TOTIME< '".$time."'";
			$room = $this->db->delRoom($query_dell);	
	require_once 'tpls/halls.tpl';
	}
}
?>