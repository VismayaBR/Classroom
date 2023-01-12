<?php
include('connect.php'); 

	$lib_id = $_GET['sd_id'];

	mysqli_query($con, "DELETE FROM tbl_librarian WHERE login_id = '$lib_id'");
	mysqli_query($con, "DELETE FROM login_tb WHERE login_id = '$lib_id'");

	echo "<script>alert('Deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>