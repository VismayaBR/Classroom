
<?php  
session_start();

include('connect.php');  

if(!isset($_SESSION['login_id']))
{
  header("location: teacher.php");  
}
$query_dpt = mysqli_query($con, "SELECT * FROM tbl_department WHERE department_id !='0'");
$query_sem = mysqli_query($con, "SELECT * FROM tbl_sem WHERE sem_id !='0'");

if(isset($_POST['submit']))
{   
    $depart_id = $_POST['depart'];
    $sem_id = $_POST['sem_id'];
    $reg_no = $_POST['reg_no'];
    $roll_no = $_POST['roll_no'];
  $s_name = $_POST['s_name'];
  $s_email = $_POST['s_email'];
  $s_phone = $_POST['s_phone'];
  $s_address = $_POST['s_address'];
  $s_guardian = $_POST['s_guardian'];
  $s_user = $_POST['s_user'];
  $s_pwd = $_POST['s_pwd'];
  $role="student";

mysqli_query($con, "INSERT INTO tbl_login(username,password,role)VALUES('$s_user','$s_pwd','$role')");
$login_id = mysqli_insert_id($con);

$query=mysqli_query($con, "INSERT INTO tbl_student(login_id,department_id,sem_id,reg_no,roll_no,stud_name,stud_email,stud_mob,stud_address,stud_guardian) VALUES ('$login_id','$depart_id','$sem_id','$reg_no','$roll_no','$s_name','$s_email','$s_phone','$s_address','$s_guardian')");



echo "<script>alert('Added successfully!');</script>";
echo "<script>window.location.href='teacher.php';</script>";}
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
               <h1><a class="navbar-brand" href="index.php">STUDENTS
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
									<a class="nav-link" href="teacher.php">BACK</a>
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
                                    <label class="my-2">Add Student</label>
                                 
                               <div class="form-group">
                                <select name="depart"  id="department" class="form-control">
                      <option value="">Select Department</option>
                      <?php while($qData = mysqli_fetch_assoc($query_dpt)) { ?>
                      <option value="<?php echo $qData['department_id'] ?>"><?php echo $qData['dpt_name']; ?></option>
                      <?php } ?>
                    </select>
                </div>

                               <div class="form-group">
                                <select name="sem_id"  id="sem" class="form-control">
                      <option value="">Select Semester</option>
                      <?php while($qData = mysqli_fetch_assoc($query_sem)) { ?>
                      <option value="<?php echo $qData['sem_id'] ?>"><?php echo $qData['sem']; ?></option>
                      <?php } ?>
                    </select>
                </div>

                               <div class="form-group">
                                    <input class="form-control" type="text" name="reg_no" placeholder="Register No" required=""></div>

                               <div class="form-group">
                                    <input class="form-control" type="text" name="roll_no" placeholder="Roll No" required=""></div>

                               <div class="form-group">
                                    <input class="form-control" type="text" name="s_name" placeholder="Student name" required=""></div>

                               <div class="form-group">
                                    <input class="form-control" type="text" name="s_email" placeholder="Email" required=""></div>

                               <div class="form-group">
                                    <input class="form-control" type="text" name="s_address" placeholder="Address" required=""></div>

                               <div class="form-group">
                                    <input class="form-control" type="text" name="s_guardian" placeholder="Guardian" required=""></div>

                               <div class="form-group">
                                    <input class="form-control" type="text" pattern="[1-9]{1}[0-9]{9}" name="s_phone" placeholder="MobileNo" required=""></div>

                               <div class="form-group">
                                    <input class="form-control" type="text" name="s_user" placeholder="Username" required=""></div>

                               <div class="form-group">
                                    <input class="form-control" type="password" name="s_pwd" placeholder="Password" required=""></div>

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