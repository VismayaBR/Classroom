<?php 
session_start();

include('connect.php'); 

if(!isset($_SESSION['login_id']))
{
  header("location: teacher.php");  
}
if(isset($_POST))
    {
      $depart=$_POST['depart'];
      $sem_id=$_POST['sem_id'];
    
    $name=mysqli_query($con,"SELECT * FROM tbl_student JOIN tbl_login ON tbl_login.login_id=tbl_student.login_id JOIN tbl_department ON tbl_department.department_id=tbl_student.department_id JOIN tbl_sem ON tbl_sem.sem_id =tbl_student.sem_id WHERE tbl_student.department_id='$depart'AND tbl_student.sem_id='$sem_id'");
   }
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
               <h1><a class="navbar-brand" >WELCOME TO OUR COLLEGE
							<span> K D COLLEGE</span>
						</a></h1>

                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
							<!-- 	<li class="nav-item active">
									<a class="nav-link" href="teacher.php">Home
										<span class="sr-only">(current)</span>
									</a>
								</li> -->
								<!--<li class="nav-item mx-xl-4 mx-lg-3 my-lg-0 my-3">
									<a class="nav-link" href="about.html">About Us</a>
								</li>
								<li class="nav-item dropdown">
									 <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										REGISTER
									</a> 
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="regi.html">STUDENT REGISTER </a>
										<a class="dropdown-item" href="pare.html">PARENT REGISTER </a>
										<div class="dropdown-divider"></div>

										<a class="dropdown-item" href="regi.html">ADMIN</a>
										
									</div>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="contact.html">Contact Us</a>
								</li>-->
					</ul>
				</div>
			</nav>
        </header>





<h1 align="center"><</h1></br></br>
<section class="content">
      <div class="container-fluid">

        <div class="card">
            
            <!-- /.card-header -->
            <div class="card-body">
<table id="category_table" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th style="text-align: center;">Sl No</th>
                  <th style="text-align: center;">Name</th>
                  <th style="text-align: center;">Email</th>
                  <th style="text-align: center;">MobileNo</th>
                  <th style="text-align: center;">Address</th>
                  <th style="text-align: center;">RegNo</th>
                  <th style="text-align: center;">RollNo</th>
                  <th style="text-align: center;">Department</th>
                  <th style="text-align: center;">Sem</th>
                  <th style="text-align: center;">Guardian</th>
                  <th style="text-align: center;">Username</th>
                   <th style="text-align: center;">Action</th>
                </tr>
                </thead>

                <tbody>

                <?php $i = 0; while($data = mysqli_fetch_assoc($name))
                {
                  $i++;
                ?>
                <tr>
                  <td align="center"><?php echo $i; ?></td>
                  <td align="center"><?php echo $data['stud_name']; ?></td>
                  <td align="center"><?php echo $data['stud_email']; ?></td>
                  <td align="center"><?php echo $data['stud_mob']; ?></td>
                  <td align="center"><?php echo $data['stud_address']; ?></td>
                  <td align="center"><?php echo $data['reg_no']; ?></td>
                  <td align="center"><?php echo $data['roll_no']; ?></td>
                  <td align="center"><?php echo $data['dpt_name']; ?></td>
                  <td align="center"><?php echo $data['sem']; ?></td>
                  <td align="center"><?php echo $data['stud_guardian']; ?></td>
                  <td align="center"><?php echo $data['username']; ?></td>

                  <td>
                    <?php
                   
                    if($data['status']==0)

                    {
                      ?>

                  <a href="aprove.php?edit_id=<?php echo $data['login_id']; ?>">Approve</a> / <a href="disaprove.php?edit_id=<?php echo $data['login_id']; ?>" onclick="return confirm('Do you want to delete?');" >Disapprove</a>               
                
                <?php } ?>
                <?php
                 if($data['status']==1)
                    {
                      ?>
                      <a href="">aproved</a>
                      <?php
                    }
                    ?>
                    <?php
                     if($data['status']==2)
                    {
                      ?>
                      <a href="">Rejected</a>
                      <?php
                    }
                    ?>
                   <?php
                 }
                 ?>
                    </td>

              </tbody>
            </table>
             </div>
        </div>
         
      </div>
    </section>
</body>
</html>