<?php 
require_once '../lib/util.admin.php';
require_once '../lib/auth.class.php';
require_once '../model/user.php';
$user = new User();
$auth = new Auth();

if ($_POST) {
	if($_POST['adminusername'] && $_POST['adminpass']){
		$user_id = trim($_POST['adminusername'] );
		echo $user_id;
		$user->getListUser($user_id);
		$inputpassword = trim($_POST['adminpass']);
		
		if ($auth->isvalidpass($inputpassword,$dbpassword)) {
			$_SESSION['admin']['user'] = $user_id;
			header("location:index.php");
		}
		
		
	}
}
?>