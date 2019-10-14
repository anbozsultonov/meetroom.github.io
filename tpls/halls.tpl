<div id="wrapper">
			<div style="margin-top: 500px;border:#82738c; border-width: 1; border-color:#858e79; border-style: solid; margin-right: 20px;">
			 
			   <table>
			        <? if(count($free) > 0){ $counter = 0;  ?>
			    <? for($i = 0; $i < count($free) / 4; $i++) {  ?>
			      
			       <tr>
			       
		 <?for($j = 0; $j < 4; $j++){ ?>
			    <? if(!empty($free[$counter]['TITLE'])) { ?>    <td width="230" style="border-width: 2px; border-color: #67766f; border-radius: 5px; border-style: double;">
			       <br />
				<center><div class="photo">
			 <font color="green"> <p> Свободно </p>	<a href="?option=bookroom&roomid=<?=$free[$counter]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($free[$counter]['IMAGE'])?>" alt="" width="134" height="100" style=" border-width: 3px; border-color: #260000; border-radius: 7px;" /><br /></a></font>
					<span><a href="?option=bookroom&roomid=<?=$free[$counter]['ID']?>"><font color="#38de21"><?=$free[$counter]['TITLE']?></font></a></span>
				</div></center>
				</td> <? } ?>
				
				<? $counter++;  } ?>
					</tr>			
				<? } ?>
				<? }  ?>
				
				
				<tr>
				<? if(count($free) > 4) { ?>
			       <?for($j = 0; $j < count($free) % 4; $j++){ ?>
		<? if(!empty($free[$counter]['TITLE'])) { ?>	       <td width="230" style="border-width: 2px; border-color: #67766f; border-radius: 5px; border-style: double;">
					<center><div class="photo">
		 <font color="green"> <p> Свободно </p>		<a href="?option=bookroom&roomid=<?=$free[$counter]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($free[$counter]['IMAGE'])?>" alt="" width="134" height="100" style=" border-width: 3px; border-color: #260000; border-radius: 7px;" /><br /></a></font>
				<span><a href="?option=bookroom&roomid=<?=$free[$counter]['ID']?>"><font color="#38de21"><?=$free[$counter]['TITLE']?></font></a></span>
				</div></center>
				</td><? } ?>	
				<? $counter++;  }  } ?>
					</tr>			
					</table>
					
					<hr /><br />
					<hr />
					<table>
			        <? if(count($massiv) > 0){ $counter = 0;  ?>
			    <? for($i = 0; $i < count($massiv) / 4; $i++) {  ?>
			      
			       <tr>
			       
			       <?for($j = 0; $j < 4; $j++){ ?>
<? if(!empty($massiv[$counter]['TITLE'])) { ?> <td width="230" style="border-width: 2px; border-color: #67766f; border-radius: 5px; border-style: double;">
			       <br />
				<center><div class="photo">
			 <font color="green"> <p> Свободно до <?=$regDate[$counter] ?> </p> <?=$regTime[$counter] ?>	<a href="?option=bookroom&roomid=<?=$massiv[$counter]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($massiv[$counter]['IMAGE'])?>" alt="" width="134" height="100" style=" border-width: 3px; border-color: #260000; border-radius: 7px;" /><br /></a></font>
					<span><a href="?option=bookroom&roomid=<?=$free[$counter]['ID']?>"><font color="#38de21"><?=$free[$counter]['TITLE']?></font></a></span>
				</div></center>
				</td>
				<? } ?>
				<? $counter++;  } ?>
					</tr>			
				<? } ?>
				<? }  ?>
				
				
				<tr>
				<? if(count($massiv) > 4) { ?>
			       <?for($j = 0; $j < count($massiv) % 4; $j++){ ?>
<? if(!empty($massiv[$counter]['TITLE'])) { ?>       <td width="230" style="border-width: 2px; border-color: #67766f; border-radius: 15px; border-style: double;">
					<center><div class="photo">
		 <font color="green"> <p> Свободно до <?=$regDate[$counter] ?> </p><a href="?option=bookroom&roomid=<?=$massiv[$counter]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($massiv[$counter]['IMAGE'])?>" alt="" width="134" height="100" style=" border-width: 3px; border-color: #260000; border-radius: 7px;" /><br /></a></font>
					<span><a href="?option=bookroom&roomid=<?=$massiv[$counter]['ID']?>"><font color="#38de21"><?=$massiv[$counter]['TITLE']?></font></a></span>
				</div></center>
				</td> <? } ?>
				<? $counter++;  }  } ?>
					</tr>			
					</table>
					
				</div>
		</div>
		