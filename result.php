<?php 
include 'header.php';

if ($_POST[course]!='' && $_POST[rollno]!='') {
  $rollno = number_format($_POST[rollno]);
  $sql = "select * from ".$_POST[course]."_results where roll_no='$rollno'";
  $rs = $Db->Execute($sql);
  $rows = $rs->GetRows();
  
} 
  $html->assign('course',$_POST[course]);
  $html->assign('data',$rows);
  $html->display('result.tpl');  

?>  