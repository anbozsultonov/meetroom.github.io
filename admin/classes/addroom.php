<?php
class addroom extends roomsadmin {
	function getContent() {
		require_once 'blocks/addroom.html';
	}
	function processing() {
		$title = isset($_POST['title']) && strlen($_POST['title']) > 0 ? $_POST['title'] : '';
		$info = isset($_POST['info']) && strlen($_POST['info']) > 0 ? $_POST['info'] : '';
		$plase = isset($_POST['plase']) && $_POST['plase'] > 0 ? $_POST['plase'] : '';
	 
		if(!empty($_FILES['imupload']['tmp_name']))
		$image = addslashes(file_get_contents($_FILES['imupload']['tmp_name']));
		if(!empty($title) && !empty($info) && !empty($image) && !empty($plase)&& !empty($image)) {
			$query = "INSERT INTO tbl_rooms (TITLE,INFO,IMAGE,PLASE)VALUES('" . $title . "','" . $info . "','" . $image . "','" . $plase . "')";
			$this->db->addRoom($query);
		}
	}
}
?>