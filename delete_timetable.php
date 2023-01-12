<?php
include('connect.php'); 

	$edd_id = $_GET['t_id'];

	mysqli_query($con, "DELETE FROM tbl_timetable WHERE id = '$edd_id'");
	

	echo "<script>alert('Deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>