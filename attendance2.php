<?php
include "connect.php";
$reg=array();
$attend=array();
$depart=$_POST['dept'];
$sem_id=$_POST['sem'];
$d_id=$_POST['adate'];
$subject=$_POST['sub_id'];
$reg=$_POST['reg_no'];
$attend=$_POST['attendance'];

$student_query=mysqli_query($con,"SELECT * FROM student where department_id='$depart'");
$i=0;
while($i<count($reg))
{
 $ins="INSERT INTO attendance (reg_no,department_id,sem_id,a_date,subject,attend)
VALUES ('$reg[$i]','$depart','$sem_id','$d_id','$subject','$attend[$i]')";
$e=mysqli_query($con,$ins);
$i++;
}

?>
<script type="text/javascript">
	alert("success");
	window.location="teacher.php";
</script>+