<?php 
include 'header.php';

if($_SESSION['admin']['user']!=''){  
  unset($_SESSION['admin']['user']);
  session_destroy();
}
$html->display('logout.tpl');


?>