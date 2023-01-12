<?php
include('connect.php'); 

	$mem_id = $_GET['sd_id'];

	mysqli_query($con, "DELETE FROM tbl_union WHERE login_id = '$mem_id'");
	mysqli_query($con, "DELETE FROM tbl_login WHERE login_id = '$mem_id'");

	echo "<script>alert('Deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>