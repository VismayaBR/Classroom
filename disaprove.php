<?php

include('connect.php');
$del=$_GET['edit_id'];

 //var_dump($del);exit();

 
 mysqli_query($con,"DELETE  FROM tbl_student WHERE login_id='$del'"); 

 header('location: vw_student.php');
?>
