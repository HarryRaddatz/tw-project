<?php
/*******************************************/
/********* ARQUIVO DE CONFIGURAÇÃO *********/
/********** Versão: Zapping Wars ***********/
/*********** Por Caique Portela ************/
/******* (No jogo: Felipe Medeiros) ********/
/*******************************************/

// Timezone
date_default_timezone_set("America/Sao_Paulo");

// Configurações do banco de dados
$config['db_host'] = 'mysql:3306';
$config['db_user'] = 'root';
$config['db_pw'] = 'my-secret-pw';
$config['db_name'] = 'pkmhunters_world';

// Acesso master ao painel administrativo
$config['master_user'] = 'Zapping_Admin';
$config['master_pw'] = 'Zapping1234';

// Configurações especiais...
$config['name'] = 'FindMe';
$config['ano'] = '2014';
$config['cdn'] = '../../global_cdn';
$config['forum'] = '#';
$config['support'] = 'zapping_support/';
$config['version'] = 'V0.1 DEVELOPMENT';
$config['prefix'] = '';

?>