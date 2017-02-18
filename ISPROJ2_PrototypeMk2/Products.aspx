<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="ISPROJ2_PrototypeMk2.Products" %>

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
    <link href="css/products.css" rel="stylesheet">

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

        <div class="col-sm-12">
                <h2>Our Products</h2>
                <p>Prime Power is an established electrical and mechanical supplier and contractor for commercial and industrial buildings.  
                   The company offers products that are imported from different suppliers abroad.  
                   The company provides supplying and installation of electrical and mechanical products.
                </p>

        <div class="row">
            <div class="col-sm-6">
                <h2>Electrical Products</h2>
                <p> ●	Genset 5 Kva-3900 Kva Standby & Prime Rating <br />
                    ●	Diesel, Bunker, & Gas-Fired Power Plant <br />
                    ●	Transformer (Substation, Power, Pad Mounted, Cast Resin, Pole Mounted) <br />
                    ●	Busduct/Busway (LV-MV) <br />
                    ●	Synchronizing Panel (LV-MV) <br />
                    ●	High Voltage/ Low Voltage Switch Gear <br />
                    ●	Panel Board/Meter Center/CEB <br />
                    ●	KWHR Meter & Power Meter <br />
                    ●	Breakers/Ats/Mts/Capacitor Bank <br />
                    ●	Photoluminescent Safety Signages <br />
                </p>
                
            </div>

            <div class="col-sm-4">
                <h2>Mechanical Products</h2>
                <p> ●	Chillers (Air Cooled & Water Cooled) <br />
                    ●	Air conditioning (Vrf, Split-Type, Window) <br />
                    ●	Variable Frequency Drive, Motor Control Center Acoustic Attenuators Such AS: Acoustic Doors & Louvers Intake Silencer <br />
                    ●	Radiator Discharge Silencer <br />
                    ●	Design & Fabrication of Local Genset Sound Proofing Enclosure <br />
                    ●	Design & Fabrication of Critical Muffler, Fuel Day Tank And Storage Tank <br />
                    ●	Marine Genset <br />
                    ●	Others (Fuel & Water Separator System of Genset) <br />
                </p>
        </div>
 
        <!-- /.row -->
       
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