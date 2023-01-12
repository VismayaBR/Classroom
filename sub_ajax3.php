<?php
$id=$_POST['sem_id'];
 include 'connect.php';
                $sql="select sub1,sub2,sub3,sub4,sub5,sub6 from tbl_semsubject where sem_id='$id'";
                $result=mysqli_query($con,$sql);
                while($row=mysqli_fetch_array($result))
                {
?>
<div class="form-group">
                                    <label>DATE</label>
                                    <input class="form-control" type="DATE" name="date" placeholder="" required="">
                                </div>
<div class="form-group">
                                    <label>Subject1</label>
                                    <select name="sub" class="form-control">
                                        
                <?php
                // include 'conect.php';
                // $sql="select sub1,sub2,sub3,sub4 from subject where sem='$he'";
                // $result=mysqli_query($con,$sql);
                // while($row=mysqli_fetch_array($result))
                // {
                    echo "<option value='". $row['sub1'] ."'>" .$row['sub1'] ."</option>" ;
                    // echo "<option value='". $row['sub2'] ."'>" .$row['sub2'] ."</option>" ;
                    // echo "<option value='". $row['sub3'] ."'>" .$row['sub3'] ."</option>" ;
                    // echo "<option value='". $row['sub4'] ."'>" .$row['sub4'] ."</option>" ;

                // }

                ?>  
                </select> 
</div>
<br/>
<br/>
                <div class="form-group">
                                    <label>Enter Mark1</label>
                                    <input class="form-control" type="text" name="mark" placeholder="MARK" required="">
                </div>

                <div class="form-group">
                                    <label>Subject2</label>
                                    <select name="sub2" class="form-control">
                                         
                <?php
                // include 'conect.php';
                // $sql="select sub1,sub2,sub3,sub4 from subject where sem='$he'";
                // $result=mysqli_query($con,$sql);
                // while($row=mysqli_fetch_array($result))
                // {
                    // echo "<option value='". $row['sub1'] ."'>" .$row['sub1'] ."</option>" ;
                    echo "<option value='". $row['sub2'] ."'>" .$row['sub2'] ."</option>" ;
                    // echo "<option value='". $row['sub3'] ."'>" .$row['sub3'] ."</option>" ;
                    // echo "<option value='". $row['sub4'] ."'>" .$row['sub4'] ."</option>" ;

                // }

                ?>  
                </select> 
            </div>
                               <br/>
                               <br/>
                               <div class="form-group">
                                    <label>Enter Mark2</label>
                                    <input class="form-control" type="text" name="mark2" placeholder="MARK" required="">
                                </div>
 <div class="form-group">
                                    <label>Subject3</label>
                                    <select name="sub3" class="form-control">
                                         
                <?php
                // include 'conect.php';
                // $sql="select sub1,sub2,sub3,sub4 from subject where sem='$h'";
                // $result=mysqli_query($con,$sql);
                // while($row=mysqli_fetch_array($result))
                // {
                    // echo "<option value='". $row['sub1'] ."'>" .$row['sub1'] ."</option>" ;
                    // echo "<option value='". $row['sub2'] ."'>" .$row['sub2'] ."</option>" ;
                    echo "<option value='". $row['sub3'] ."'>" .$row['sub3'] ."</option>" ;
                    // echo "<option value='". $row['sub4'] ."'>" .$row['sub4'] ."</option>" ;

                // }

                ?>  
                </select> 
            </div>
                               <br/>
                               <br/>
                               <div class="form-group">
                                    <label>Enter Mark3</label>
                                    <input class="form-control" type="text" name="mark3" placeholder="MARK" required="">
                                </div>
 <div class="form-group">
                                    <label>Subject4</label>
                                    <select name="sub4" class="form-control">
                                         
                <?php
                // include 'conect.php';
                // $sql="select sub1,sub2,sub3,sub4 from subject where sem='$h'";
                // $result=mysqli_query($con,$sql);
                // while($row=mysqli_fetch_array($result))
                // {
                    // echo "<option value='". $row['sub1'] ."'>" .$row['sub1'] ."</option>" ;
                    // echo "<option value='". $row['sub2'] ."'>" .$row['sub2'] ."</option>" ;
                    // echo "<option value='". $row['sub3'] ."'>" .$row['sub3'] ."</option>" ;
                    echo "<option value='". $row['sub4'] ."'>" .$row['sub4'] ."</option>" ;

                // }

                ?>  
                </select> 
            </div>

               
                               <br/>
                               <br/>
                               <div class="form-group">
                                   <label>Enter Mark4</label>
                                    <input class="form-control" type="text" name="mark4" placeholder="MARK" required="">
                                </div>
                                <div class="form-group">
                                    <label>Subject5</label>
                                    <select name="sub5" class="form-control">
                                         
                <?php
                // include 'conect.php';
                // $sql="select sub1,sub2,sub3,sub4 from subject where sem='$h'";
                // $result=mysqli_query($con,$sql);
                // while($row=mysqli_fetch_array($result))
                // {
                    // echo "<option value='". $row['sub1'] ."'>" .$row['sub1'] ."</option>" ;
                    // echo "<option value='". $row['sub2'] ."'>" .$row['sub2'] ."</option>" ;
                    // echo "<option value='". $row['sub3'] ."'>" .$row['sub3'] ."</option>" ;
                    echo "<option value='". $row['sub5'] ."'>" .$row['sub5'] ."</option>" ;

                // }

                ?>  
                </select> 
            </div>

               
                               <br/>
                               <br/>
                               <div class="form-group">
                                   <label>Enter Mark5</label>
                                    <input class="form-control" type="text" name="mark5" placeholder="MARK" required="">
                                </div>
                                <div class="form-group">
                                    <label>Subject6</label>
                                    <select name="sub6" class="form-control">
                                         
                <?php
                // include 'conect.php';
                // $sql="select sub1,sub2,sub3,sub4 from subject where sem='$h'";
                // $result=mysqli_query($con,$sql);
                // while($row=mysqli_fetch_array($result))
                // {
                    // echo "<option value='". $row['sub1'] ."'>" .$row['sub1'] ."</option>" ;
                    // echo "<option value='". $row['sub2'] ."'>" .$row['sub2'] ."</option>" ;
                    // echo "<option value='". $row['sub3'] ."'>" .$row['sub3'] ."</option>" ;
                    echo "<option value='". $row['sub6'] ."'>" .$row['sub6'] ."</option>" ;

                // }

                ?>  
                </select> 
            </div>

               
                               <br/>
                               <br/>
                               <div class="form-group">
                                   <label>Enter Mark6</label>
                                    <input class="form-control" type="text" name="mark6" placeholder="MARK" required="">
                                </div>
            <?php
        }
        ?>