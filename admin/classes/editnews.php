<?php
class editnews extends roomsadmin {
	function getContent() {
               
               $query = "SELECT NEWS,ABOUTROOMS FROM tbl_news";
               $news = $this->db->getText($query);               
			require 'tpls/editnews.tpl';
		}
	
	
	function processing() {
			 $news = $_POST['news']; 
			 	$about = $_POST['about'];
			 	// $query_ = "SELECT NEWS,ABOUTROOMS FROM tbl_news";
			 	    
		//$query = "INSERT INTO tbl_news (NEWS,ABOUTROOMS)VALUES('" . $news . "','" . $about . "')";
			 $query = "UPDATE tbl_news SET NEWS='" . $news . "',ABOUTROOMS='" . $about . "'";
			$this->db->GetNews($query);
		
		header("location:?option=editnews");
	} 
}
?>