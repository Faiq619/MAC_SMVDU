﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <title>SMVDU | UMS</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="assets/plugins/animate.css">
    <link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">

    <!-- CSS Page Style -->
    <link rel="stylesheet" href="assets/css/pages/page_log_reg_v2.css">

    
</head>
<style>
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 35; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
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
    width: 80%;
}
/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
</style>
<body>
<!--=== Content Part ===-->
<div class="container">
    <!--Reg Block-->
    <div class="head reg-block1">
            <h1>Shri Mata Vaishno Devi University</h1>
            <p>Medical Aid center</p>
        </div>
    
    <div class="reg-block">
        <div class="reg-block-header">
            <h2>Sign In</h2>
        </div>
        <form id="form1" runat="server">
            <asp:label runat="server" ID="label" visible="false" ForeColor="Red" Text="*invalid credentials"/>
        <div class="input-group margin-bottom-20">
            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
            <asp:TextBox runat="server" type="text" class="form-control" placeholder="Email" id="TextBox1"/>
        </div>
        <div class="input-group margin-bottom-20" >
            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
            <asp:TextBox runat="server" type="text" class="form-control" placeholder="Password" id="TextBox2"/>
        </div>
        <hr>

        <div class="checkbox">
            <label>
                <input type="checkbox">
                <p>Always stay signed in</p>
            </label>
        </div>

        <div class="row">
            <div class="col-md-10 col-md-offset-1">
              <asp:button type="submit" runat="server" value="Log In" Text="login" class="btn-u btn-block" id="Button1"/>
            </div>
        </div><br>
        <p>Forget your Password ?</p>
        <p>No worries, <a class="color-green" href="#" id="myBtn">click here</a> to reset your password.</p>
            </form>
    </div>
    <!--End Reg Block-->
</div><!--/container-->
<!--=== End Content Part ===-->

    
    <div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">×</span>
    <p>Please fill the required fields</p>
	  <form class="reg-page" method="post" name="fpform" action="" onsubmit="fp()">
                    <div class="reg-header">
                        
                        
                    </div>


                    <label>Email Address <span class="color-red">*</span></label>
                    <input type="text" class="form-control margin-bottom-20" id="email" name="email">
					
					
					<label>Security Question<span class="color-red">*</span></label>
					<select class="form-control margin-bottom-20">
						
    					<option value="pet" >What is your pet name</option>
						<option value="phone">What is your first phone number</option>
					</select>
					
		  			<label>Your Answer</label>
		  <input type="text" class="form-control margin-bottom-20" name="answer">
					
                        <div class="col-lg-6 text-right">
                            <button class="btn-u" type="submit">Send</button>
                        </div>
                    
                </form>
	  
  </div>

</div>
	
<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

function fp() {
	
	
	if( document.fpform.email.value == "" )
         {
            alert( "Please provide your first name!" );
            document.fpform.email.focus() ;
            return false;
         }
	
	if( document.fpform.answer.value == "" )
         {
            alert( "Please provide your security answer!" );
            document.fpform.answer.focus() ;
            return false;
	}
}
</script>    
    
    
<!-- JS Global Compulsory -->
<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="assets/plugins/backstretch/jquery.backstretch.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
    });
</script>
<script type="text/javascript">
    $.backstretch([
      "assets/img/login1.jpg",
      "assets/img/login2.jpg",
      ], {
        fade: 1000,
        duration: 7000
    });
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>