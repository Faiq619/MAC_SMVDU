<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Patient.aspx.vb" Inherits="Patient" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  

<!-- Mirrored from themes.3rdwavemedia.com/college-green/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 18 Apr 2016 06:23:45 GMT -->
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
    <style>
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1000; /* Sit on top */
    padding-top: 200px; /* Location of the box */
    left: 0;
    top: 0;
    width:100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 40%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}
input[type=text] {
    width: 60%;
    padding: 10px;
  border: none;
  border-bottom: solid 2px #c9c9c9;
  transition: border 0.3s;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #6091ba;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 16px;
  padding: 5px;
  width: 90px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 1px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>


<body class="home-page">
    <div class="wrapper">
        <!-- ******HEADER****** -->
        <header class="header">
           
            <div class="header-main container">
                <h1 class="logo col-md-10 col-sm-4">
                    <a href="Default.aspx"><img id="logo" src="assets_native/images/logo.png" alt="Logo"></a>
                </h1><!--//logo-->
            <p>SMVDU Medical Aid Center</p>
            </div><!--//header-main-->
        </header><!--//header-->
        <!-- ******NAV****** -->
        <!--//main-nav-->
       
       



        <section id="service" class="home-section nopadding paddingtop-60">
            <div class="intro-content" style="margin-top:-100px">
                <div class="container">
                    <div class="row">
                                <div class="col-lg-6" style="width:75%">
                            <div class="form-wrapper">
                                <div class="wow fadeInRight" data-wow-duration="2s" data-wow-delay="0.2s">

                                    <div class="panel panel-skin" style="margin-left:300px;margin-top:50px">
                                        <div class="panel-heading">
                                            <h3 class="panel-title"><span class="fa fa-pencil-square-o"></span>See Your Report</h3>
                                        </div>
                                        <div class="panel-body">
                                            <form runat="server" class="lead">
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Report ID</label>
                                                            <asp:textbox runat="server" ID="rid" class="form-control input-md"/>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" Font-Size="XX-Small" ForeColor="Red" ControlToValidate="rid"></asp:RequiredFieldValidator>
                                                             </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Name</label>
                                                            <asp:textbox runat="server" ID="name" class="form-control input-md"/>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" Font-Size="XX-Small" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator>    
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <asp:Button ID="btnUpload" runat="server" Text="Add" OnClick="btnUpload_Click" class="btn btn-skin btn-block btn-lg" />
                                                
                                                

                                            </form>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
           </div>

                </div>

            </div>
            </section>

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

    <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
        <!-- Core JavaScript Files -->
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

<!-- Mirrored from themes.3rdwavemedia.com/college-green/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 18 Apr 2016 06:24:36 GMT -->
</html> 


