<?php 
include 'header.php';
$today = date("Y-m-d");
$sql = "SELECT * FROM `history` WHERE DATE(`created_at`) = '$today';";
$rs = $Db->Execute($sql);
$rs->GetRows();
$i=$rs->RecordCount();
$html->assign('uploaded',$i);
$html->display('upload.tpl');

?>