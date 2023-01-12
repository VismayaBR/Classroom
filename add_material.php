
<?php
session_start();
 include 'connect.php';
 
            $sql="select * from tbl_student";
                $result2=mysqli_query($con,$sql);



 if(isset($_POST['sub']))
{

$depart=$_POST['depart'];

$sem_id=$_POST['sem'];

$head=$_POST['heading'];

$file=$_FILES['f1']['name'];


if($file !="")
                  {
                      $filearray=pathinfo($_FILES['f1']['name']);
                     // var_dump($filearray);exit;
                      $file1=rand();
                      $file_ext=$filearray["extension"];

                          if(check_ext($file_ext))
                              {
                                    $filenew=$file1.".".$file_ext;
                                    move_uploaded_file($_FILES['f1']['tmp_name'],"material/".$filenew);
                                    $BASE_URL = "http://".getHostByName(getHostName())."online_classroom/material/".$filenew;
                              }
                          else
                              {
                                    echo "<script> alert('please check file extension pdf only')</script>";
                              }
        
                   }
                   mysqli_query($con,"INSERT INTO tbl_material(department_id,sem_id,heading,file,file_path) VALUES ('$depart','$sem_id','$head','$filenew','$BASE_URL')");

                   echo "<script>alert('uploaded');</script>";
                   echo "<script>window.location.href='teacher.php';</script>";



}
function check_ext($f_ext)
      {
        $allowed= array('pdf','PDF');
        if(in_array($f_ext,$allowed))
        {
          return true;
        }
        else
        {
          return false;
        }
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
    <div class="banner6">
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary pt-3">
               <h1><a class="navbar-brand" >MATERIALS
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
                            <h4 class="mb-4 text-left"> Upload material</h4>
                            <form  method="post" enctype="multipart/form-data">
                              <?php
                              include "connect.php";
                              /*if(isset($_POST))
                              {
                                $h=$_POST['sem'];
                              }*/
                              ?>
                               <div class="form-group">
                                    <label>Department</label>
                                   <select  name="depart" class="form-control first once_select" required>
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
                                   <select  name="sem" class="form-control first once_select" required>
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
                                   <label class="col-form-label" for="inputDefault">Heading</label>
                   <input type="text" name="heading" required>
                                  
        
                   </div>
                                
                                <div class="form-group">
                                   <label class="col-form-label" for="inputDefault">Upload material</label>
                   <input type="file" name="f1" required>
                                  
        
                   </div>
            
                            <div class="input-group1">
                                    <input class="form-control" name="sub" type="submit" value="Submit">
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






