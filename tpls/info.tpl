<div style="height: 1100px; width:962; background-color: #fffbfb">
<div class="text" style="width: 100%;">
	<div style="float:left; margin: 10px; border: #6a6560; border-style: ridge; border-width: 4; border-color: #494847; width: auto; height: auto; ">
	<center>	<img src="data:image/jpeg;base64,<?=base64_encode($room[0]['IMAGE'])?>" width="350" height="200"  style="border-radius: 25px; margin: 10px"/></center>
	</div>
	<div style="float:left; width: 50%; margin: 10px; margin-left: 160px; position: absolute; top: 190px; left: 300px; ">
	  	<div style="font-size: 25px;padding-left: 7px;">
	  	    <?=($room[0]['TITLE'])?>
	  	</div>
		<p><?=($room[0]['INFO'])?> </p>
	</div>
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