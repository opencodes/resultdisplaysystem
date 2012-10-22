<?php 
$Db =  NewADOConnection('mysql');
$db_options = $config['db_options'];
//$Db->debug = true;
$Db->PConnect($db_options['host'],$db_options['user'],$db_options['password'],$db_options['database']);

 ?>