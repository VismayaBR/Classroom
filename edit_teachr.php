
<?php  
session_start();

include('connect.php');  

if(!isset($_SESSION['login_id']))
{
  header("location: officestaff.php");  
}
$edd    = $_GET['t_id'];

//$query_edd = mysqli_query($con, "SELECT * FROM tbl_timetable WHERE id ='$edd'");


$query_depart = mysqli_query($con, "SELECT * FROM tbl_department ");
$query_sem = mysqli_query($con, "SELECT * FROM tbl_sem ");
$query=mysqli_query($con, "SELECT * FROM tbl_subject");
$sub= mysqli_query($con,"SELECT * FROM tbl_subject ");
 $teach= mysqli_query($con,"SELECT * FROM tbl_teacher ");

                               
//$data=mysqli_fetch_assoc($query);

//$var=$data['subject_id'];
//var_dump($var);exit();

if(isset($_POST['submit']))
{
  $department = $_POST['department'];
  $sem = $_POST['semester'];
  $forenoon_sub = $_POST['t_sub'];
  $forenoon_teacher = $_POST['t_name'];
  $afternoon_sub = $_POST['t_sub2'];
  $afternoon_teacher = $_POST['t_name2'];
  


$querys=mysqli_query($con, "UPDATE tbl_timetable SET department= '$department',sem='$sem',forenoon_sub='$forenoon_sub',forenoon_teacher='$forenoon_teacher',afternoon_sub='$afternoon_sub',afternoon_teacher='$afternoon_teacher'");



echo "<script>alert('Added successfully!');</script>";
echo "<script>window.location.href='view_timetable.php';</script>";
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
    <div class="banner4">
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary pt-3">
               <h1><a class="navbar-brand" href="index.php">TEACHER
							<span> </span>
						</a></h1>

                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
								</li>
								<li class="nav-item">
									<a class="nav-link" href="admin.php">BACK</a>
								</li>
					</ul>
				</div>
			</nav>
        </header>
        <!-- //header -->
        <div class="container" align="left">
            <!-- banner-text -->
            <div class="banner-text" align="left">
                <div class="slider-info" align="LEFT">
                      <div class=" main_grid_contact" >
                        <div class="form"  >
                            
                            <form method="post" align="left">
                                <div class="form-group">
                                    <label class="my-2">Add Timetable</label>
                                    <!-- <input class="form-control" type="text" name="t_name" placeholder="Teacher name" required=""> -->
                                    <div class="form-group">
                                <select name="department"  id="departmment" class="form-control" required="">
                                      <option value="">Select Department</option>
                                      <?php while($qData = mysqli_fetch_assoc($query_depart)) { ?>
                                      <option value="<?php echo $qData['dpt_name'] ?>"><?php echo $qData['dpt_name']; ?></option>
                                      <?php } ?>
                                    </select>
                                </div>
                                    <div class="form-group">
                                <select name="semester"  id="sem" class="form-control" required="">
                                      <option value="">Select Semester</option>
                                      <?php while($qData = mysqli_fetch_assoc($query_sem)) { ?>
                                      <option value="<?php echo $qData['sem'] ?>"><?php echo $qData['sem']; ?></option>
                                      <?php } ?>
                                    </select>
                                </div>

                                    <select name="t_sub" onchange="clear_validation_err('errCateg');" id="category" class="form-control">
                                      <option value="">Select Subject</option>
                                      <?php while($qData = mysqli_fetch_assoc($query)) { ?>
                                      <option value="<?php echo $qData['sub_name'] ?>"><?php echo $qData['sub_name']; ?></option>
                                      <?php } ?>
                                    </select>
                                   
                                    <select name="t_name" onchange="clear_validation_err('errCateg');" id="category" class="form-control">
                                      <option value="">Select Teacher</option>
                                      <?php while($tData = mysqli_fetch_assoc($teach)) { ?>
                                      <option value="<?php echo $tData['t_name'] ?>"><?php echo $tData['t_name']; ?></option>
                                      <?php } ?>
                                    </select>
                                    <br>
                                     
                                    <select name="t_sub2" onchange="clear_validation_err('errCateg');" id="category" class="form-control">
                                      <option value="">Select Subject</option>
                                      <?php while($subject = mysqli_fetch_assoc($sub)) { ?>
                                      <option value="<?php echo $subject['sub_name'] ?>"><?php echo $subject['sub_name']; ?></option>
                                      <?php } ?>
                                    </select>
                                   <?php $teach= mysqli_query($con,"SELECT * FROM tbl_teacher ");

                                    ?>
                                    <select name="t_name2" onchange="clear_validation_err('errCateg');" id="category" class="form-control">
                                      <option value="">Select Teacher</option>
                                      <?php while($tData = mysqli_fetch_assoc($teach)) { ?>
                                      <option value="<?php echo $tData['t_name'] ?>"><?php echo $tData['t_name']; ?></option>
                                      <?php } ?>
                                    </select>
                                     
         

                                </div>
                               
                                
                                <div class="input-group1">
                                    <input class="form-control" name="submit" type="submit" value="ADD">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
				</div>
            </div>
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