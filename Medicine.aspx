<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Medicine.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html lang="en">
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
        <header class="header">
           
            <div class="header-main container">
                <h1 class="logo col-md-10 col-sm-4">
                    <a href="Default.aspx"><img id="logo" src="assets_native/images/logo.png" alt="Logo"></a>
                </h1><!--//logo-->
            <p>SMVDU Medical Aid Center</p>
            </div><!--//header-main-->
        </header>
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
                        <li class="active"><a href="stock.aspx">stock</a></li>
                        <li><a href="checkout.aspx">checkout</a></li>
                        <li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Account<b class="caret"></b></a>
				  <ul class="dropdown-menu">
					<li id="myBtn"><a href="#">Change password</a></li>
					<li ><a href="#">Logout</a></li>	
				  </ul>
				</li>
                        </ul>
                </div><!--//navabr-collapse-->
            </div><!--//container-->
        </nav>
        <div id="myModal1" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <span class="close">×</span>
                <form >
                    <input type="text" id="oldp" name="oldp" placeholder="Old Password"><br><br>

                    <input type="text" id="newp" name="newp" placeholder="New Password"><br><br>
                <input type="text" id="cnewp" name="newp" placeholder="Confirm New Password"><br><br>
                    <button class="button"  value="mybtn12" id="mybtn12" type="submit" style="vertical-align:middle">
                        <span>Go</span>
                    </button>
                </form>
            </div>

       </div>
        <section id="intro" class="intro">
            <div class="intro-content">
                <div class="container">
                    <div class="row">
                        
                        <div class="col-lg-6" style="margin-left:300px">
                            <div class="form-wrapper">
                                <div class="wow fadeInRight" data-wow-duration="2s" data-wow-delay="0.2s">

                                    <div class="panel panel-skin">
                                        <div class="panel-heading">
                                            <h3 class="panel-title"><span class="fa fa-pencil-square-o"></span>Add to stock</h3>
                                        </div>
                                        <div class="panel-body">
                                            <form runat="server" class="lead">
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            
                                                            <asp:textbox runat="server" type="text" name="nod" id="nod"  class="form-control input-md" placeholder="Name Of Drug"/>
                                                            <asp:requiredfieldvalidator runat="server" ControlToValidate="nod" ErrorMessage="*required" ID="r1" ForeColor="Red" Font-Size="XX-Small" />
                                                             </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <asp:textbox runat="server" type="text" name="q" id="q"  class="form-control input-md" placeholder="Quantity"/>
                                                            <asp:requiredfieldvalidator runat="server" ControlToValidate="q" ErrorMessage="*required" ID="Requiredfieldvalidator1" ForeColor="Red" Font-Size="XX-Small" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            
                                                            <asp:textbox runat="server" type="text" name="bno" id="bno"  class="form-control input-md" placeholder="Batch No."/>
                                                            <asp:requiredfieldvalidator runat="server" ControlToValidate="bno" ErrorMessage="*required" ID="Requiredfieldvalidator2" ForeColor="Red" Font-Size="XX-Small" />
                                                             </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <asp:textbox runat="server" type="text" name="exp" id="exp"  class="form-control input-md" placeholder="Expiry Date"/>
                                                            <asp:requiredfieldvalidator runat="server" ControlToValidate="exp" ErrorMessage="*required" ID="Requiredfieldvalidator3" ForeColor="Red" Font-Size="XX-Small" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            
                                                            <asp:textbox runat="server" type="text" name="mrp" id="mrp"  class="form-control input-md" placeholder="M.R.P"/>
                                                            <asp:requiredfieldvalidator runat="server" ControlToValidate="mrp" ErrorMessage="*required" ID="Requiredfieldvalidator4" ForeColor="Red" Font-Size="XX-Small" />
                                                             </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <asp:textbox runat="server" type="text" name="srate" id="srate"  class="form-control input-md" placeholder="S.Rate"/>
                                                            <asp:requiredfieldvalidator runat="server" ControlToValidate="srate" ErrorMessage="*required" ID="Requiredfieldvalidator5" ForeColor="Red" Font-Size="XX-Small" />
                                                        </div>
                                                    </div>
                                                </div>
                                               
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            
                                                            <asp:textbox runat="server" type="text" name="vat" id="vat"  class="form-control input-md" placeholder="VAT"/>
                                                            <asp:requiredfieldvalidator runat="server" ControlToValidate="vat" ErrorMessage="*required" ID="Requiredfieldvalidator6" ForeColor="Red" Font-Size="XX-Small" />
                                                             </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <asp:textbox runat="server" type="text" name="amt" id="amt"  class="form-control input-md" placeholder="Amount"/>
                                                            <asp:requiredfieldvalidator runat="server" ControlToValidate="amt" ErrorMessage="*required" ID="Requiredfieldvalidator7" ForeColor="Red" Font-Size="XX-Small" />
                                                        </div>
                                                    </div>
                                                </div>
                                                 <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            
                                                            <asp:textbox runat="server" type="text" name="pfrom" id="pfrom"  class="form-control input-md" placeholder="Purchased From"/>
                                                            <asp:requiredfieldvalidator runat="server" ControlToValidate="pfrom" ErrorMessage="*required" ID="Requiredfieldvalidator8" ForeColor="Red" Font-Size="XX-Small" />
                                                             </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <asp:textbox runat="server" type="text" name="tn" id="tn"  class="form-control input-md" placeholder="Tin No."/>
                                                            <asp:requiredfieldvalidator runat="server" ControlToValidate="tn" ErrorMessage="*required" ID="Requiredfieldvalidator9" ForeColor="Red" Font-Size="XX-Small" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            
                                                            <asp:textbox runat="server" type="text" name="date" id="date"  class="form-control input-md" placeholder="Date"/>
                                                            <asp:requiredfieldvalidator runat="server" ControlToValidate="date" ErrorMessage="*required" ID="Requiredfieldvalidator10" ForeColor="Red" Font-Size="XX-Small" />
                                                             </div>
                                                    </div>
                                                </div>
                                               

                                                <asp:button runat="server" type="submit" Text="Add" id="add" value="button1" class="btn btn-skin btn-block btn-lg" OnClick="button1_click"/>

                                                

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
// Get the modal
var modal = document.getElementById('myModal');
var modal1 = document.getElementById('myModal1');
// Get the button that opens the modal
var btn = document.getElementById("myBtn");
var btn12 = document.getElementById("mybtn12");
// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];


// When the user clicks the button, open the modal

btn.onclick = function () {
    modal1.style.display = "block";
}
// When the user clicks on <span> (x), close the modal

span.onclick = function () {
    modal1.style.display = "none";
}
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal1) {
        modal.style.display = "none";
        modal1.style.display = "none";
    }
}

btn12.onclick = function () {
    var p = document.getElementById("oldp");
    var q = document.getElementById("newp");
    var r = document.getElementById("cnewp");
    var x = p.value;
    var y = q.value;
    var z = r.value;
    if (x == null || x == "") {
        alert("old password must be filled out");
        //p.innerText= "";
        return false;
    }
    if (y == null || y == "") {
        alert("new password must be filled out");
        //q.innerText = "";
        return false;
    }
    if (z == null || z == "") {
        alert("new password must be confirmed");
        //q.innerText = "";
        return false;
    }
    if (y != z) {
        alert("passwords don't match");
        return false;
    }
}
</script> 
        </div>
</body>
</html>
