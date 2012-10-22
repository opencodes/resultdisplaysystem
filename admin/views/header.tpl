<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Admin Panel:</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="CIBIL" >

    <!-- Le styles -->
    <link href="public/css/bootstrap.css" rel="stylesheet">
    <style >
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="public/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="public/css/common.css" rel="stylesheet">
    <link href="public/css/demo_table_jui.css" rel="stylesheet">
    <link href="public/css/jquery-ui-1.8.20.custom.css" rel="stylesheet">
	<script src="media/js/jquery.js" type="text/javascript"></script>
        <script src="media/js/jquery.dataTables.js" type="text/javascript"></script>
        
        <style type="text/css">
            @import "media/css/demo_table_jui.css";
            @import "media/themes/smoothness/jquery-ui-1.8.4.custom.css";
        </style>
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->		
    <script src="public/js/jquery.js"></script>
    <script src="public/js/jquery.validate.js"></script>
  </head>

  <body>

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
      
        <div class="container-fluid">
      
          <a class="brand" >Admin Panel</a>
          {if $smarty.session.admin.user}
          <div class="btn-group pull-right">
            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
              <i class="icon-user"></i> {$smarty.session.admin.user}
              <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              <li class="divider"></li>
              <li><a href="logout.php">Sign Out</a></li>
            </ul>
          </div>
          {/if}
          <div class="nav-collapse">
           {if $smarty.session.admin.user}
            <ul class="nav">
              <li class="active"><a href="index.php">Home</a></li>
              <li><a href="iit.php">IIT</a></li>
              <li><a href="resultupload.php">PMT</a></li>
              <li><a href="history.php">Upload History</a></li>
            </ul>
           {/if}
          </div><!--/.nav-collapse -->
      		 <!-- {if $smarty.session.id} -->
      
		  <!-- {/if}  -->
        </div>
       
      </div>
    </div>	<div class="container">
