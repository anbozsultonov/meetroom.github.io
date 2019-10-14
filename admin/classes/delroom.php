<?php
class delroom extends roomsadmin {
	function getContent() {
		if(isset($_GET['roomid'])) {
			$id = $_GET['roomid'];
			$query = "DELETE FROM tbl_rooms WHERE ID='" . $id . "'";
			$room = $this->db->delRoom($query);
			die('<script type="text/javascript">window.location="?option=delroom";</script>');
		} else {
			$rooms = $this->db->getRooms();
			$counter = 1;
			require 'tpls/delrooms.tpl';
		}
	}
}
?>