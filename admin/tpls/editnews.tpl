<div style="width: 97%;margin-top: 460px;">
	<form action="" method="post" name="addroom" enctype="multipart/form-data">
		<fieldset>
			<legend>Измениь</legend>
			<div style="float: right;"><label style="float: lef;">Новости</label> <br />
			<textarea name="news" rows="10" cols="50" ><?=$news[0]['NEWS']?></textarea> </div>
			<label style="margin-left: 20px;">Помешении</label> <br />
			<textarea name="about" rows="10" cols="50"><?=$news[0]['ABOUTROOMS']?></textarea><br /><br />
			<input type="submit" name="send" value="Сохранить" />
		</fieldset>
	</form>
</div>