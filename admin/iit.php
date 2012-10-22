<?php 
include 'header.php';
include './model/user.php';

$rs = $Db->Execute('select * from iit_results');
$rows = $rs->GetRows();

$html->assign('data',$rows);         
$html->display('iit.tpl');