<table border="3" style="width: 100%" bgcolor="#1FE1F1">
	<tbody>
		<tr align="center">
			<colgroup></colgroup>
			<th><font color="black" size="4" class="stud">S.No&nbsp;&nbsp;&nbsp;</font></th>
			<th><font color="black" size="4" class="stud">USER NAME&nbsp;&nbsp;&nbsp;</font></th>
			<th><font color="black" size="4" class="stud">REGISTER NO&nbsp;&nbsp;&nbsp;</font></th>
			<th><font color="black" size="4" class="stud">PHONE NO.&nbsp;&nbsp;&nbsp;</font></th>
			<th><font color="black" size="4" class="stud">ADDRESS&nbsp;&nbsp;&nbsp;</font></th>
			<th><font color="black" size="4" class="stud">EMAIL ID&nbsp;&nbsp;&nbsp;</font></th>
			
			
</tr>
<?php 

include 'connect.php';

$id=$_POST["d_id"];

$query=mysqli_query($con,"SELECT * FROM tbl_student WHERE department_id='$id'");

if(mysqli_num_rows($query)>0)
		{$i=0;
			while ($row=mysqli_fetch_array($query))
			 {
			 
			?>
			 			$i++;
			 	
			 	<tr>
			 			<td align="center"><font color="black" size="4" style="float: center"class="stud">
			 			<?php echo $i;?>&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
			 			<td align="center"><font color="black" size="4" style="float: center"class="stud">
			 			<?php echo $row[6];?>&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
			 			<td align="center"><font color="black" size="4" style="float: center"class="stud">
			 			<?php echo $row[4];?>&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
			 			<td align="center"><font color="black" size="4" style="float: center"class="stud">
			 			<?php echo $row[7];?>&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
			 			<td align="center"><font color="black" size="4" style="float: center"class="stud">
			 			<?php echo $row[9];?>&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
			 			
			 						 			
			 		</tr>
			 		<?php
			 			}
			 		}
			 		
/*$var = mysqli_fetch_assoc($query);
echo " <label>Select Subject</label>
                    <input type='text' value='$var[sub1]' name='sem'>
                        ";
*/
?>
</tbody>
</table>



