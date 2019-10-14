<div id="wrapper">
			<div style="margin-top: 500px;border:#82738c; border-width: 0px; border-color:#858e79; border-style: solid; margin-right: 20px">
			
			  <? if(count($rooms) > 0){ $counter = 0;  ?>
			     <table>
			     	<? for($i = 0; $i < count($rooms) / 4; $i++){ ?>
			     	      <tr>
			       
	        	 <?for($j = 0; $j < 4; $j++){ ?>
			    <? if(!empty($rooms[$counter]['TITLE'])) { ?>    
			    <td width="230" style="border-width: 2px; border-color: #67766f; border-style: double;">
			       <br />
				<center><div class="photo">
			   	<a href="?option=info&roomid=<?=$rooms[$counter]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($rooms[$counter]['IMAGE'])?>" alt="" width="134" height="100" style=" border-width: 3px; border-color: #260000;" /><br /></a> 
					<span>
					<a href="?option=info&roomid=<?=$rooms[$counter]['ID']?>"><?=$rooms[$counter]['TITLE']?></a>
					</span>
				</div>
				</center>
				<br />
				</td>
				 <? } ?>
				
				<? $counter++;  } ?>
					</tr>		     	
			     		<? } ?>
			     		
			     		<? for($i = 0; $i < count($rooms) % 4; $i++){ ?>
			     	      <tr>
			       
	        	 <?for($j = 0; $j < count($rooms) % 4; $j++){ ?>
			    <? if(!empty($rooms[$counter]['TITLE'])) { ?>    
			    <td width="230" style="border-width: 2px; border-color: #67766f; border-style: double;">
			       <br />
				<center><div class="photo">
			   	<a href="?option=info&roomid=<?=$rooms[$counter]['ID']?>"><img src="data:image/jpeg;base64,<?=base64_encode($rooms[$counter]['IMAGE'])?>" alt="" width="134" height="100" style=" border-width: 3px; border-color: #260000;" /><br /></a> 
					<span>
					<a href="?option=info&roomid=<?=$rooms[$counter]['ID']?>"><?=$rooms[$counter]['TITLE']?></a>
					</span>
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
		