<?php 

include 'connect.php';

$id=$_POST["id"];

$query=mysqli_query($con,"SELECT * FROM tbl_student  where reg_no='$id'");

$var = mysqli_fetch_assoc($query);
echo " <label>User Name</label>
                    <input type='text' value='$var[stud_name]' name='name'>
                        ";

?>



