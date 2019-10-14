<div style="width: 97%;margin-top: 460px;">
	<form action="" method="post" name="addroom" enctype="multipart/form-data">
		<fieldset>
			<legend>Измениь помещения</legend>
			<input type="text" name="title" placeholder="Название" value="<?=$room[0]['TITLE']?>" /><br />
			<textarea name="info" rows="10" cols="50" placeholder="Подробная информация"></textarea><br />
			<input type="hidden" name="id" value="<?=$room[0]['ID']?>" />
			<img src="data:image/jpeg;base64,<?=base64_encode($room[0]['IMAGE'])?>" width="70" height="60" style="margin-left: 10px"/><br />		
			<input type="file" name="imupload" class="inputfile" /><br />
			<input type="text" name="plase" value="<?=$room[0]['PLASE']?>"/>
			<input type="submit" name="send" value="Сохранить" />
		</fieldset>
	</form>
</div>