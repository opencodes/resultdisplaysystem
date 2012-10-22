<?php
include 'header.php';
$csv = array();

// check there are no errors
if($_FILES['csv']['error'] == 0){
    $name = $_FILES['csv']['name'];
    $ext = strtolower(end(explode('.', $_FILES['csv']['name'])));
    $type = $_FILES['csv']['type'];
    $tmpName = $_FILES['csv']['tmp_name'];
    
    // check the file is a csv
    if($ext === 'csv'){
        if(($handle = fopen($tmpName, 'r')) !== FALSE) {
            // necessary if a large csv file
            set_time_limit(0);

            $row = 0;

            while(($data = fgetcsv($handle, 1000, ',')) !== FALSE) {
                // number of fields in the csv
                $num = count($data);
                // get the values from the csv
                $csv[] = $data;
                // inc the row
                $row++;
            }
            fclose($handle);
            if ($num==16  && $row >=2) {
               
               for ($k = 2;$k<=$row;$k++){
                 $result = $csv[$k];
                 $sql = "INSERT INTO `iit_results`". 
                       "(`id`, `rank`, `roll_no`, `student_name`, `total`, `percentage`,".
                       " `percentile`, `grade`, `phy_marks`, `phy_percentage`, `phy_rank`,".
                       " `chem_marks`, `chem_percentage`, `chem_rank`, `maths_marks`,".
                       " `math_percentage`, `maths_rank`) ".
                       "  VALUES (NULL, '$result[0]', '$result[1]', '$result[2]', '$result[3]', '$result[4]', '$result[5]', '$result[6]', '$result[7]', '$result[8]', '$result[9]', '$result[10]', '$result[11]', '$result[13]', '$result[14]', '$result[15]', '$result[16]')";
                 //echo $sql;
                 // get the values from the csv
               $Db->Execute($sql);
               }
               $today = date("Y-m-d H:i:s");  $uploaded_at = date("Y-m-d");
               $record = ($row-2); 
               $insert_history = "INSERT INTO `history` (`id`, `dept`, `no_column`, `no_of_record`,`uloaded_at`, `created_at`) ".
                                                " VALUES ('', 'iit','$num' ,'$record', '$uploaded_at','$today');";
               $response =  $today." : No of column = ".$num.", No of record uploaded ".$record;
               $Db->Execute($insert_history);
            }else {
              $response =  "No of columns != 16 or no of rows <= 2 because first and second row is for header.";
            }
        }
    }else {
      echo 'File uploaded "'.$name.'" is not in csv format';
    }
}else {
  echo "No file uploaded";
}
$html->assign('response',$response);
$html->display('success.tpl');

