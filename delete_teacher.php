<?php
include('connect.php'); 

	$teach_id = $_GET['sd_id'];

	mysqli_query($con, "DELETE FROM tbl_teacher WHERE login_id = '$teach_id'");
	mysqli_query($con, "DELETE FROM tbl_login WHERE login_id = '$teach_id'");

	echo "<script>alert('Deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>