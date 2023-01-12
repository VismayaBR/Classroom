<?php
session_start();
 include 'connect.php';
 $log=$_SESSION['login_id'];
$query=mysqli_query($con,"SELECT * FROM tbl_student WHERE login_id='$log'");
$row=mysqli_fetch_assoc($query);
$nam=$row['stud_name'];
$cid=$row['sem_id'];
$cid1=$row['department_id'];
 
 if(isset($_POST['sub']))
{

$document=$_FILES['document']['name']; 
     
   
   move_uploaded_file($_FILES['document']['tmp_name'],"files/".$document);
 
}
mysqli_query($con,"INSERT INTO `sub_assignment_tb`( `name`, `department_id`, `sem_id`, `assignment`) 
VALUES ('$nam','$cid1','$cid','$document')");
echo "<script>alert('added');</script>";
echo "<script>window.location.href='student.php';</script>";

 ?>
