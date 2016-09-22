<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  

<!-- Mirrored from themes.3rdwavemedia.com/college-green/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 18 Apr 2016 06:23:45 GMT -->
<head>
    <title>SMVDU Medical Aid Center</title>
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
                                

<body class="home-page">
    <div class="wrapper">
        <!-- ******HEADER****** -->
        <header class="header">
           
            <div class="header-main container">
                <h1 class="logo col-md-10 col-sm-4">
                    <a href="index.html"><img id="logo" src="assets_native/images/logo.png" alt="Logo"></a>
                </h1><!--//logo-->
            <p>SMVDU Medical Aid Center</p>
                <!--<a href="#" class="myButton" style="float: right;
    margin-top: -40px;
    margin-right: 20px;">turquoise</a>-->
            </div><!--//header-main-->
        </header><!--//header-->
        <!-- ******NAV****** -->
        <nav class="main-nav" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button><!--//nav-toggle-->
                </div><!--//navbar-header-->
                <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#intro">Home</a></li>
                        <li><a href="#service">Service</a></li>
                        <li><a href="#doctor">Doctors</a></li>
                        <li><a href="#facilities">Facilities</a></li>
                        <li><a href="login.aspx">Login</a></li>
                    </ul>
                </div><!--//navabr-collapse-->
            </div><!--//container-->
        </nav><!--//main-nav-->
        <!-- ******CONTENT****** -->
      

        
       
        <section id="intro" class="intro">
            <div class="intro-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="wow fadeInDown" data-wow-offset="0" data-wow-delay="0.1s">
                                <h2 class="h-ultra">SMVDU Medical Aid Center</h2>
                            </div>
                            <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.1s">
                                <h4 class="h-light">We Provide <span class="color">best quality healthcare</span> for you</h4>
                            </div>
                            <div class="well well-trans">
                                <div class="wow fadeInRight" data-wow-delay="0.1s">

                                    <ul class="lead-list">
                                        <li><span class="fa fa-check fa-2x icon-success"></span> <span class="list"><strong>24x7 Availability</strong><br />We're available 24x7</span></li>
                                        <li><span class="fa fa-check fa-2x icon-success"></span> <span class="list"><strong>24x7 Ambulance Facility</strong><br />We're reliable</span></li>
                                        <li><span class="fa fa-check fa-2x icon-success"></span> <span class="list"><strong>Free Medication For Students</strong><br />We don't charge money to studets</span></li>
                                    </ul>

                                </div>
                            </div>


                        </div>
                        <div class="col-lg-6">
                            <div class="form-wrapper">
                                <div class="wow fadeInRight" data-wow-duration="2s" data-wow-delay="0.2s">

                                    <div class="panel panel-skin" style="margin-top:53px">
                                        <div class="panel-heading">
                                            <h3 class="panel-title"><span class="fa fa-pencil-square-o"></span>See Your Report</h3>
                                        </div>
                                        <div class="panel-body">
                                            <form runat="server" class="lead">
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Report ID</label>
                                                            <asp:textbox runat="server" type="text" name="first_name" id="rid1" class="form-control input-md"/>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" Font-Size="XX-Small" ForeColor="Red" ControlToValidate="rid1"></asp:RequiredFieldValidator>
                                                             </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>First Name</label>
                                                            <asp:textbox runat="server" type="text" name="last_name" id="first_name" class="form-control input-md"/>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" Font-Size="XX-Small" ForeColor="Red" ControlToValidate="first_name"></asp:RequiredFieldValidator>    
                                                        </div>
                                                    </div>
                                                </div>
                                                <asp:button runat="server" type="submit" text="submit" ID="submit" value="Submit" class="btn btn-skin btn-block btn-lg"/>

                                                

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

        <!-- /Section: intro -->
        

        <section id="callaction" class="home-section paddingtop-40">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="callaction bg-gray">
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="wow fadeInUp" data-wow-delay="0.1s">
                                        <div class="cta-text">
                                            <h3>In an emergency? Need help now?</h3>
                                           
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="wow lightSpeedIn" data-wow-delay="0.1s">
                                        <div>
                                            <a style="font-size:20px">Call Us: 9797999999</a>    
                                                                                    
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- Section: services -->
        <section id="service" class="home-section nopadding paddingtop-60">

            <div class="container">

                <div class="row">
                    <div class="col-sm-6 col-md-6">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <img src="img/dummy/img-1.jpg" class="img-responsive" alt="" />
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3">

                        <div class="wow fadeInRight" data-wow-delay="0.1s">
                            <div class="service-box">
                                <div class="service-icon">
                                    <span class="fa fa-stethoscope fa-3x"></span>
                                </div>
                                <div class="service-desc">
                                    <h5 class="h-light">Medical checkup</h5>
                                    
                                </div>
                            </div>
                        </div>

                        <div class="wow fadeInRight" data-wow-delay="0.2s">
                            <div class="service-box">
                                <div class="service-icon">
                                    <span class="fa fa-wheelchair fa-3x"></span>
                                </div>
                                <div class="service-desc">
                                    <h5 class="h-light">Nursing Services</h5>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="wow fadeInRight" data-wow-delay="0.3s">
                            <div class="service-box">
                                <div class="service-icon">
                                    <span class="fa fa-plus-square fa-3x"></span>
                                </div>
                                <div class="service-desc">
                                    <h5 class="h-light">Pharmacy</h5>
                                    
                                </div>
                            </div>
                        </div>


                   

                        <div class="wow fadeInRight" data-wow-delay="0.1s">
                            <div class="service-box">
                                <div class="service-icon">
                                    <span class="fa fa-h-square fa-3x"></span>
                                </div>
                                <div class="service-desc">
                                    <h5 class="h-light">Gyn Care</h5>
                                    
                                </div>
                            </div>
                        </div>

                        <div class="wow fadeInRight" data-wow-delay="0.2s">
                            <div class="service-box">
                                <div class="service-icon">
                                    <span class="fa fa-filter fa-3x"></span>
                                </div>
                                <div class="service-desc">
                                    <h5 class="h-light">Neurology</h5>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="wow fadeInRight" data-wow-delay="0.3s">
                            <div class="service-box">
                                <div class="service-icon">
                                    <span class="fa fa-user-md fa-3x"></span>
                                </div>
                                <div class="service-desc">
                                    <h5 class="h-light">Sleep Center</h5>
                                    
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </section>
        <!-- /Section: services -->
        <!-- Section: team -->
        <section id="doctor" class="home-section bg-gray paddingbot-60">
            <div class="container marginbot-50">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="wow fadeInDown" data-wow-delay="0.1s">
                            <div class="section-heading text-center">
                                <h2 class="h-bold">Doctors</h2>
                                
                            </div>
                        </div>
                        <div class="divider-short"></div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        

                        <div id="grid-container" class="cbp-l-grid-team">
                            <ul>
                                <li class="cbp-item psychiatrist" style="width:220px;height:260px">
                                    <a href="doctors/member1.html" class="cbp-caption cbp-singlePage">
                                        <div class="cbp-caption-defaultWrap">
                                            <img src="img/team/1.jpg" alt="" width="100%">
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                                    <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="doctors/member1.html" class="cbp-singlePage cbp-l-grid-team-name">Dr. Anju Sharma</a>

                                </li>
                                <li class="cbp-item cardiologist" style="width:220px;height:260px">
                                    <a href="doctors/member2.html" class="cbp-caption cbp-singlePage">
                                        <div class="cbp-caption-defaultWrap">
                                            <img src="img/team/2.jpg" alt="" width="100%">
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                                    <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="doctors/member3.html" class="cbp-singlePage cbp-l-grid-team-name">Dr. Supinder Singh</a>

                                </li>
                                <li class="cbp-item cardiologist" style="width:220px;height:260px">
                                    <a href="doctors/member3.html" class="cbp-caption cbp-singlePage">
                                        <div class="cbp-caption-defaultWrap">
                                            <img src="img/team/3.jpg" alt="" width="100%">
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                                    <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="doctors/member2.html" class="cbp-singlePage cbp-l-grid-team-name">Dr. swatgi V. </a>

                                </li>
                                <li class="cbp-item neurologist" style="width:220px;height:260px">
                                    <a href="doctors/member4.html" class="cbp-caption cbp-singlePage">
                                        <div class="cbp-caption-defaultWrap">
                                            <img src="img/team/4.jpg" alt="" width="100%">
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                                    <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="doctors/member4.html" class="cbp-singlePage cbp-l-grid-team-name">Dr.Tanvi Kalsotra</a>

                                </li>
                                <li id="new" class="cbp-item neurologist" style="width:220px;height:260px" >
                                    <a href="doctors/member5.html" class="cbp-caption cbp-singlePage">
                                        <div class="cbp-caption-defaultWrap">
                                            <img src="img/team/4.jpg" alt="" width="100%">
                                        </div>
                                        <div class="cbp-caption-activeWrap">
                                            <div class="cbp-l-caption-alignCenter">
                                                <div class="cbp-l-caption-body">
                                                    <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="doctors/member5.html" class="cbp-singlePage cbp-l-grid-team-name">Suchita Jain(Dietitian)</a>

                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <!-- /Section: team -->
        <!-- Section: works -->
        <section id="facilities" class="home-section paddingbot-60">
            <div class="container marginbot-50">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="wow fadeInDown" data-wow-delay="0.1s">
                            <div class="section-heading text-center">
                                <h2 class="h-bold">Our facilities</h2>
                               <h2>OPD</h2> <p>OPD facilities are available to all the inhabitants of the university.Emergency services are available round the clock</p>
                               <h2>Laboratory</h2><p>A well equipped laboratory with semi auto analyzer is functional</p>
                               <h2>Physiotherapy Unit</h2><p>A physiotherapy unit with all latest physiotherapy equipments</p>
                               <h2>Ambulance Services</h2><p>Ambulance services for referral round the clock in emergency cases</p>
                               <h2>Referral</h2><p>Referral to Govt. Medical College, Jammu/ASCOMS, Sidhra/CHC, Katra/ Shri Mata Vaishno Devi Narayana Super Speciality hospital, Kakryal in extreme cases</p>
                                <h2>Immunization</h2><p>Under Border Cluster Scheme, on every 4th thursday of the month, a team of qualified personnels of Health Dept. visit the campus to provide free of cost immunization</p>
                                <h2>Pharmacy</h2><p>A well stocked and 24x7 hours open pharmacy is situated at SMVDU Medical Aid Center</p>
                                <h2>Ward</h2><p>Separate wards for male and female indoor patients</p> 
                            </div>
                        </div>
                        <div class="divider-short"></div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="wow bounceInUp" data-wow-delay="0.2s">
                            <div id="owl-works" class="owl-carousel">
                                <div class="item"><a href="img/photo/1.jpg"  data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/1@2x.jpg"><img src="img/photo/1.jpg" class="img-responsive" alt="img"></a></div>
                                <div class="item"><a href="img/photo/2.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/2@2x.jpg"><img src="img/photo/2.jpg" class="img-responsive " alt="img"></a></div>
                                <div class="item"><a href="img/photo/3.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/3@2x.jpg"><img src="img/photo/3.jpg" class="img-responsive " alt="img"></a></div>
                                <div class="item"><a href="img/photo/4.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/4@2x.jpg"><img src="img/photo/4.jpg" class="img-responsive " alt="img"></a></div>
                                <div class="item"><a href="img/photo/5.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/5@2x.jpg"><img src="img/photo/5.jpg" class="img-responsive " alt="img"></a></div>
                                <div class="item"><a href="img/photo/6.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/6@2x.jpg"><img src="img/photo/6.jpg" class="img-responsive " alt="img"></a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        </div>
    
        <!-- ******FOOTER****** -->
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

    
    
    <!-- *****CONFIGURE STYLE****** -->  
    <!--<div class="config-wrapper hidden-xs">
        <div class="config-wrapper-inner">
            <a id="config-trigger" class="config-trigger" href="#"><i class="fa fa-cog"></i></a>
            <div id="config-panel" class="config-panel">
                <p>Choose Colour</p>
                <ul id="color-options" class="list-unstyled list-inline">
                    <li class="default active" ><a data-style="assets/css/styles.css" data-logo="assets/images/logo.png" href="#"></a></li>
                    <li class="green"><a data-style="assets/css/styles-green.css" data-logo="assets/images/logo-green.png" href="#"></a></li>
                    <li class="purple"><a data-style="assets/css/styles-purple.css" data-logo="assets/images/logo-purple.png" href="#"></a></li>
                    <li class="red"><a data-style="assets/css/styles-red.css" data-logo="assets/images/logo-red.png" href="#"></a></li>
                </ul><!--//color-options-->
               <!-- <a id="config-close" class="close" href="#"><i class="fa fa-times-circle"></i></a>
            </div><!--//configure-panel-->
        <!--</div><!--//config-wrapper-inner-->
   <!-- </div><!--//config-wrapper-->
 
    <!-- Javascript -->    
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
   
   

</body>

<!-- Mirrored from themes.3rdwavemedia.com/college-green/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 18 Apr 2016 06:24:36 GMT -->
</html> 

