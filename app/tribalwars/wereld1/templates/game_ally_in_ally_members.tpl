<form action="game.php?village={$village.id}&amp;screen=ally&amp;mode=members&amp;action=mod&amp;h={$hkey}" method="post">
	<table class="vis" width="100%" style="border:1px solid #804000; margin-bottom:5px;">
		<tr>
			<th width="280">Player</th>
			<th width="40">Rank</th>
			<th width="80">Points</th>
			<th width="40">Villages</th>
			{if $user.ally_lead == 1}
			<th><div align="center"><span class="icon ally founder" alt="Duke" title="Duke"></span></div></th>
			<th><div align="center"><span class="icon ally lead" alt="Baron" title="Baron"></span></div></th>
			<th><div align="center"><span class="icon ally invite" alt="Recruiter" title="Recruiter"></span></div></th>
			<th><div align="center"><span class="icon ally diplomacy" alt="Diplomat" title="Diplomat"></span></div></th>
			<th><div align="center"><span class="icon ally mass" alt="Mass Mail" title="Mass Mail"></span></div></th>
			{*<th><div align="center"><span class="icon ally mod" alt="Forum Moderator" title="Forum Moderator"></span></div></th>
			<th><div align="center"><span class="icon ally internal" alt="Hidden Messages" title="Hidden Messages"></span></div></th>
			<th><div align="center"><span class="icon ally trusted" alt="Trusted Members" title="Trusted Members"></span></div></th>*}
			<th><div align="center">Modo de férias</div></th>
			{/if}
		</tr>
	    {foreach from=$members item=arr key=id}
		<tr {if $id==$user.id}class="lit"{/if}>
			<td>
			{if $user.ally_lead == '1'}<input type="radio" name="player_id" value="{$id}" />
				{foreach from=$arr.icons item=graphic}<img src="graphic/stat/{$graphic}.png" /> {/foreach}
			{/if}
				<a href="game.php?village={$village.id}&amp;screen=info_player&amp;id={$id}">{$arr.username}</a> 
				{if !empty($arr.ally_titel)}({$arr.ally_titel}){/if}
			</td>
			<td align="center">{$arr.rank}</td>
			<td align="center">{$arr.points}</td>
			<td align="center">{$arr.villages}</td>
			{if $user.ally_lead == '1'}
			<td align="center">{if $arr.ally_found==1}<span class="dot green"></span>{else}<span class="dot grey"></span>{/if}</td>
			<td align="center">{if $arr.ally_lead==1}<span class="dot green"></span>{else}<span class="dot grey"></span>{/if}</td>
			<td align="center">{if $arr.ally_invite==1}<span class="dot green"></span>{else}<span class="dot grey"></span>{/if}</td>
			<td align="center">{if $arr.ally_diplomacy==1}<span class="dot green"></span>{else}<span class="dot grey"></span>{/if}</td>
			<td align="center">{if $arr.ally_mass_mail==1}<span class="dot green"></span>{else}<span class="dot grey"></span>{/if}</td>
			<td align="center">{if !empty($arr.vacation_id)}<a href="game.php?village={$village.id}&amp;screen=info_player&amp;id={$arr.vacation_id}">{$arr.vacation_name}</a>{/if}</td>
			{/if}
		</tr>
		{/foreach}
	</table>
	{if $user.ally_lead == '1'}
	<select name="action" style="text-align:center;">
		<option label="Selection an action." value="">Selection an action..</option>
		<option label="Change permissions" value="rights">Change permissions</option>
		<option label="Dismiss" value="kick">Dismiss</option>
	</select>
	<input type="submit" value="OK" class="button" />
	{/if}
</form>

{if $user.ally_lead == '1'}
<table class="vis" width="200" style="border:1px solid #804000; margin-top:5px;">
	<tr><th colspan="2">Status</th></tr>
	<tr><td align="center"><span class="dot green"></span></td><td>Active</td></tr>
	<tr><td align="center"><span class="dot yellow"></span></td><td>Inactive for 2 days</td></tr>
	<tr><td align="center"><span class="dot red"></span></td><td>Inactive for 1 week</td></tr>
	<tr><td align="center"><span class="dot blue"></span></td><td>Vacation Mode</td></tr>
	<tr><td align="center"><span class="dot locked"></span></td><td>Banned</td></tr>
</table>
<div style="font-size:7pt;">* <b>Dukes</b> and <b>Barons</b> can see the status of the players</div>
{/if}