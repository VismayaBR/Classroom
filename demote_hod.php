
<?php  
session_start();

include('connect.php');  
 

$id_id    = $_GET['sc_id'];

$query_categ = mysqli_query($con, "DELETE FROM tbl_hod WHERE login_id='$id_id'");

$query_status = mysqli_query($con, "UPDATE tbl_teacher SET status_hod='0' WHERE login_id='$id_id'");
$query_hod = mysqli_query($con, "UPDATE tbl_login SET role='teacher' WHERE login_id='$id_id'");

echo "<script>alert('Removed from hod post successfully!');</script>";
echo "<script>window.location.href='vw_teacher.php';</script>";

?>