<div id="wrapper">
			<div style="margin-top: 500px; margin-right: 20px">
			 
			  <center><table>
			        <? if(count($massivBusy) > 0){ $counter = 0;  ?>
			    <? for($i = 0; $i < count($massivBusy) / 4; $i++) {  ?>
			      
			       <tr>
			       
		 <?for($j = 0; $j < 4; $j++){ ?>
			    <? if(!empty($massivBusy[$counter]['TITLE'])) { ?> 
			       <td width="230" style="border-width: 2px; border-color: #67766f; border-radius: 15px; border-style: double;">
			       <br />
				<center><div class="photo">
			 <font color="red"> <p> Занято до <?=$totime[$counter]?> </p>	<a href="?option=info&roomid=<?=$massivBusy[$counter]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($massivBusy[$counter]['IMAGE'])?>" alt="" width="134" height="100" style=" border-width: 3px; border-color: #260000; border-radius: 7px;" /><br /></a></font>
					<span><a href="?option=info&roomid=<?=$massivBusy[$counter]['ID']?>"><font color="red"><?=$massivBusy[$counter]['TITLE']?></font></a></span>
				</div></center>
				</td> <? } ?>
				
				<? $counter++;  } ?>
					</tr>			
				<? } ?>
				<? }  ?>
				
				
				<tr>
				<? if(count($massivBusy) > 4) { ?>
			       <?for($j = 0; $j < count($massivBusy) % 4; $j++){ ?>
		<? if(!empty($massivBusy[$counter]['TITLE'])) { ?>	       <td width="230" style="border-width: 2px; border-color: #67766f; border-radius: 15px; border-style: double;">
					<center><div class="photo">
		 <font color="red"> <p> Занято до <?=$totime[$counter]?> </p>		<a href="?option=info&roomid=<?=$massivBusy[$counter]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($$massivBusy[$counter]['IMAGE'])?>" alt="" width="134" height="100" style=" border-width: 3px; border-color: #260000; border-radius: 7px;" /><br /></a></font>
				<span><a href="?option=info&roomid=<?=$massivBusy[$counter]['ID']?>"><font color="red"><?=$$massivBusy[$counter]['TITLE']?></font></a></span>
				</div></center>
				</td><? } ?>	
				<? $counter++;  }  } ?>
					</tr>			
					</table>
					</center>
				</div>
		</div>
		