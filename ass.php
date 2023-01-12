<?php
session_start();
 include 'connect.php';
 $log=$_SESSION['login_id'];
 $query=mysqli_query($con,"SELECT * FROM tbl_teacher WHERE login_id='$log'");
 $row=mysqli_fetch_array($query);
 $name=$row['t_name'];
 echo $name;
 if(isset($_POST['sub']))
{
$depart=$_POST['depart'];
$sem_id=$_POST['sem'];
$head=$_POST['subject'];
$new=$_POST['details'];
}
mysqli_query($con,"INSERT INTO tbl_assignment(department,name,sem,subject,details) VALUES ('$depart','$name','$sem_id','$head','$new')");

echo "<script>alert('added');</script>";
echo "<script>window.location.href='teacher.php';</script>";

 ?>
