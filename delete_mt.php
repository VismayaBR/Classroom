<?php
include'connect.php';
$del=$_GET['m_id'];

$query=mysqli_query($con,"SELECT * FROM tbl_material WHERE m_id='$del'");
$data=mysqli_fetch_assoc($query);
$file=$data['file'];
//var_dump($file);

 mysqli_query($con,"DELETE FROM tbl_material WHERE m_id='$del'");
unlink("material/$file");
 echo"<script>window.location.href='view_material.php';</script>";


?>