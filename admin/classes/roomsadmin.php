<?php
require_once 'db.php';
abstract class roomsadmin {
	
	protected $db = null;
	
	function init() {
		$this->db = new DB();
	}
	
	function getHeader() {
		require 'blocks/header.html';
	}
	
	function getFooter() {
		require 'blocks/footer.html';
	}
	
	function getBody() {
		$this->init();
		if($_POST['send']) {
			$this->processing();
		}	
		$this->getHeader();
		$this->getContent();
		$this->getFooter();
	}
	
	abstract function getContent(); 
}
?>