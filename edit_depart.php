
<?php  
session_start();

include('connect.php');  

if(!isset($_SESSION['login_id']))
{
  header("location: admin.php");  
}

$depart_id    = $_GET['sc_id'];
$query_ret = mysqli_query($con, "SELECT * FROM tbl_department WHERE department_id='$depart_id'");

$depart_data  = mysqli_fetch_assoc($query_ret);
if(isset($_POST['submit']))
{
  $depart = $_POST['depart'];

$query_categ = mysqli_query($con, "UPDATE tbl_department SET dpt_name='$depart' WHERE department_id='$depart_id'");
echo "<script>alert('Department updated successfully!');</script>";
echo "<script>window.location.href='view_depart.php';</script>";
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
               <h1><a class="navbar-brand" href="index.php">DEPARTMENT
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
                                    <label class="my-2">Edit Department</label>
                                    <input class="form-control" type="text" value="<?php echo $depart_data['dpt_name']; ?>" name="depart" placeholder="" required="">
                                </div>
                               
                                
                                <div class="input-group1">
                                    <input class="form-control" name="submit" type="submit" value="UPDATE">
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