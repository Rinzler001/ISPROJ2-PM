<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="ISPROJ2_PrototypeMk2.Homepage1" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Home | Prime Power Energie </title>
    <link href="css/home.css" rel="stylesheet" type="text/css" />

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-frontpage.css" rel="stylesheet">

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
                                <li><a href="Register.aspx">Register</a></li>
                                <li><a href="Landing.aspx">Log in</a></li>
                            </ul>
                        
            </div>
        </div>
    </nav>
            <!-- /.navbar-collapse -->
        
        <!-- /.container -->
    

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
            <div class="col-sm-8">
                <h2>About Us</h2>
                <p>Prime Power is shaped in alliance and in sync of promoting a better but advantageous offering of products and services with flexible value-added Green-initiated Engineering solution combining both unique design and innovative adding brilliant engineering by integrating diverse and applying user friendly technologies. The Company offers alternative ideas in both engineering and architectural field.</p>
                <p>Beyond the Company’s core competences is the services and after sales support program always striving forward with enthusiasm, sense of urgency and always a pride of true engineering excellence constantly challenging management to create a better, innovative and creative approaches to present and future needs of any company in search of new but productive and advantageous.</p>
                <p></p>
                
            </div>
            <div class="col-sm-4">
                <h2>Contact Us</h2>
                <address>
                    <strong>Mr. Santi Verceles</strong>
                    <br>10th Flr. Atlanta Center, Greenhills, San Juan City 
                    <br>Metro Manila, Philippines
                    <br>
                </address>
                <address>
                    <abbr title="Phone">P:</abbr> +639062563351 | +639228495818 
                    <br>
                    <abbr title="Email">E:</abbr> <a href="mailto:#">primepower@gmail.com</a>
                </address>
            </div>
        </div>
        <!-- /.row -->
        
        <hr>
        <h2>Our Team</h2>

        <div class="row">
            <div class="col-sm-3">
                <img class="img-circle img-responsive img-center" src="images/Team/manage-2.png" alt="">
                <h2>Project Leader</h2>
                <p>These marketing boxes are a great place to put some information. These can contain summaries of what the company does, promotional information, or anything else that is relevant to the company. These will usually be below-the-fold.</p>
            </div>
            <div class="col-sm-3">
                <img class="img-circle img-responsive img-center" src="images/Team/team-1.jpg" alt="">
                <h2>Developer</h2>
                <p>The images are set to be circular and responsive. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
            </div>
            <div class="col-sm-3">
                <img class="img-circle img-responsive img-center" src="images/Team/team-2.jpg" alt="">
                <h2>UI Designer</h2>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
            </div>
            <div class="col-sm-3">
                <img class="img-circle img-responsive img-center" src="images/Team/manage-4.png" alt="">
                <h2>QA Tester</h2>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Project Resource and Information Monitoring System 2017</p>
                </div>
            </div>
        </footer>
        <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>