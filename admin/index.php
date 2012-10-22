<?php 
include 'header.php';
include './model/user.php';
if($_SESSION['admin']['user']){
	$html->display('index.tpl');
}
else{
	$html->display('login.tpl');
}
?>