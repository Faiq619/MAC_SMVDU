<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PReports.aspx.vb" Inherits="PReports" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
     <title>Admin|Mac</title>
    <!-- Meta -->
    <meta charset="utf-8">
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">    
   <!-- <link rel="stylesheet" type="text/css" href="css/button.css">-->
    <!--copied-->
    <!-- css -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="plugins/cubeportfolio/css/cubeportfolio.min.css">
    <link href="css/nivo-lightbox.css" rel="stylesheet" />
    <link href="css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
    <link href="css/owl.carousel.css" rel="stylesheet" media="screen" />
    <link href="css/owl.theme.css" rel="stylesheet" media="screen" />
    <link href="css/animate.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet">

    <!-- boxed bg -->
    <link id="bodybg" href="bodybg/bg1.css" rel="stylesheet" type="text/css" />
    <!-- template skin -->
    <link id="t-colors" href="color/default.css" rel="stylesheet">
    <!--copied-->
     <!-- Global CSS -->
    <!--<link rel="stylesheet" href="New folder/css/style.css">-->
    <!-- Plugins CSS -->    
     
    <!-- Theme CSS -->  
    <link id="theme-style" rel="stylesheet" href="assets_native/css/styles.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>-->
</head>
<body>
   <div class="wrapper">
        <header class="header">
           
            <div class="header-main container">
                <h1 class="logo col-md-10 col-sm-4">
                    <a href="Default.aspx"><img id="logo" src="assets_native/images/logo.png" alt="Logo"></a>
                </h1><!--//logo-->
            <p>SMVDU Medical Aid Center</p>
            </div><!--//header-main-->
        </header>
       
     <div class="panel panel-skin" style="margin-bottom:0px">
                                        <div class="panel-heading">
                                            <h3 class="panel-title" style="font-size:30px"><span class="fa fa-pencil-square-o"></span>Pending Reports</h3>
                                        </div>
                                        <div class="panel-body" style="margin-left:500px">
    <form id="form1" runat="server" class="lead" style="font-size:20px">
<div>
<asp:PlaceHolder id="PlaceHolder1" runat="server"></asp:PlaceHolder>
</div>
</form>

                                        </div>

     </div>
       <footer>

            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <div class="wow fadeInDown" data-wow-delay="0.1s">
                            <div class="widget">
                                <h5>About Smvdu MAC</h5>
                                <p id="test">
                                    SMVDU has reasonably adequate Mediacal Aid Center providing services to all the employees and students of the university.Services are also extended to all the residents of the nearby villages, CRPF Camp personnels and DPS students. 
                                </p>
                            </div>
                        </div>
                        <div class="wow fadeInDown" data-wow-delay="0.1s">
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-14">
                        <div class="wow fadeInDown" data-wow-delay="0.1s">
                            <div class="widget">
                                <h5>Medical Aid Center</h5>
                                <p id="test">
                                   Either walk in or contact us
                                </p>
                                <ul>
                                    <li>
                                        <span class="fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-calendar-o fa-stack-1x fa-inverse"></i>
                                        </span> Monday - Saturday, 8am to 10pm
                                    </li>
                                    <li>
                                        <span class="fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-phone fa-stack-1x fa-inverse"></i>
                                        </span> +62 0888 904 711
                                    </li>
                                    <li>
                                        <span class="fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-envelope-o fa-stack-1x fa-inverse"></i>
                                        </span> smvdu_mac@smvdu.ac.in
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="wow fadeInDown" data-wow-delay="0.1s">
                            <div class="widget">
                                <h5>Our location</h5>
                                <p id="test">SMVD University, Kakryal, Katra, Distt.Reasi, Jammu and Kashmir</p>
                                <p id="tester">182320</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         </footer>
          <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/jquery.scrollTo.js"></script>
        <script src="js/jquery.appear.js"></script>
        <script src="js/stellar.js"></script>
        <script src="plugins/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/nivo-lightbox.min.js"></script>
        <script src="js/custom.js"></script>
       </div>
</body>
</html>
