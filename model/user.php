<?php 
class User extends MySql{
	function __construct() {
		//
	}
	/*
	 * info 
	 * @param : $db connection flag
	 */
	function getListUser($user_id) {
		$sql ="SELECT * FROM user WHERE username ='$user_id'";
		$rs = $DB->Execute($sql);
    $arr = $rs->GetArray();
    print_r($arr);
	}
}

$user = new User();
$user->getListUser('admin@example.com');
?>