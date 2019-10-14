<?php
class about extends rooms {
	function getContent() {
		$query ="SELECT ABOUT FROM tbl_about";
		if(!empty($query)){
			$about = $this->db->getInfo($query);	
		}
		require_once 'tpls/about.tpl';	
	}
}
?>