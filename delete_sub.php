<?php
include('connect.php'); 

	$semsub_id = $_GET['sd_id'];

	mysqli_query($con, "DELETE FROM tbl_semsubject WHERE semsub_id = '$semsub_id'");

	echo "<script>alert('Department deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>