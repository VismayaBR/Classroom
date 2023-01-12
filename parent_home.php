
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<?php include'connect.php';
session_start();
$id=$_SESSION['login_id'];
$parent_query=mysqli_query($con,"SELECT * FROM tbl_parent WHERE login_id='$id'");
$p_data=mysqli_fetch_assoc($parent_query);
$p_id=$p_data['parent_id'];
// var_dump($id);exit();
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
               <h1><a class="navbar-brand" href="index.php">WELCOME </a></h1>

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
										Class Teacher
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										
										<a class="dropdown-item" href="view_class_teacher.php">View Teacher</a>
										<div class="dropdown-divider"></div>
	
									</div>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="view_cmnt.php">
											<?php
									 // $t_query=mysqli_query($con,"SELECT * FROM tbl_reply WHERE parent_id='$p_id'");
									 // $row=mysqli_fetch_assoc($t_query);
									 // $teacher_id=$row['teacher_id'];

											$query_message=mysqli_query($con,"SELECT * FROM tbl_reply WHERE parent_id='$p_id' AND seen='0'");
											$count=mysqli_num_rows($query_message);
												if($count>0)
												{
											?>

										<span class="badge" style="background-color: red"><?php echo $count;?></span>Message

										<?php } else{ ?>Message <?php } ?></a>
								</li>
									
								
								<!-- <li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										 Digital Notice Board
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="add_notice.php">Add Notice</a>
										<a class="dropdown-item" href="view_notice.php">View Notice</a>
										<div class="dropdown-divider"></div>
	
									</div>
								</li> -->
								
								
								
								
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
            <div class="banner-text">
                
	

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