<?php
include('connect.php'); 

	$staff_id = $_GET['sd_id'];

	mysqli_query($con, "DELETE FROM tbl_officestaff WHERE login_id = '$staff_id'");
	mysqli_query($con, "DELETE FROM tbl_login WHERE login_id = '$staff_id'");

	echo "<script>alert('Deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>