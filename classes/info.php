<?php
class info extends rooms {
	
	function getContent() {
		if(isset($_GET['roomid'])) {
			$query = "SELECT ID,TITLE,IMAGE,INFO FROM tbl_rooms WHERE ID='" . $_GET['roomid'] . "'";
		 $room = $this->db->getRooms($query);
		 	  $query_dell = "DELETE FROM tbl_orders WHERE TODATE<='".$date."'AND TOTIME< '".$time."'";
			$rooms = $this->db->delRoom($query_dell);
			require_once 'tpls/info.tpl';
		}
		
		
	}
}
?>