
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<?php
session_start();

if(!isset($_SESSION['login_id']))

{

    header("location:login");

}
?>


<!DOCTYPE html>
<html lang="zxx">

<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Subject An Education Category Flat Bootstrap Responsive website Template | Home :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
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
               <h1><a class="navbar-brand" href="index.html">
							
						</a></h1>

                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
								<li class="nav-item active">
									<a class="" href="not.php">
										<span class="sr-only"></span>
									</a>
								</li>
								<!-- <li class="nav-item mx-xl-4 mx-lg-3 my-lg-0 my-3">
									<a class="nav-link" href="view7.php">View Leave Form</a>
								</li> -->
								
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										View Attendance
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<!-- <a class="dropdown-item" href="add_teach_attendance.php">Add Attendance</a> -->
										<a class="dropdown-item" href="vw_st_attend.php">View Attendance</a>
										<div class="dropdown-divider"></div>
	
									</div>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										View Marks
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<!-- <a class="dropdown-item" href="add_teach_marks.php">Add Marks</a> -->
										<a class="dropdown-item" href="vw_st_attend.php">View Marks</a>
										<div class="dropdown-divider"></div>
	
									</div>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										View materials
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<!-- <a class="dropdown-item" href="add_material.php">Add Materials</a> -->
										<a class="dropdown-item" href="view_material.php">View Materials</a>
										<div class="dropdown-divider"></div>
	
									</div>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										View Student
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<!-- <a class="dropdown-item" href="add_stud.php">Add Student</a> -->
										<a class="dropdown-item" href="view_stud.php">View Student</a>
										<div class="dropdown-divider"></div>
	
									</div>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										View Department
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<!-- <a class="dropdown-item" href="add_depart.php">Add department</a> -->
										<a class="dropdown-item" href="view_depart.php">View Department</a>
										<div class="dropdown-divider"></div>
	
									</div>
								</li>
									<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										 View Sem
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<!-- <a class="dropdown-item" href="add_sem.php">Add sem</a> -->
										<a class="dropdown-item" href="view_sem.php">View sem</a>
										<div class="dropdown-divider"></div>
	
									</div>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										View Timetable
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<!-- <a class="dropdown-item" href="add_timetable.php">Add Timetable</a> -->
										<a class="dropdown-item" href="view_timetable.php">View Timetable</a>
										<div class="dropdown-divider"></div>
	
									</div>
								</li>

								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										View Subject
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<!-- <a class="dropdown-item" href="add_sub.php">Add Subject</a> -->
										<a class="dropdown-item" href="view_sub.php">View Subject</a>
										<div class="dropdown-divider"></div>
	
									</div>
								</li>
                               	
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										View Syllabus
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<!-- <a class="dropdown-item" href="add_syllabus.php">Add Syllabus</a> -->
										<a class="dropdown-item" href="view_syllabus.php">View Syllabus</a>
										<div class="dropdown-divider"></div>
	
									</div>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										View Assignment
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<!-- <a class="dropdown-item" href="assignment.php">Add Assignment</a> -->
										<a class="dropdown-item" href="view_assignment.php">View Assignment</a>
										<div class="dropdown-divider"></div>
	
									</div>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										View Links
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<!-- <a class="dropdown-item" href="add_link.php">Add Links</a> -->
										<a class="dropdown-item" href="view_links.php">View Links</a>
										<div class="dropdown-divider"></div>
	
									</div>
								</li>
								
								<li class="nav-item">
									<a class="nav-link" href="vw_feed.php">View Feedback</a>
								</li>
								
								
								
								
								<li class="nav-item">
									<a class="nav-link" href="logout.php">Logout</a>
								</li>
					</ul>
					</ul>
					</ul>
				</div>
			</nav>
        </header>
        <!-- //header -->

        <div class="container">
            <!-- banner-text -->
<center>
            <div class="banner-text">
            	<a href="add_teach_attendance.php" class="banner-button btn mt-md-5 mt-4">Attendance </a> &nbsp
            	<a href="add_teach_marks.php" class="banner-button btn mt-md-5 mt-4">Mark </a> &nbsp
            	<a href="add_material.php" class="banner-button btn mt-md-5 mt-4">Materials </a> &nbsp
            	<a href="add_stud.php" class="banner-button btn mt-md-5 mt-4">Students </a> &nbsp
            	<a href="add_depart.php" class="banner-button btn mt-md-5 mt-4">Department</a> &nbsp
            	<a href="add_sem.php" class="banner-button btn mt-md-5 mt-4">Semester </a> &nbsp
            	<a href="add_timetable.php" class="banner-button btn mt-md-5 mt-4">Timetable </a> &nbsp
            	<a href="add_sub.php" class="banner-button btn mt-md-5 mt-4">Subject </a> &nbsp
            	<a href="add_syllabus.php" class="banner-button btn mt-md-5 mt-4">Syllabus </a> &nbsp
            	<a href="assignment.php" class="banner-button btn mt-md-5 mt-4">Assignment </a> &nbsp
            	<a href="add_link.php" class="banner-button btn mt-md-5 mt-4">Youtube </a> &nbsp
            	<a href="st_assignments.php" class="banner-button btn mt-md-5 mt-4">student assignments</a> &nbsp
            </div>
            </div>
              
                
	

<!-- js -->
    <script src="js/jquery-2.2.3.min.js"></script>
<!-- //js -->
<!-- carousel(for feedback) -->
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function () {
			$('.owl-carousel').owlCarousel({
				loop: true,
				margin: 10,
				responsiveClass: true,
				responsive: {
					0: {
						items: 1,
						nav: true
					},
					600: {
						items: 2,
						nav: false
					},
					1000: {
						items: 3,
						nav: true,
						loop: false,
						margin: 20
					}
				}
			})
		})
	</script>
	
	<!-- //carousel(for feedback) -->
<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
		<script>
			$('.counter').countUp();
		</script>
<!-- //stats -->

    <!-- start-smooth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
    <!-- smooth-scrolling-of-move-up -->
    <script>
        $(document).ready(function () {
            /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
            };
            */

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <script src="js/SmoothScroll.min.js"></script>
    <!-- //smooth-scrolling-of-move-up -->
    <!-- Bootstrap core JavaScript
================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>