<table>
	<tr>
		<td>
			<img src="{$config.cdn}/graphic/big_buildings/stone1.png" title="Clay Pit" alt="" />
		</td>
		<td>
			<h2>
				Clay Pit ({$village.stone|stage})
			</h2>
			{$description}
		</td>
	</tr>
</table>
<br />
	<table class="vis">
		<tr>
			<td width="200">
				<img src="{$config.cdn}/graphic/lehm.png" title="Lehm" alt="" />
				Current Produduction
			</td>
			<td>
				<b>{$stone_datas.stone_production} </b>
				Units per Minute
			</td>
		</tr>

		{if ($stone_datas.stone_production_next)==false}

		{else}

			<tr>
				<td>
					<img src="{$config.cdn}/graphic/lehm.png" title="Lehm" alt="" />
				Production at ({$village.stone+1|stage})
			</td>
			<td>
				<b>{$stone_datas.stone_production_next}</b>
				Units per Minute
			</td>
		</tr>
    {/if}

</table>
