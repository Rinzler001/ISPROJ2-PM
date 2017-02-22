<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ISPROJ2_PrototypeMk2.About" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> About Us | Prime Power Energie </title>
    <link href="css/home.css" rel="stylesheet" type="text/css" />

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/about.css" rel="stylesheet">

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
                <h2>Company Profile</h2>
                <p>Prime Power Energie System, Inc. was formed by a group of engineers with more 
                   than nineteen (19) years of experience in their own respective mechanical and electrical expertise 
                   who had embarked on new innovative and creative platform in the engineering and architectural field. 
                   The team is very inspired and enhanced by dedicated personnel starting from the Company’s board of 
                   directors down to the management and technical staff all working cohesively to promote and project 
                   value-added solutions as well as crafting competitive pricing structure to suit your company’s 
                   requirement and needs.
                </p>

       
                <h2>Mission Vision</h2>
                <p>
                    Prime Power is shaped in alliance and in sync of promoting a better but advantageous offering of 
                    products and services with flexible value-added Green-initiated Engineering solution combining 
                    both unique design and innovative adding brilliant engineering by integrating diverse and applying 
                    user friendly technologies. The Company offers alternative ideas in both engineering and architectural field.
                </p>

                <p>
                    Beyond the Company’s core competences is the services and after sales support program always striving forward with enthusiasm, 
                    sense of urgency and always a pride of true engineering excellence constantly challenging management to create a better, 
                    innovative and creative approaches to present and future needs of any company in search of new but productive and advantageous.
                </p>
            </div>
        </div>
            
                <h2>Organizational Chart</h2>
                <div class="orgchart"></div>
                    <center><img width="1100" height="800" class="img-responsive" src="images/orgchart.png" alt=""></center>
 
        
	       		
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
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