<?php
session_start();
// Report all errors except E_NOTICE
error_reporting(E_ALL ^ E_NOTICE);
require_once '../config/config.php';
require_once '../lib/utill.admin.php';
//Session Check
$path_parts = pathinfo($_SERVER[PHP_SELF]);
if (!$_SESSION['admin']['user']  && $path_parts['basename']!=='index.php') {
    header('location:index.php');
}