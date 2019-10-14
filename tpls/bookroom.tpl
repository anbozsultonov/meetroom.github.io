<div style="height: 1100px; width:962; background-color: #fffbfb">
<div class="text" style="width: 100%;">
	<div style="float:left; margin: 10px; border: #6a6560; border-style: ridge; border-width: 4; border-color: #494847; width: auto; height: auto; ">
	<center>	<img src="data:image/jpeg;base64,<?=base64_encode($room[0]['IMAGE'])?>" width="400" height="200"  style="border-radius: 5px; margin: 10px"/></center>
	</div>
	<div style="float:left; width: 50%; margin: 10px; margin-left: 160px; position: absolute; top: 190px; left: 320px; ">
	  	<div style="font-size: 25px;padding-left: 7px;">
	  	    <?=($room[0]['TITLE'])?>
	  	</div>
		<p><?=($room[0]['INFO'])?> </p>
	</div>
</div>
<div id="search" style="width: 390px; height: auto; position: absolute;top:440px; margin-left: 25px; background-color:#bffdee; ">
	<br />  
	
	<form action="" method="post"  enctype="multipart/form-data">
	<input type="text" placeholder="Имя" name="name" />  <input type="text" placeholder="Фомиля" name="surname" style="margin-left: 29px" /> <br />
		<p class="style1">От <input type="date" name="fromdate"/> До <input type="date" name="todate" /></p>
		<p class="stile1"><input type="time" name="fromtime" style="margin-left: 28px" value="00:30" /><input type="time" name="totime" style="margin-left: 112px" value="01:30" /></p><br />
		<input type="hidden" name="idroom" value="<?=$room[0]['ID']?>" />
		<input type="hidden" name="titleroom" value="<?=$room[0]['TITLE']?>" />
		<br />  <label> Oписания </label><br /><br /><textarea rows="15" cols="41" name="about"></textarea>
	 <br /><br />
			<input type="submit" name="send" value="Бронировать"   class="imupload" style=" width: 120px; height: 30px; background-color: #4ed22d; border-style: solid; border-width: 2; border-radius: 6px;"/>  
			
		 
		
	</form>
	<br />
</div>
</div>


	
	<div id="footer" style=" margin-top:3000px ">
		<ul>
			<li><a href="?option=main">Главная</a> |</li>
			<li><a href="?option=halls">Помещении</a> |</li>
			<li><a href="?option=galerey">Галерея</a> |</li>
			<li><a href="?option=about">О Нас</a></li>
		</ul>
		<p>Copyright &copy; 2019 MeetRooms</p>
	</div>

</body>
</html>