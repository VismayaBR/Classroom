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
               <h1><a class="navbar-brand" href="teacher.php">ATTENDANCE
							<span> </span>
						</a></h1>

                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                   <!--  <ul class="navbar-nav ml-auto">
								<li class="nav-item active">
									<a class="nav-link" href="LOG.html">Login
										<span class="sr-only">(current)</span>
									</a>
								</li>
								<li class="nav-item mx-xl-4 mx-lg-3 my-lg-0 my-3">
									<a class="nav-link" href="about.html">About Us</a>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
									    aria-expanded="false">
										REGISTER
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="regi.html">STUDENT REGISTER </a>
										
										<div class="dropdown-divider"></div>

										<a class="dropdown-item" href="regi.html">ADMIN</a>
										
									</div>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="contact.html">Contact Us</a>
								</li>
					</ul> -->
				</div>
			</nav>
        </header>


<br><br><br><br><br><h1 align="left" class="form_studss"><font color="brown">Attendance</font></h1></br>


    <form action="attendance2.php" method="post">
   <div class="row">
       
       <span  style="width:50px">  </span>
       <label>Date</label>
        <input class="form-control first"  type="DATE" name="adate" placeholder="" required="" style="width:300px; margin-left: 45px;"  >
         </div>
         
         <div class="row select_forms">
       <span  style="width:50px">  </span>
       <label>Subject</label>
         <select name="sub_id" class="form-control first" style="width:300px; margin-left: 22px;">
                <option value="">Subject:</option>
                <?php
                include 'connect.php';
            	$sem_id = $_POST["sem_id"];
                $sql="select * from tbl_semsubject where sem_id='$sem_id'";
                
                $result=mysqli_query($con,$sql);
                $row=mysqli_fetch_array($result);
                
                    echo "<option value='".$row['sub1']."'>".$row['sub1']."</option>" ;
                    echo "<option value='".$row['sub2']."'>".$row['sub2']."</option>" ;
                    echo "<option value='".$row['sub3']."'>".$row['sub3']."</option>" ;
                    echo "<option value='".$row['sub4']."'>".$row['sub4']."</option>" ;
                    echo "<option value='".$row['sub5']."'>".$row['sub5']."</option>" ;
                    echo "<option value='".$row['sub6']."'>".$row['sub6']."</option>" ;
                

                ?>    
            </select>
         </div>
        
      
            <span id="d">

<div class="card-body">
				<!--<form action="attendance2.php" method="post">-->
				<table border="3" style="width: 100%" bgcolor="#1FE1F1">
						<tr>
							<th width="25%">S/L</th>
							<th width="25%">Student Name</th>
							<th width="25%">Register Number</th>
							<th width="25%">Attendance</th>
						</tr>
						
						
							<?php
		include "connect.php";
		$dpt_id = $_POST["dpt_id"];
// 		$sl_no=array();
// 		$name=array();
// 		$reg_no=array();
// 		$attendance=array();
       $username = mysqli_query($con, "SELECT * FROM tbl_student WHERE department_id ='$dpt_id'");
		//$res1=mysqli_query($con,$username);
		if(mysqli_num_rows($username)>0)
		{
		    echo"<input type='hidden' name='dept' value='".$dpt_id."'>"; 
		    echo"<input type='hidden' name='sem' value='".$sem_id."'>";
		    $i=0;
			while ($row1=mysqli_fetch_array($username))
			 {
			 	
			 			
			 	?>
			 	
			 	<tr>
			 	   
			 			<td align="center"><font color="black" size="4" style="float: center"class="stud"  >
			 			<input type="text" name="sl_no[]" value="<?php echo $row1[0];?>" readonly>
			 	    	<!--<?php echo $row1[0];?>&nbsp;&nbsp;&nbsp;&nbsp;</font></td>-->
			 			<td align="center"><font color="black" size="4" style="float: center"class="stud">
			 			<input type="text" name="name[]" value="<?php echo $row1[6];?>" readonly>
			 			<!--<?php echo $row1[1];?>&nbsp;&nbsp;&nbsp;&nbsp;</font></td>-->
			 			<td align="center"><font color="black" size="4" style="float: center"class="stud" >
			 			<input type="text" name="reg_no[]" value="<?php echo $row1[4];?>" readonly>
			 			<!--<?php echo $row1[2];?>&nbsp;&nbsp;&nbsp;&nbsp;</font></td>-->
			 			
			 			    <td>
								<input type="radio" name="attendance[<?php echo $i;?>]" value="present">P
								<input type="radio" name="attendance[<?php echo $i;?>]" value="absent">A
									
							</td>
			 		
			 		</tr>
			 	
			 	
			 		<?php
			 		$i++;
			 			}
			 	
			 		}
			 		?>
		<td colspan="4" class="text-center">
								<input type="submit" name="submit" class="btn btn-primary px-5" value="Submit">
							</td>
						</tr>
					</table>
				
			</div>
			
			 		
			 		
			
			
		
	</tbody>
</table>
</span>
</form>
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
    <script type="text/javascript">
      function displayName(id)
      {
        
        jQuery.ajax({
        type: "POST",
       url: "show_stud.php",
       dataType: 'html',
       data: {d_id:id },
       success: function(fv)
       {
       
               if(fv)
               {
                   
                   $("#d").html(fv);
               }
               
       },
       error:function(fv) {
                   
                   $("#d").html("Failed Please try again");            
               }
           });
       };

        
      

    </script>
 
</body>

</html>