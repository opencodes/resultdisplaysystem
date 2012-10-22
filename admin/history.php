<?php
include 'header.php';
$rs = $Db->Execute('select * from history');
$rows = $rs->GetRows();

$html->assign('data',$rows);         
$html->display('history.tpl');
