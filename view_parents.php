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
               <h1><a class="navbar-brand" >WELCOME TO OUR COLLEGE
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
                  <a class="nav-link" href="officestaff.php">BACK</a>
                </li>
                
                
          </ul>
				</div>
			</nav>
        </header>


<br><br><br><br><br><h1 align="left" class="form_studss"><font color="brown">VIEW PARENT DEATILS</font></h1></br>


    <form action="attendance2.php" method="post">
  
            <span id="d">

<section class="content">
      <div class="container-fluid">

        <div class="card">
            
            <!-- /.card-header -->
            <div class="card-body">
<table id="category_table" class="table table-bordered table-striped">
    <thead>
               <tr>
                  <th style="text-align: center;">Sl No</th>
                  <th style="text-align: center;">Parent Name</th>
                  <th style="text-align: center;">Mobile No</th>
                  <th style="text-align: center;">Student Name</th>
                  <th style="text-align: center;">Department</th>
                  <th style="text-align: center;">Sem</th>
                  <th style="text-align: center;">Reg No</th>
                </tr>
                </thead>
							<?php
		include "connect.php";
		
       $username = mysqli_query($con, "SELECT * FROM tbl_parent JOIN tbl_student ON tbl_parent.student_id=tbl_student.student_id JOIN tbl_department ON tbl_student.department_id=tbl_department.department_id JOIN tbl_sem ON tbl_student.sem_id=tbl_sem.sem_id");
		
		if(mysqli_num_rows($username)>0)
		{
		    
		    $i=0;
			while ($row1=mysqli_fetch_array($username))
			 {
			 	
			 			$i++;			 	?>
			 	
			 	<tr> 
                  <td align="center"><?php echo $i; ?></td>
                  <td align="center"><?php echo $row1['p_name']; ?></td>
                  <td align="center"><?php echo $row1['p_mob']; ?></td>
                  <td align="center"><?php echo $row1['stud_name']; ?></td>
                  <td align="center"><?php echo $row1['dpt_name']; ?></td>
                  <td align="center"><?php echo $row1['sem']; ?></td>  
                  <td align="center"><?php echo $row1['reg_no']; ?></td>     
                     
                </tr>
			 	   
			 		
			 	
			 		<?php
			 			}
			 	
			 		}
			 		?>
		<td colspan="4" class="text-center">
								
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