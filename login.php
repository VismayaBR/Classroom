<?php 

session_start();
if(@$_SESSION['role']=='admin'){
  header('location:admin.php');
}

if(@$_SESSION['role']=='teacher'){
  header('location:teacher.php');
}

include('connect.php'); 

if(isset($_POST['btnLogin']))
{

  $email = $_POST['email'];
  $password = $_POST['password'];

  $query_login = mysqli_query($con, "SELECT * FROM tbl_login WHERE username = '$email' AND password = '$password'");


  if(mysqli_num_rows($query_login) > 0)
  {
    $row_data = mysqli_fetch_assoc($query_login);

            $name=$row_data['username'];
            $email=$row_data['password'];
            $type=$row_data['role'];

            $_SESSION['login_id'] = $row_data['login_id'];
            $_SESSION['role']=$type;
            $_SESSION['username']=$name;
            $_SESSION['password']=$email;
        
            if($type=='admin')
            {
                header("location:admin.php");
                if(isset($_SESSION['login_id']))
                     {
                      header("location: admin.php");  
                      }
            }
           
            
            
            if($type=='teacher')
            {
                header("location:teacher.php");
                if(isset($_SESSION['login_id']))
                     {
                      header("location: teacher.php");  
                      }
            }

            if($type=='student')
            {
                header("location:student.php");
                if(isset($_SESSION['login_id']))
                     {
                      header("location: student.php");  
                      }
            }

            
            
            
  

  }
  ?>
        <script type="text/javascript">
            alert("your username or password doesn't exist");
            window.location="login.php";
        </script>
        <?php

 /* else
  {
    echo "<script>document.getElementById('errUsername').innerHTML='Invalid Username or Password!'</script>";
  }*/

}

/*if(isset($_SESSION['login_id']))
{
  header("location: admin.php");  
}*/


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
               <h1><a class="navbar-brand" href="index.php">LOGIN
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
                                    <a class="nav-link" href="add_teacher.php">Register as a teacher?</a>
                                </li>
								<li class="nav-item">
									<a class="nav-link" href="index.php">BACK</a>
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
                     <div class="col-lg-6 main_grid_contact" >
                        <div class="form"  >

                            <h2>Login</h2><br>

                            
                            <form  method="post" align="left">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="email" onkeyup="clear_validation_err('errEmail');" name="email" placeholder="Username">
                                   <!--  <label>USERNAME</label>
                                    <input class="form-control" type="text" name="user" placeholder="" required=""> -->
                                </div>
                                <div class="form-group">
                                     <input type="password" class="form-control" onkeyup="clear_validation_err('errPassword');" id="password" name="password" placeholder="Password">
                                    <!-- <label>PASSWORD</label>
                                    <input class="form-control" type="password" name="pass" placeholder="" required=""> -->
                                </div>
                                
                                 <button type="submit" class="btn btn-primary btn-block btn-flat" onclick="return login_validation();" name="btnLogin" >SignIn</button>
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
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;

    if(email=="")
    {
      document.getElementById('errEmail').innerHTML = "Username required!";
      return false;

    }

    if(password=="")
    {
      document.getElementById('errPassword').innerHTML = "Password required!";

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