<?php
include "connect.php";

if(isset($_POST))
{

$depart=$_POST['depart'];
$reg_no=$_POST['regname'];
$name=$_POST['name'];
$sub1=$_POST['sub'];
$mdate=$_POST['date'];
$mark1=$_POST['mark'];
$sem_id=$_POST['sem'];
$sub2=$_POST['sub2'];
$mark2=$_POST['mark2'];
$sub3=$_POST['sub3'];
$mark3=$_POST['mark3'];
$sub4=$_POST['sub4'];
$mark4=$_POST['mark4'];
$sub5=$_POST['sub5'];
$mark5=$_POST['mark5'];
$sub6=$_POST['sub6'];
$mark6=$_POST['mark6'];

}
$ins="insert into tbl_marks(reg_no,department_id,sem_id,stud_name,mdate,sub1,mark1,sub2,mark2,sub3,mark3,sub4,mark4,sub5,mark5,sub6,mark6)
values('$reg_no','$depart','$sem_id','$name','$mdate','$sub1','$mark1','$sub2','$mark2','$sub3','$mark3','$sub4','$mark4','$sub5','$mark5','$sub6','$mark6')";
$e=mysqli_query($con,$ins);
?>
<script type="text/javascript">
	alert("success");
	window.location="view_marks.php";
</script>