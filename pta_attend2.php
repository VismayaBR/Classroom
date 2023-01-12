<?php
include "connect.php";
$reg=array();
$attend=array();
$depart=$_POST['dept'];
$sem_id=$_POST['sem'];
$d_id=$_POST['adate'];
$reg=$_POST['reg_no'];
$attend=$_POST['attendance'];

$student_query=mysqli_query($con,"SELECT * FROM student where department_id='$depart'");
$i=0;
while($i<count($reg))
{
 $ins="INSERT INTO pta_attendance (reg_no,department_id,sem_id,p_date,p_attend)
VALUES ('$reg[$i]','$depart','$sem_id','$d_id','$attend[$i]')";
$e=mysqli_query($con,$ins);
$i++;
}
?>
<script type="text/javascript">
	alert("success");
	window.location="hod.php";
</script>+