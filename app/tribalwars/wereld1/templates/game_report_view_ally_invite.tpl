<a href="game.php?village={$village.id}&amp;screen=info_player&amp;id={$report.from_user}">{$report.from_username}</a> hat dich in den Stamm
{if $report.ally_exist==0}{$report.allyname} (aufgel�st){else}<a href="game.php?village={$village.id}&amp;screen=info_ally&amp;id={$report.ally}">{$report.allyname}</a>{/if}
&nbsp;invited.
{if $user.ally==-1}
	<p><a href="game.php?village={$village.id}&amp;screen=ally">&raquo; Show invitations</a></p>
{/if}