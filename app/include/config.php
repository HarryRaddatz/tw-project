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
$config['db_host'] = 'mysql:3306'; // Host of your Database, probably Localhost
$config['db_user'] = 'root'; // Database Username
$config['db_pw'] = 'my-secret-pw'; // Database Password
$config['db_name'] = 'pkmhunters_imp'; // Database Name

// Acesso master ao painel administrativo
$config['master_user'] = 'root';
$config['master_pw'] = 'my-secret-pw';

// Configurações especiais...
$config['name'] = 'TribalWars';
$config['ano'] = '2014';
$config['cdn'] = 'global_cdn';
$config['forum'] = '#';
$config['support'] = 'zapping_support/';
$config['version'] = 'V0.1 DEVELOPMENT';
$config['prefix'] = '';
?>