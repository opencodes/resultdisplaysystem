<?php 
include 'header.php';
if ($_GET[id] && $_GET[course]) {
  $rollno = number_format($_POST[rollno]);
  $sql = "select * from ".$_GET[course]."_results where id='$_GET[id]'";
  $rs = $Db->Execute($sql);
  $rows = $rs->GetRows();
  $html->assign('data',$rows[0]);  
}
$html->display('resultview.tpl');

?>  