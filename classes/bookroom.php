<?php

class bookroom extends rooms {

	function getContent() {
		date_default_timezone_set("Asia/Dushanbe");
		
		if(isset($_GET['roomid'])) {
			$query = "SELECT ID,TITLE,IMAGE,INFO FROM tbl_rooms WHERE ID='" . $_GET['roomid'] . "'";
		 $room = $this->db->getRooms($query);
		
		$query_free = "SELECT ID,IMAGE,TITLE FROM tbl_rooms AS r WHERE NOT EXISTS(SELECT IDROOM FROM tbl_orders AS o WHERE o.IDROOM=r.ID)";
		$free = $this->db->getRooms($query_free);
		
		 $query = "SELECT ID,IDROOM,NAME,SURNAME,FROMTIME,TOTIME,FROMDATE,TODATE,ABOUT,TITLEROOM FROM tbl_orders";
		 $wlbfree = $this->db->getAllRooms($query);  
		 $date = date('Y-m-d');
		 $time = date("H:i:s");
		//================================================== echo $time;	
		 $regDate = array();
		 $regTime = array();
		 $wlbs = array();	
		 
		 
		for($i = 0; $i < count($wlbfree); $i++){
			if($wlbfree[$i]['FROMDATE'] > $date || ($wlbfree[$i]['FROMDATE'] == $date && strtotime($wlbfree[$i]['FROMTIME']) > strtotime($time) + 3600)){
				$freeroom = "SELECT ID,TITLE,INFO,IMAGE FROM tbl_rooms WHERE TITLE='". $wlbfree[$i]['TITLEROOM'] ."'";
				$free_ = $this->db->getRooms($freeroom);
			 	$free[] = $free_[0];
			 
			}
		}
		$fr = false;
	if(!empty($free))
	 {
		for($i = 0; $i < count($free); $i++)
		{
			if($_GET['roomid'] == $free[$i]['ID'])			 
				$fr = TRUE;			
		}	
	}
	if($fr)
	require_once 'tpls/bookroom.tpl';
	else
			require_once 'tpls/info.tpl';
		}
	}
	
	function processing() {
		
		date_default_timezone_set("Asia/Dushanbe");
		$name = isset($_POST['name']) && strlen($_POST['name']) > 0 ? $_POST['name'] : '';	
		$surname = isset($_POST['surname']) && strlen($_POST['surname']) > 0 ? $_POST['surname'] : '';	
		$fromdate = isset($_POST['fromdate']) && $_POST['fromdate'] > 0 ? $_POST['fromdate'] : '';		
		$todate = isset($_POST['todate']) && $_POST['todate'] > 0 ? $_POST['todate'] : '';	 	
	 	$fromtime = $_POST['fromtime']; 	 	
	 	$totime = $_POST['totime']; 	 	
	 	$about = isset($_POST['about']) && strlen($_POST['about']) > 0 ? $_POST['about'] : ''; 	 		 	 	 	
	 	$idroom = isset($_POST['idroom']) && $_POST['idroom'] > 0 ? $_POST['idroom'] : ''; 
	    $titleroom = isset($_POST['titleroom']) && strlen($_POST['titleroom']) > 0 ? $_POST['titleroom'] : ''; 	 		 	 	 	
		$check = true;
		$date = date('Y-m-d');
		 $time = date("H:i:s");
           // ==============
	if(!empty($name) && !empty($surname)&& !empty($fromdate)&& !empty($todate) && !empty($fromtime) && !empty($totime) && !empty($about)&& !empty($idroom)&& !empty($titleroom)){
		
		if($fromdate > $todate)$check = FALSE;
		if($fromdate < $date)$check = FALSE;
		if($fromdate == $date && $todate == $date && ((strtotime($fromtime) >= strtotime($totime))||strtotime($fromtime) <strtotime($time)))$check = FALSE;
	
	if($check)
	{	
		$isfree = "SELECT TITLEROOM,FROMDATE,FROMTIME,TODATE,TOTIME FROM tbl_orders WHERE IDROOM='".$idroom."' AND FROMDATE='".$fromdate."'";
		if(!empty($isfree))
		{
			$free = $this->db->getAllRooms($isfree);
		//	print_r($free);
			 if(count($free) > 0)
			 {
				for($i = 0; $i < count($free); $i++)
				{
				   if(strtotime($totime) >= strtotime($free[$i]['FROMTIME']))$check = FALSE;	
				   if(strtotime($free[$i]['FROMTIME']) <= strtotime($fromtime))
			           	$check = FALSE;
			           	break;
				}
				
			}		 
		
		}
	}		
		if($check)
		{		
			$query = "INSERT INTO tbl_orders (idroom,name,surname,fromdate, todate, fromtime, totime, about,titleroom)VALUES('" . $idroom . "','" . $name . "','" . $surname . "','" . $fromdate . "','" . $todate . "','" . $fromtime . "','" . $totime . "','" . $about . "','" . $titleroom . "')";
			$this->db->bookRoom($query); 
				
			header("location:?option=booked");
		}
			  if(!$check)
			header("location:?option=error");
			
			}
	}
}
?>