<?php
class DB {
	private $connection = null;
	public function __construct() {
		$this->connection = mysql_connect("localhost","root","");
		mysql_select_db("roomer", $this->connection);
	}
	
	public function createObject($query) {
		mysql_query($query, $this->connection);
	}
	
	public function addRoom($query) {
		mysql_query($query, $this->connection);
	}
	public function addInfo($query) {
		mysql_query($query, $this->connection);
	}
	public function updateRoom($query) {
		mysql_query($query, $this->connection);
	}
	
	public function delRoom($query) {
		mysql_query($query, $this->connection);
	}
	public function GetNews($query) {
		mysql_query($query, $this->connection);
	}
	
	public function getInfo($query = null) {
		$query = $query != null ? $query : "SELECT ABOUT FROM tbl_about";
		$assoc = mysql_query($query, $this->connection);
		$result = $this->ASSOC_RESULT($assoc);
		return $result;
	}
	public function getRooms($query = null) {
		$query = $query != null ? $query : "SELECT ID,TITLE,IMAGE,PLASE FROM tbl_rooms";
		$assoc = mysql_query($query, $this->connection);
		$result = $this->ASSOC_RESULT($assoc);
		return $result;
	}
 	public function getText($query = null) {
		$query = $query != null ? $query : "SELECT NEWS,ABOUTROOMS FROM tbl_news";
		$assoc = mysql_query($query, $this->connection);
		$result = $this->ASSOC_RESULT($assoc);
		return $result;
	}
	 
	
	private function ASSOC_RESULT($array) {
		$r = array();
		while($result = mysql_fetch_array($array, MYSQL_ASSOC)) {
			$r[] = $result;
		}
		 return $r;
	}
	
	public function __destructor() {
		$this->connection->close();
	}
}
?>