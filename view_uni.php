<?php
session_start();

include('connect.php'); 


		if(isset($_POST))
		{
			$reg2=$_POST['reg'];
		
		$name=mysqli_query($con,"select * from tbl_student where reg_no ='$reg2' ");

		if(mysqli_num_rows($name)>0)
		{
			$row=mysqli_fetch_array($name);
		$name=$row['stud_name'];
		?>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Subject An Education Category Flat Bootstrap Responsive website Template | Home :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Subject Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        
    </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
	<!-- Testimonials-Css -->
	<link rel="stylesheet" href="css/owl.theme.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="screen" property="" />
    <!-- font-awesome icons -->
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
	<!-- //Custom Theme files -->
    <!-- online-fonts -->
	<link href="//fonts.googleapis.com/css?family=Roboto:100i,400,500,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800" rel="stylesheet">
	<!-- //online-fonts -->
</head>

<body>
    <!-- banner -->
    <div class="banner1">
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary pt-3">
               <h1><a class="navbar-brand" href="index.php">WELCOME TO OUR COLLEGE
							<span> </span>
						</a></h1>

                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
								</li>
								
					</ul>
				</div>
			</nav>
        </header>


     <br><br><br><br><br><h1 align="left"><font color="brown">NAME :<?php echo $name; }}?></font></h1></br></br>

     <section class="content">
      <div class="container-fluid">

        <div class="card">
            
            <!-- /.card-header -->
            <div class="card-body">
<table id="category_table" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th style="text-align: center;">Sl No</th>
                  <th style="text-align: center;">RegisterNo</th>
                  <th style="text-align: center;">Semester</th>
                  <th style="text-align: center;">Date</th>
                  <th style="text-align: center;">Subject1</th>
                  <th style="text-align: center;">Mark</th>
                  <th style="text-align: center;">Subject2</th>
                  <th style="text-align: center;">Mark</th>
                  <th style="text-align: center;">Subject3</th>
                  <th style="text-align: center;">Mark</th>
                  <th style="text-align: center;">Subject4</th>
                  <th style="text-align: center;">Mark</th>
                  <th style="text-align: center;">Subject5</th>
                  <th style="text-align: center;">Mark</th>
                  <th style="text-align: center;">Subject6</th>
                  <th style="text-align: center;">Mark</th>
                </tr>
                </thead>

                <tbody>

                <?php $i = 0;
                if(isset($_POST))
		          {
			      $sem=$_POST['sem_id'];
            $depart=$_POST['depart'];
			      $reg=$_POST['reg'];
		            }
	      	$query_ret=mysqli_query($con,"select * from tbl_university join tbl_department on tbl_department.department_id=tbl_university.department_id join tbl_sem on tbl_sem.sem_id=tbl_university.sem_id where tbl_university.reg_no ='$reg' and tbl_department.department_id = '$depart' and tbl_university.sem_id='$sem'");
                if(mysqli_num_rows($query_ret)>0)
		{
		 while($data = mysqli_fetch_assoc($query_ret))
                {
                  $i++;
                ?>
                <tr>
                  <td align="center"><?php echo $i; ?></td>
                  <td align="center"><?php echo $data['reg_no']; ?></td>
                  <td align="center"><?php echo $data['sem']; ?></td>
                  <td align="center"><?php echo $data['mdate']; ?></td>
                  <td align="center"><?php echo $data['sub1']; ?></td>
                  <td align="center"><?php echo $data['mark1']; ?></td>
                  <td align="center"><?php echo $data['sub2']; ?></td>
                  <td align="center"><?php echo $data['mark2']; ?></td>
                  <td align="center"><?php echo $data['sub3']; ?></td>
                  <td align="center"><?php echo $data['mark3']; ?></td>
                  <td align="center"><?php echo $data['sub4']; ?></td>
                  <td align="center"><?php echo $data['mark4']; ?></td>
                  <td align="center"><?php echo $data['sub5']; ?></td>
                  <td align="center"><?php echo $data['mark5']; ?></td>
                  <td align="center"><?php echo $data['sub6']; ?></td>
                  <td align="center"><?php echo $data['mark6']; ?></td>
                           
                </tr>
                <?php 
            }
                } ?>

              </tbody>
            </table>
            
	</tbody>
</table>
 </div>
        </div>
         
      </div>
    </section>
   
</form>
</body>
</html>