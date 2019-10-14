<?php
class galerey extends rooms {
	
	
	function getContent() {
			$query = "SELECT ID,TITLE,IMAGE,PLASE FROM tbl_rooms";
			$rooms =$this->db->getRooms($query);
			 $query_dell = "DELETE FROM tbl_orders WHERE TODATE<='".$date."'AND TOTIME< '".$time."'";
			$room = $this->db->delRoom($query_dell);
			require_once 'tpls/galerey.tpl';			
	}
	
}
?>