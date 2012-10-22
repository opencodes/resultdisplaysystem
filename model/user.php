<?php 
class User{
  var $Db;
    function __construct($Db){
      $this->Db = $Db;
    }
	function getListUser($user_id) {
		$sql ="SELECT * FROM user WHERE username ='$user_id'";
		$rs = $this->Db->Execute($sql);
        $rows = $rs->GetRows();
        if(!$rows){
          return false;
        }
        return $rows;
	}
}
?>