<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Checkout.aspx.vb" Inherits="Checkout" %>

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
                    <a href="index.html"><img id="logo" src="assets_native/images/logo.png" alt="Logo"></a>
                </h1><!--//logo-->
            <p>SMVDU Medical Aid Center</p>
            </div><!--//header-main-->
        </header>
        <section id="intro" class="intro">
            <div class="intro-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6" style="margin-left:300px">
                            <div class="form-wrapper">
                                <div class="wow fadeInRight" data-wow-duration="2s" data-wow-delay="0.2s">

                                    <div class="panel panel-skin">
                                        <div class="panel-heading">
                                            <h3 class="panel-title"><span class="fa fa-pencil-square-o"></span>Checkout</h3>
                                        </div>
                                        <div class="panel-body">
                                            <form runat="server" class="lead">
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Name of Drug</label><br>
                                                            <asp:DropDownList ID="D1" runat="server" style="width:250px; height:35px;" readonly="false" OnSelectedIndexChanged="D1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Quantity</label>
                                                            <asp:DropDownList ID="D2" runat="server" style="width:250px; height:35px;" readonly="false" AutoPostBack="true" OnSelectedIndexChanged="D2_SelectedIndexChanged"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div><!--
                                                <div id="one" class="hidden">
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Name of Drug</label><br>
                                                            <asp:DropDownList ID="DropDownList1" runat="server" style="width:250px; height:35px;" readonly="false" OnSelectedIndexChanged="Ddl3_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Quantity</label>
                                                            <asp:DropDownList ID="DropDownList2" runat="server" style="width:250px; height:35px;" readonly="false" AutoPostBack="true" OnSelectedIndexChanged="Ddl4_SelectedIndexChanged"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                    </div>
                                                <div id="two" class="hidden">
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Name of Drug</label><br>
                                                            <asp:DropDownList ID="DropDownList3" runat="server" style="width:250px; height:35px;" readonly="false" OnSelectedIndexChanged="Ddl5_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Quantity</label>
                                                            <asp:DropDownList ID="DropDownList4" runat="server" style="width:250px; height:35px;" readonly="false" AutoPostBack="true" OnSelectedIndexChanged="Ddl6_SelectedIndexChanged"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                    </div>
                                                <div id="three" class="hidden">
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Name of Drug</label><br>
                                                            <asp:DropDownList ID="DropDownList5" runat="server" style="width:250px; height:35px;" readonly="false" OnSelectedIndexChanged="Ddl7_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Quantity</label>
                                                            <asp:DropDownList ID="DropDownList6" runat="server" style="width:250px; height:35px;" readonly="false" AutoPostBack="true" OnSelectedIndexChanged="Ddl8_SelectedIndexChanged"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                    </div>
                                                <div id="four" class="hidden">
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Name of Drug</label><br>
                                                            <asp:DropDownList ID="DropDownList7" runat="server" style="width:250px; height:35px;" readonly="false" OnSelectedIndexChanged="Ddl9_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Quantity</label>
                                                            <asp:DropDownList ID="DropDownList8" runat="server" style="width:250px; height:35px;" readonly="false" AutoPostBack="true" OnSelectedIndexChanged="Ddl10_SelectedIndexChanged"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                    </div>
                                                <div id="five" class="hidden">
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Name of Drug</label><br>
                                                            <asp:DropDownList ID="DropDownList9" runat="server" style="width:250px; height:35px;" readonly="false" OnSelectedIndexChanged="Ddl11_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>Quantity</label>
                                                            <asp:DropDownList ID="DropDownList10" runat="server" style="width:250px; height:35px;" readonly="false" AutoPostBack="true" OnSelectedIndexChanged="Ddl12_SelectedIndexChanged"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>

                                                </div>-->
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>M.R.P</label>
                                                            <asp:textbox runat="server" type="text" name="mrp" id="mrp" ReadOnly="true" class="form-control input-md"/>
                                                        </div>
                                                    </div>
                                                    
                                                    
                                                        
                                                </div>
                                               <input type="button" id="btn" value="btn" class="btn btn-skin btn-block btn-lg"/>
                                                
                                           <!--    <asp:button runat="server" type="submit" id="submit" Text="checkout" value="Submit" class="btn btn-skin btn-block btn-lg"/>

                                              -->

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
       </div>
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
       <script>
           function DoClick() {
               if (document.getElementById('one').className == "hidden")
                   document.getElementById('one').className = "active";
               else if (document.getElementById('two').className == "hidden")
                   document.getElementById('two').className = "active";
               else if (document.getElementById('three').className = "hidden")
                   document.getElementById('three').className = "active";
               else if (document.getElementById('four').className == "hidden")
                   document.getElementById('four').className = "active";
               else if (document.getElementById('five').className = "hidden")
                   document.getElementById('five').className = "active";
           }
       </script>
       
</body>
</html>
