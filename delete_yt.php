<?php
include'connect.php';
$del=$_GET['y_id'];


 mysqli_query($con,"DELETE FROM tbl_youtube WHERE link_id='$del'");

 echo"<script>window.location.href='view_links.php';</script>";


?>