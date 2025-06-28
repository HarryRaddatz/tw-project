<h3>Logins</h3>
<p> On this page you can see when logins and login failures have occurred in your account. If you discover that someone had unauthorized access to your account, you should immediately change your password. The IP generally changes when you re-join the Internet. </ P>
<h4>Last 20 Logins</h4>
<table class="vis">
<tr><th>Date</th><th>IP</th><th>Urlaubsvertreter</th></tr>
{foreach from=$logins item=arr key=id}
	<tr><td>{$arr.time}</td><td>{$arr.ip}</td><td>{$arr.uv}</td></tr>
{/foreach}
</table>