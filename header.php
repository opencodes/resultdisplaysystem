<?php
session_start();
// Report all errors except E_NOTICE
error_reporting(E_ALL ^ E_NOTICE);
require_once './config/config.php';
require_once 'lib/utill.php';
