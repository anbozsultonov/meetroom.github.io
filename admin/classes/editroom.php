<?php
class editroom extends roomsadmin {
	function getContent() {
		if(isset($_GET['roomid'])) {
			$id = $_GET['roomid'];
			$query = "SELECT ID,TITLE,INFO,IMAGE,PLASE FROM tbl_rooms WHERE ID='" . $id . "'";
			$room = $this->db->getRooms($query);
			require 'tpls/editroomsform.tpl';
		} else {
			$rooms = $this->db->getRooms();
			$counter = 1;
			require 'tpls/editrooms.tpl';
		}
	}
	
	function processing() {
		$id = isset($_POST['id']) && strlen($_POST['id']) > 0 ? $_POST['id'] : '';
		$title = isset($_POST['title']) && strlen($_POST['title']) > 0 ? $_POST['title'] : '';
		$info = isset($_POST['info']) && strlen($_POST['info']) > 0 ? $_POST['info'] : '';
		$plase = isset($_POST['plase']) && $_POST['plase'] > 0 ? $_POST['plase'] : ''; 
		if(!empty($_FILES['imupload']['tmp_name']))
		$image = addslashes(file_get_contents($_FILES['imupload']['tmp_name']));		
		if(!empty($id) && !empty($title) && !empty($info) && !empty($image) && !empty($plase)) {
			$query = "UPDATE tbl_rooms SET TITLE='" . $title . "',INFO='" . $info . "',IMAGE='" . $image . "',PLASE='".$plase."' WHERE ID='" . $id . "'";
			$this->db->updateRoom($query);
		}
		header("location:?option=editroom");
	}
}
?>