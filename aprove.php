<?php

session_start();
include('connect.php');
$edd=$_GET['edit_id'];
// var_dump($edd);exit();
mysqli_query($con,"UPDATE `tbl_student` SET `status`=1 WHERE login_id='$edd'");

echo"<script>alert('registration aproved');</script>";

echo"<script>window.location.href='vw_student.php';</script>";
?>