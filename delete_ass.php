<?php
include('connect.php'); 

	$id = $_GET['id'];

	

	mysqli_query($con, "DELETE FROM tbl_assignment WHERE id = '$id'");

	echo "<script>alert(' deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>