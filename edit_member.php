
<?php  
session_start();

include('connect.php');  

if(!isset($_SESSION['login_id']))
{
  header("location: officestaff.php");  
}

$mem_id    = $_GET['sc_id'];
$query_ret = mysqli_query($con, "SELECT * FROM tbl_union JOIN tbl_login ON tbl_login.login_id=tbl_union.login_id WHERE tbl_union.login_id='$mem_id'");

$sem_data  = mysqli_fetch_assoc($query_ret);
if(isset($_POST['submit']))
{
  $u_name = $_POST['s_name'];
  $username = $_POST['s_user'];
  $u_email = $_POST['s_email'];
  $u_address = $_POST['s_address'];
  $u_mobile = $_POST['s_phone'];

$query_staff = mysqli_query($con, "UPDATE tbl_union SET u_name='$u_name',u_email='$u_email',u_address='$u_address',u_phn='$u_mobile'WHERE login_id='$mem_id'");

$staff=mysqli_query($con,"UPDATE tbl_login SET username='$username' WHERE login_id='$mem_id'");
echo "<script>alert('Updated successfully!');</script>";
echo "<script>window.location.href='view_member.php';</script>";
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
                                    <label class="my-2">Eidt UnionMember</label>
                                    <span id="errname" style="color: red;"></span>
                                     <input class="form-control" type="text" name="s_name" value="<?php echo $sem_data['u_name']; ?>" onkeyup="clear_validation_err('errname');" id="s_name"placeholder="Name" required="">
                                     <span id="errmail" style="color: red;"></span>
                                    <input class="form-control" type="text" name="s_email" value="<?php echo $sem_data['u_email']; ?>"onkeyup="clear_validation_err('errmail');" id="s_email" placeholder="Email" required="">
                                    <span id="erradd" style="color: red;"></span>
                                    <input class="form-control" type="text" name="s_address" value="<?php echo $sem_data['u_address']; ?>" onkeyup="clear_validation_err('erradd');" id="s_address"placeholder="Address" required="">
                                    <span id="errphn" style="color: red;"></span>
                                    <input class="form-control" type="text" name="s_phone" pattern="[1-9]{1}[0-9]{9}" value="<?php echo $sem_data['u_phn']; ?>"onkeyup="clear_validation_err('errphn');" id="s_phone" placeholder="MobileNo" required="">
                                    <span id="erruser" style="color: red;"></span>
                                    <input class="form-control" type="text" name="s_user" value="<?php echo $sem_data['username']; ?>"onkeyup="clear_validation_err('erruser');" id="s_user" placeholder="Username" required="">
                                </div>
                               
                                
                                <div class="input-group1">
                                    <input class="form-control" name="submit" type="submit" onclick="return validation();" value="UPDATE">
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
	<script type="text/javascript">
  function login_validation()
  {
    var staff_name = document.getElementById('s_name').value;
    var staff_address = document.getElementById('s_address').value;
    var staff_email = document.getElementById('s_email').value;
    var staff_mob = document.getElementById('s_phone').value;
    var username = document.getElementById('s_user').value;

    if(staff_name=="")
    {
      document.getElementById('errname').innerHTML = "Staff Name required!";
      return false;

    }if(staff_address=="")
    {
      document.getElementById('erradd').innerHTML = "Address required!";
      return false;

    }if(staff_mob=="" || staff_mob.length<10 || staff_mob.length>10)
    {
      document.getElementById('errphn').innerHTML = "Ente valid mobile number!";
      return false;

    }if(username=="")
    {
      document.getElementById('erruser').innerHTML = "Username required!";
      return false;

    }if(staff_email=="")
    {
      document.getElementById('errmail').innerHTML = "Email required!";
      return false;

    }

  }
</script>

<script type="text/javascript">
  function clear_validation_err(err)
  {
    document.getElementById(err).innerHTML = "";
  }
</script>

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