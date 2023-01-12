
<?php
session_start();
 include 'connect.php';
 
            $sql="select * from tbl_student";
                $result2=mysqli_query($con,$sql);

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
    <div class="banner6">
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary pt-3">
               <h1><a class="navbar-brand" href="index.php">MARKS
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
        <div class="container">
            <!-- banner-text -->
            <div class="banner-text">
                <div class="slider-info">
                    <div class="container-fluid">
                
                    <div class="col-md-12 main_grid_contact">
                        <div class="form">
                            <h4 class="mb-4 text-left">INTERNAL EXAM RESUILTS</h4>
                            <form action="add_internal.php" method="post">
                              <?php
                              include "connect.php";
                              /*if(isset($_POST))
                              {
                                $h=$_POST['sem'];
                              }*/
                              ?>
                               <div class="form-group">
                                    <label>Department</label>
                                   <select  name="depart" class="form-control first once_select">
                <option value="">Select Department:</option>
                <?php
                include 'connect.php';
                $sql="select * from tbl_department";
                $result=mysqli_query($con,$sql);
                while($row=mysqli_fetch_array($result))
                {
                     echo "<option value='". $row['department_id'] ."'>" .$row['dpt_name'] ."</option>" ;
                }

                ?>    
            </select>

         
                                
                               <br/>
                               <br/>
                               </div>
                              <div class="form-group">
                                    <label>Semester</label>
                                   <select onchange="displaySubject(this.value)" name="sem" class="form-control first once_select">
                <option value="">Select semester:</option>
                <?php
                include 'connect.php';
                $sql="select * from tbl_sem";
                $result=mysqli_query($con,$sql);
                while($row=mysqli_fetch_array($result))
                {
                     echo "<option value='". $row['sem_id'] ."'>" .$row['sem'] ."</option>" ;
                }

                ?>    
            </select>

         
                                
                               <br/>
                               <br/>
                               </div>
                                
                                <div class="form-group">
                                   <label class="col-form-label" for="inputDefault">Register Number</label>
                    <select class="form-control" id="a" name="regname" onchange="displayName(this.value)" required>

                                     <!--  <label>Register Number</label> -->               
                <option value="">Select register number:</option>
                
                <?php
               
                while($row=mysqli_fetch_array($result2))
                {

                ?>
                    <option value="<?php echo $row['reg_no']; ?>"><?php echo $row["reg_no"];?></option>
                    

                <?php }

                ?>    
            </select>
                                  
            <div class="form-group" 
                id="name_id">
                <label>User Name</label>
                    <input class="form-control" type="text" name="name" >
                                                 
              </div>  
        <span id="subject"> 
        </span> 

            
                            <div class="input-group1">
                                    <input class="form-control" type="submit" value="Submit">
                                </div>
                               
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
     <!-- //banner-text -->
     <!--banner form-->

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
     <script type="text/javascript">
      function displayName(id)
      {
        
        jQuery.ajax({
        type: "POST",
       url: "showname.php",
       dataType: 'html',
       data: { id:id },
       success: function(fv)
       {
       
               if(fv)
               {
                   
                   $("#name_id").html(fv);
               }
               
       },
       error:function(fv) {
                   
                   $("#name_id").html("Failed Please try again");            
               }
           });
       };

        
      

    </script>
     <script type="text/javascript">
      function displaySubject(id)
      {
        
        jQuery.ajax({
        type: "POST",
        url: "sub_ajax2.php",
        dataType: 'html',
        data: { sem_id:id },
        success: function(fv)
         {
         
           if(fv)
               {
                   
                   $("#subject").html(fv);
               }
               
       },
       error:function(fv) {
                   
                   $("#subject").html("Failed Please try again");            
               }
           });
       };

        
      

    </script>
</body>
</html>






