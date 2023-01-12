<?php
include('connect.php'); 

	$del_id = $_GET['t_id'];

	mysqli_query($con, "DELETE FROM tbl_teacher WHERE login_id = '$del_id'");
	mysqli_query($con, "DELETE FROM login_tb WHERE login_id = '$del_id'");

	echo "<script>alert('Deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>