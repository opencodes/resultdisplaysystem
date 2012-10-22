<?php
$con = mysql_connect("localhost", "root", "root");

if (!$con) {
    die("Error: " . mysql_error());
}

mysql_select_db("db_rds", $con);

$result = mysql_query("SELECT * FROM iit_results");
?>
<!DOCTYPE html>
<html>
    <head>
        <title>DataTables</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <script src="media/js/jquery.js" type="text/javascript"></script>
        <script src="media/js/jquery.dataTables.js" type="text/javascript"></script>
        
        <style type="text/css">
            @import "media/css/demo_table_jui.css";
            @import "media/themes/smoothness/jquery-ui-1.8.4.custom.css";
        </style>
        
        <style>
            *{
                font-family: arial;
            }
        </style>
        <script type="text/javascript" charset="utf-8">
            $(document).ready(function(){
                $('#datatables').dataTable({
                    "sPaginationType":"full_numbers",
                    "aaSorting":[[2, "desc"]],
                    "bJQueryUI":true
                });
            })
            
        </script>
        
    </head>
    <body>
        <div>
            <table id="datatables" class="display">
                <thead>
                    <tr>
                        <th>Country</th>
                        <th>Population</th>
                        <th>Internet Users</th>
                        <th>Penetration (% Population)</th>
                        <th>World % Users</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    while ($row = mysql_fetch_array($result)) {
                        ?>
                        <tr>
                            <td><?=$row['id']?></td>
                            <td><?=$row['rank']?></td>
                            <td><?=$row['roll_no']?></td>
                            <td><?=$row['student_name']?></td>
                            <td><?=$row['total']?></td>
                        </tr>
                        <?php
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </body>
</html>
