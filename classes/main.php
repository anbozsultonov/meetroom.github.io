<?php
class main extends rooms {
	
	function getContent() {
		date_default_timezone_set("Asia/Dushanbe");
			    $query_free = "SELECT ID,IMAGE,TITLE FROM tbl_rooms AS r WHERE NOT EXISTS(SELECT IDROOM FROM tbl_orders AS o WHERE o.IDROOM=r.ID)";
		$free = $this->db->getRooms($query_free);
		
		 $query = "SELECT ID,IDROOM,NAME,SURNAME,FROMTIME,TOTIME,FROMDATE,TODATE,ABOUT,TITLEROOM FROM tbl_orders";
		 $wlbfree = $this->db->getAllRooms($query);  
		 $date = date('Y-m-d');
		 $time = date("H:i:s");
		 
		// echo $time;
		 
		 
		 $regDate = array();
		 $regTime = array();
		 $wlbs = array();	
		//======================================
		for($i = 0; $i < count($wlbfree); $i++){
			if($wlbfree[$i]['FROMDATE'] > $date || ($wlbfree[$i]['FROMDATE'] == $date && strtotime($wlbfree[$i]['FROMTIME']) > strtotime($time) + 3600)){
				$freeroom = "SELECT ID,TITLE,INFO,IMAGE FROM tbl_rooms WHERE ID='". $wlbfree[$i]['IDROOM'] ."'";
				$free_ = $this->db->getRooms($freeroom);
			 	$free[] = $free_[0];
			}
		}
		
		//=================================================================================
		$totimewb = array();
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
	///print_r($wlbs);  
	//=====================================================================
		
		
	   		
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
		
		//======================================//
		//echo($time);
		 
		  $query_dell = "DELETE FROM tbl_orders WHERE (TODATE<='".$date."'AND TOTIME< '".$time."')";
			$room = $this->db->delRoom($query_dell);
		
		
		 $query_ = "SELECT ID,TITLE,IMAGE,INFO FROM tbl_rooms";
		 $rooms = $this->db->getAllRooms($query_); 
		
		$query_news = "SELECT NEWS,ABOUTROOMS FROM tbl_news";
               $news = $this->db->getText($query_news);
               $searchArray = array();
	
	if($_GET['search_button']&& !empty($_GET['words'])){
		$words = trim($_GET['words']);
		$array = explode(" ",$words);
		$query_search = "SELECT ID,TITLE,INFO FROM tbl_rooms WHERE (TITLE LIKE'".$words."' OR ID LIKE '".$words."' OR PLASE LIKE'".$words."'OR INFO LIKE'".$words."')";
		if(!empty($query_search)){
			$arraySearch = $this->db->getAllRooms($query_search);
		$searchArray[] = $arraySearch[0];	 	
			}
		
	 for($i = 0; $i < count($array); $i++){
	 	$search_query = "SELECT ID,TITLE,INFO FROM tbl_rooms WHERE (TITLE LIKE'".$array[$i]."' OR ID LIKE '".$array[$i]."' OR PLASE LIKE'".$array[$i]."'OR '".$array[$i]."'LIKE INFO)";	 
	 	if(!empty($search_query)){
	 	$arr = $this->db->getAllRooms($search_query);
	 	      if(count($arr) > 0)
	 	      for($j = 0; $j < count($arr); $j++)
			  	$searchArray[] = $arr[$j];		  
	    	}		
    	 } 

	 	 					      
	     }
	    
	//     print_r($searchArray);
		require_once 'tpls/main.tpl';
	}

}
?>