<?php
include('connect.php'); 

	$pro_id = $_GET['sd_id'];

   mysqli_query($con, "DELETE FROM tbl_programme WHERE programme_id = '$pro_id'");

	echo "<script>alert('Deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>