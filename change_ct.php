
<?php  
session_start();

include('connect.php');  

if(!isset($_SESSION['login_id']))
{
  header("location: admin.php");  
}

$id_id    = $_GET['sc_id'];



$query_categ = mysqli_query($con, "DELETE FROM tbl_ct WHERE login_id='$id_id'"); 

$query_status = mysqli_query($con, "UPDATE tbl_teacher SET status_ct='0' WHERE login_id='$id_id'");
$query_hod = mysqli_query($con, "UPDATE tbl_login SET role='teacher' WHERE login_id='$id_id'");

echo "<script>alert('change successfully!');</script>";
echo "<script>window.location.href='view_ct.php';</script>";
?>