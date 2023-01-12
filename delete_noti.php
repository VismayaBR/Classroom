<?php
include('connect.php'); 

	$notifi_id = $_GET['sd_id'];

	mysqli_query($con, "DELETE FROM tbl_notification WHERE notify_id = '$notifi_id'");

	echo "<script>alert('Notification deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>