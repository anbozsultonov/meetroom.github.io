<div style="width: 97%;margin-top: 250px;">
<?
for($i = 0; $i < count($rooms); $i++) {
?><p><?=$counter?>. <img src="data:image/jpeg;base64,<?=base64_encode($rooms[$i][IMAGE])?>" width="70" height="60"/> . <a href="?option=delroom&roomid=<?=$rooms[$i]['ID']?>"><?=$rooms[$i]['TITLE']?></a> </p>
<?
$counter++;
}
?>	
</div>
