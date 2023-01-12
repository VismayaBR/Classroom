<?php
include('connect.php'); 

	$syll_id = $_GET['sd_id'];

	$img_data = mysqli_query($con, "SELECT syllabus from tbl_syllabus where syll_id = '$syll_id'");

	$qImgData = mysqli_fetch_assoc($img_data);

	@unlink("syllabus/".$qImgData['syllabus']);

	mysqli_query($con, "DELETE FROM tbl_syllabus WHERE syllabus_id = '$syll_id'");

	echo "<script>alert('Syllabus deleted successfully');</script>";
	echo "<script>window.history.back();</script>";


?>