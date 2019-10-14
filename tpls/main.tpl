<div id="wrapper">
<div id="left">
			
			<div id="columns">
				<? if(count($free) >= 4) { ?>
				
				<div class="column c1" style="position: absolute; top:270px; left: 50px; border-radius: 7px;">
					<div>
						<h4 class="title1">Свободно</h4>
						<? for($i = 0; $i < 4; $i++) { ?>
						<div class="pic">
						<a href="?option=bookroom&roomid=<?=$free[$i]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($free[$i]['IMAGE'])?>" alt="" width="108" height="53" /></a><br />
							<span><a href="?option=bookroom&roomid=<?=$free[$i]['ID']?>"><font color="#16d706"><?=$free[$i]['TITLE']?></font></a></span>
						</div>
						<? } ?>
						<a href="?option=halls" class="more" name="free">еще...</a>
					</div>
				</div>
				
				<? } ?>
				<? if(count($massivBusy) >= 3){ ?>
		
				<div class="column c2" style="position: absolute; top:353px; left: 200px; border-radius: 7px;">
					<div>
						<h4 class="title2">Занято</h4>
						<? for($i = 0; $i < 2; $i++){ ?>
					
						<div class="pic">
							<a href="?option=info&roomid=<?=$massivBusy[$i]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($massivBusy[$i]['IMAGE'])?>" alt="" width="108" height="53" /></a><br />
							<span><a href="?option=info&roomid=<?=$massivBusy[$i]['ID']?>"><font color="#ff0000"><?=$massivBusy[$i]['TITLE']?></font></a></span>
						</div> <? } ?>
				
						<a href="?option=busy" class="more" name="busy">еще...</a>
					</div>
				</div>
				
				<? } ?>
				<? if(isset($wlbs[0]['TITLE'])){ ?>
				
				<div class="column c3" style="position: absolute; top:353px; left:350px; border-radius: 7px;">
					<div>
						<h4 class="title3">Будет занято</h4>
						<? if(!empty($wlbs)){ ?>
						<div class="pic">
							<a href="?option=info&roomid=<?=$wbls[0]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($wlbs[0]['IMAGE'])?>" alt="" width="108" height="53" /></a><br />
							<span><a href="?option=info&roomid=<?=$wbls[0]['ID']?>"><font color="orange"><?=$wlbs[0]['TITLE']?> </a></font></span>
						</div>
						<? } ?>
						<a href="?option=wlbs" class="more" name="wlbs">еще...</a>
					</div>
				</div>
				
				<? } ?>
			</div>
			
			
			<div class="text">
			
		<div style="margin-top: 500px; width:910px;  ">
		<br />	<div>
		     <center> 
				<table style="margin: 10px;" >
					<tr>
				
						<? for($i = 0; $i < 3; $i++) { ?>
						
						<td width="230" height="190" style="border-width: 3px; border-color: #67766f; border-radius: 3px; border-style: double;  background-color:#d8fdce; "><? if(isset($free[$i]['TITLE'])){ ?><center><font size="3" color="#1de222"><p>Свободно</p><a href="?option=bookroom&roomid=<?=$free[$i]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($free[$i]['IMAGE'])?>" alt="" width="134" height="100" style=" border-width: 3px; border-color: #260000; border-radius: 7px; border-style:double; " /><? if(!empty($free[$i]['TITLE'])) ?><p><?=$free[$i]['TITLE']?></p> </a></font></center> <? } ?>  </td>
						
						<? } ?>
				 	
					</tr>
					
				</table>
				 <a href="?option=halls"><img src="images/down.png" style="border-width: 1px; border-color:#aeaba8; border-style: solid; width: 30px;height: 30px; border-radius: 90px"/></a>
				 
				<hr/> 
				
			</center>
				  
			</div>
			 
		<div>
			<center>
			
				<table style="margin: 10px;" >
					<tr>
					
						<td width="230" height="190" style="border-width: 2px; border-color: #67766f; border-radius: 3px; border-style: double; background-color:#fad98d; "><? if(isset($wlbs[0]['TITLE'])){ ?><center><font size="3" color="orange"><p>Будет занято через <?=$minut[0]?> минут до <?=$totimewb[0]?> </p><a href="?option=info&roomid=<?=$wlbs[0]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($wlbs[0]['IMAGE'])?>" alt="" width="134" height="100" style=" border-width: 3px; border-color: #260000; border-radius: 7px; border-style:double; " /><p><?=$wlbs[0]['TITLE']?></p> </a></font></center>  <? } ?>  </td>
						
					</tr>
					
				</table>
				<font size="4"><a href="?option=wlbs"><img src="images/down.png" style="border-width: 1px; border-color:#aeaba8; border-style: solid; width: 30px;height: 30px; border-radius: 90px"/> </a></font>
				<hr />
			</center>
			</div>
			 
		
			 <div>
		
			<center>
				<table style="margin: 10px;" >
					<tr>
						<? for($i = 0; $i < 2; $i++) { ?>
						<td width="230" height="190" style="border-width: 2px; border-color: #67766f; border-radius: 3px; border-style: double; background-color:#ff9191; "><? if(isset($massivBusy[$i]['TITLE'])){ ?><center><font size="3" color="#d20000"><p>Занято до <?=$totime[$i]?> </p><a href="?option=info&roomid=<?=$massivBusy[$i]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($massivBusy[$i]['IMAGE'])?>" alt="" width="134" height="100" style=" border-width: 3px; border-color: #260000; border-radius: 7px; border-style:double; " /><p><?=$massivBusy[$i]['TITLE']?></p> </a></font></center>  <? } ?> </td>
						
						<? } ?>
					</tr>
					
				</table>
				<font size="4"><a href="?option=busy"><img src="images/down.png" style="border-width: 1px; border-color:#aeaba8; border-style: solid; width: 30px;height: 30px; border-radius: 90px"/></a></font>
				<hr />
			</center>
			
			</div>
			
			<br />
			</div>
			
			<br />
			<div style="background-color: #d5d5d7; border-color: #74746b; border-width: 1; border-style: double; margin-top: 30px" >
			<br />
				<form action="" method="get">
					<input type="text" name="words" style="width: 260px; height: 30px; margin-left: 10px; border-width:2; border-style:double; border-color:#18187e; border-radius:10px;" placeholder="Поиск..."/>
					<input type="submit" name="search_button" value="Найти" style="width: 100px; height: 30px;  border-width:2; border-style:double; border-color:#18187e; border-radius:10px; " />
					<br />
				</form>
				<br /><br />
				
			</div>
			
			<? if(!empty($searchArray)){ ?>
			<div>
		<font size="3" color="#25785b">		
		  <h1>Результаты поиска:</h1>
				<? for($i = 0; $i < count($searchArray); $i++){ ?>
				
			            <?=($i + 1) ?>. <a href="?option=bookroom&roomid=<?=$searchArray[$i]['ID']?>"> <?=$searchArray[$i]['TITLE']?> </a><br />
			       
			  <? } ?>
		</font>
			</div>
			<? } ?>
			<div style="">
			  	<div style="width: 20;font-size: 25px;background-color: #c8cccb;padding-left: 7px;margin-top:65px; ">
			  		Новости
			  	</div>
				<p><?=$news[0]['NEWS']?> </p>
				
				</div>
			</div>
		</div>
		<div id="right" style="margin-top:1280px; ">
			<div style="position: absolute; top:1545px;">
				<div style="width: 100%;font-size: 25px;background-color: #c8cccb;padding-left: 7px; margin-top: 0px">
			  		Помещении
			  	</div>
				<p><?=$news[0]['ABOUTROOMS']?> </p>
			</div>
			<div>
				<div style="width: 100%;font-size: 25px;background-color: #c8cccb;padding-left: 7px;">
			  		Галерея
			  	</div>
			  
				   
			       <? for($i = 0; $i < 4; $i++) {  ?>
				<? if(isset($rooms[$i]['ID'])){ ?>
				<div class="photo" style="margin-top: 50px;">
					<a href="?option=info&roomid=<?=$rooms[$i]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($rooms[$i]['IMAGE'])?>" alt="" width="194" height="111" style=" border-width: 2px; border-color:#110000; border-radius: 2px; border-style: double;" /><br /></a>
					<span><a href="?option=info&roomid=<?=$rooms[$i]['ID']?>"><?=$rooms[$i]['TITLE']?></a></span>			  
				</div>
				
				<? } } ?>
				
				</div>
			<div>
				<a href="?option=galerey" id="more">Смотреть еще...</a>
			</div>
		</div>
		</div>