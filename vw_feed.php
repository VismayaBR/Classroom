<?php 
session_start();

include('connect.php'); 

if(!isset($_SESSION['login_id']))
{
  header("location: admin.php");  
}

$query_ret = mysqli_query($con, "SELECT * FROM tbl_feedback JOIN tbl_login ON tbl_feedback.login_id=tbl_login.login_id");

?>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Subject An Education Category Flat Bootstrap Responsive website Template | Home :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
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
               <h1><a class="navbar-brand" href="index.php">WELCOME TO OUR COLLEGE
							<span> SVPK COLLEGE</span>
						</a></h1>

                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
								<li class="nav-item active">
									<a class="nav-link" href="teacher.php">Home
										<span class="sr-only">(current)</span>
									</a>
								</li>
								
					</ul>
				</div>
			</nav>
        </header>





<h1 align="center"><</h1></br></br>
<section class="content">
      <div class="container-fluid">

        <div class="card">
            
            <!-- /.card-header -->
            <div class="card-body">
<table id="category_table" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th style="text-align: center;">Sl No</th>
                  <th style="text-align: center;">Name</th>
                  <th style="text-align: center;">Feedback</th>
                  <th style="text-align: center;">Action</th>
                </tr>
                </thead>

                <tbody>

                <?php $i = 0; while($data = mysqli_fetch_assoc($query_ret))
                {
                  $i++;
                ?>
                <tr>
                  <td align="center"><?php echo $i; ?></td>
                  <td align="center"><?php echo $data['username']; ?></td>
                  <td align="center"><?php echo $data['feedback']; ?></td>
                  <td align="center"><a href="reply_feed.php?sc_id=<?php echo $data['login_id']; ?>">Reply</a></td>     
                 
                                  
                </tr>
                <?php } ?>

              </tbody>
            </table>
             </div>
        </div>
         
      </div>
    </section>
</body>
</html>