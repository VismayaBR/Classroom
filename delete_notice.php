<?php
include('connect.php'); 

	$notice_id = $_GET['sd_id'];

	mysqli_query($con, "DELETE FROM tbl_digitalnotice WHERE notice_id = '$notice_id'");

	echo "<script>alert('Deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>