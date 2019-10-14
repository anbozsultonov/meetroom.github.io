<?php
class about extends roomsadmin {
	function getContent() {
		$query ="SELECT ABOUT FROM tbl_about";
		if(!empty($query)){
			$about = $this->db->getInfo($query);
			
		}
		require_once 'tpls/about.tpl';
	}
	function processing() {
		
		$about = $_POST['about'];
		
		//if(!empty($about)) {
			
			 $query = "UPDATE tbl_about SET NEWS='" . $about . "'";
			$this->db->addInfo($query);
		}
	}

?>