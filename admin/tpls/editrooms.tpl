<div style="width: 97%;margin-top: 550px;">
<?
for($i = 0; $i < count($rooms); $i++) {
	?><p><?=$counter?>.  . <a href="?option=editroom&roomid=<?=$rooms[$i]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($rooms[$i]['IMAGE'])?>" width="80" height="60"/><?="   "?><?=$rooms[$i]['TITLE']?></a></p>
<?
$counter++; 
}
?>	
</div>