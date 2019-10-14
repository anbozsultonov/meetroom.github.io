<div id="wrapper">
			<div style="margin-top: 500px">
			   <? if(count($wlbs) > 0){ $counter = 0;  ?>
			     <table>
			     	<? for($i = 0; $i < count($wlbs) / 4; $i++){ ?>
			     	      <tr>
			       
	        	 <?for($j = 0; $j < 4; $j++){ ?>
			    <? if(!empty($wlbs[$counter]['TITLE'])) { ?>    
			    <td width="230" style="border-width: 2px; border-color: #67766f; border-style: double;">
			       <br />
				<center>
				<div class="photo">
				<font color="orange">
				<p>Будет занято через <?=$minut[$counter]?> минут до <?=$totimewb[$counter]?> </p>
			   	<a href="?option=info&roomid=<?=$wlbs[$counter]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($wlbs[$counter]['IMAGE'])?>" alt="" width="134" height="100" style=" border-width: 3px; border-color: #260000;" /><br /></a> 
					<span>
					<a href="?option=info&roomid=<?=$wlbs[$counter]['ID']?>"><?=$wlbs[$counter]['TITLE']?></a>
					</span>
					</font>
				</div>
				
				</center>
				<br />
				</td>
				 <? } ?>
				
				<? $counter++;  } ?>
					</tr>		     	
			     		<? } ?>
			     		
			     		<? for($i = 0; $i < count($wlbs) % 4; $i++){ ?>
			     	      <tr>
			       
	        	 <?for($j = 0; $j < count($wlbs) % 4; $j++){ ?>
			    <? if(!empty($wlbs[$counter]['TITLE'])) { ?>    
			    <td width="230" style="border-width: 2px; border-color: #67766f; border-style: double;">
			     		  <br />
							<center>
								<div class="photo">
									<font color="orange">
								<span>a href="?option=info&roomid=<?=$wlbs[$counter]['ID']?>">	<p>Будет занято через <?=$minut[$counter]?> минут до <?=$totimewb[$counter]?> </p>
	<img src="data:image/jpeg;base64,<?=base64_encode($wlbs[$counter]['IMAGE'])?>" alt="" width="134" height="100" style=" border-width: 3px; border-color: #260000;" /><br />
										
						<<?=$wlbs[$counter]['TITLE']?></a>
								</span>
					</font>
				</div>
				</center>
				<br />
				</td>
				 <? } ?>
				
				<? $counter++;  } ?>
					</tr>		     	
			     		<? } ?>	
			     </table>
					
				<? } ?>	
				</div>
		</div>
