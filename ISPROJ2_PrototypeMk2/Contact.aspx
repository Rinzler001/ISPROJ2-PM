<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ISPROJ2_PrototypeMk2.Contact" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Contact Us | Prime Power Energie </title>
    <link href="css/home.css" rel="stylesheet" type="text/css" />

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/contact.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Homepage.aspx">PRIMS</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="Homepage.aspx">Home</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">About
                            <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="About.aspx">Company Overview</a></li>
                                <li><a href="Products.aspx">Products</a></li>
                                <li><a href="Services.aspx">Services</a></li>
                            </ul>
                        </li>
                    <li><a href="Contact.aspx">Contact</a></li>
                    <li><a href="Clients.aspx">Clients</a></li>
                    <li><a href="Partners.aspx">Partners</a></li>
                </ul>
                    
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="Landing.aspx">Log in</a></li>
                            </ul>
                        
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Image Background Page Header -->
    <!-- Note: The background image is set within the business-casual.css file. -->
    <header class="business-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="tagline">PRIME POWER ENERGIE SYSTEMS INC.</h1>
                </div>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">

        <hr>

        <div class="row">
            <div class="col-sm-12">
                <h2>Contact Us</h2>
                <p>We’d love to hear from you! Send us your queries about Prime Power Energie System’s products and services and we’ll get in touch with you soon.</p>

       
                <h2>Contact Information</h2>
                <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3 col-md-offset-1 col-lg-3 col-lg-offset-1 text-center content-header"> <center><img class="img-responsive" src="https://www.wyeth.com.ph/wp-content/themes/wyeth/images/wyeth-contact-us-icon_05.png"></center>
                        <h3>PHONE NUMBER</h3>
                            <a class="phone-number" href="tel:+6328846600">+632-5843398 </a> 
                </div>
                <div class="col-xs-12 col-sm-4 col-md-3 col-lg-4 text-center content-header"> <center><img class="img-responsive" src="https://www.wyeth.com.ph/wp-content/themes/wyeth/images/wyeth-contact-us-icon_10.png"></center>
                        <h3>LOCATION</h3>
                    <address>
                        10th Flr. Atlanta Center, Greenhills San Juan City Metro Manila
                    </address>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-3 col-lg-4 text-center content-header"> <center><img class="img-responsive" src="images/icon1.png"></center>
                        <h3>EMAIL ADDRESS</h3>
                        <a class="email" href="mailto:primepower@gmail.com">primepower@gmail.com</a>
                </div>
	       		
        <!-- /.row -->


        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <hr>
                    <p>Copyright &copy; Project Resource and Information Monitoring System 2017</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>

    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>