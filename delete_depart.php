<?php
include('connect.php'); 

	$depart_id = $_GET['sd_id'];

	mysqli_query($con, "DELETE FROM tbl_department WHERE department_id = '$depart_id'");

	echo "<script>alert('Department deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>