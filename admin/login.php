<?php 
include 'header.php';
include '../model/user.php';
include '../lib/auth.class.php';

$user = new User($Db);
$auth = new Auth();

if ($_POST) {
    if($_POST['adminusername'] && $_POST['adminpass']){
        $user_id = trim($_POST['adminusername'] );
        $userdata = $user->getListUser($user_id);
        $inputpassword = trim($_POST['adminpass']);
        if ($auth->isvalidpass($inputpassword,$userdata[0]['password'])) {
            $_SESSION['admin']['user'] = $user_id;
            header("location:index.php");
        }
    }
}
?>