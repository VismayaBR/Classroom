<?php
include('connect.php'); 

	$sem_id = $_GET['sd_id'];

	mysqli_query($con, "DELETE FROM tbl_sem WHERE sem_id = '$sem_id'");

	echo "<script>alert('Semester deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>