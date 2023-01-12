<?php
include('connect.php'); 

	$stud_id = $_GET['sd_id'];

	mysqli_query($con, "DELETE FROM tbl_student WHERE login_id = '$stud_id'");
	mysqli_query($con, "DELETE FROM tbl_login WHERE login_id = '$stud_id'");

	echo "<script>alert('Deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>