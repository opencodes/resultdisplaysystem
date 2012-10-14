<?php 
include('../lib/adodb5/adodb.inc.php');
class MySql {
  var $Db;
  var $db_options;
  function __construct($db_options) {
     $Db = new ADOConnection('mysql');
     $db_options = $config['db_options'];
     $Db->PConnect($db_options['host'],$db_options['user'],$db_options['password'],$db_options['database']);
  }
}

 ?>