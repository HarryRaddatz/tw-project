<?php

$find = $db->query("SELECT * FROM configs WHERE ip = '".$_SERVER['REMOTE_ADDR']."'");
$find = $db->fetch($find);

switch ($find['lang']) {
	case 'PT':
		$lang = 'PT';  // todo: fix this
		break;
	case 'EN':
		$lang = 'EN';
		break;
	default:
		$lang = 'EN';
		break;
}





?>