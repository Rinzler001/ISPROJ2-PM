<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tables.aspx.cs" Inherits="user_admin_tables" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagPrefix="ajaxToolkit" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Bootstrap Admin Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="/css2/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/css2/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/font-awesome2/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">SB Admin</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu message-dropdown">
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-footer">
                            <a href="#">Read All New Messages</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li >
                        <a href="dashboard.aspx"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li class="active">
                        <a href="profile.aspx"><i class="fa fa-fw fa-bar-chart-o"></i> Account Maintenance</a>
                    </li>

                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Registration <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="reg-employee.aspx">Employee</a>
                            </li>
                            <li>
                                <a href="reg-client.aspx">Client</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="manualcontrol.aspx"><i class="fa fa-fw fa-table"></i> Manual Control </a>
                    </li>
                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Create a Project
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ISPROJ2ConnectionString2 %>" SelectCommand="SELECT [Cl_ID], [Comp_Name] FROM [Client]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ISPROJ2ConnectionString2 %>" SelectCommand="SELECT [Em_ID], [F_Name], [L_Name] FROM [Employee] WHERE ([Position] = @Position)">
            <SelectParameters>
                <asp:Parameter DefaultValue="5" Name="Position" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    <div>
    
        Welcome

        <asp:Label ID="lblAuth" runat="server"></asp:Label>

    </div>
    <div>
        
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">Project ID:
                    <br />
                    Project Title:
                    <br />
                    Client:&nbsp; 
                    <br />
                    Project Lead:&nbsp;&nbsp; </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtProjID" runat="server" Width="150px" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="txtProjTitle" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    <asp:DropDownList ID="DDClient" runat="server"  Width="150px" DataSourceID="SqlDataSource1" DataTextField="Comp_Name" DataValueField="Cl_ID">
                    </asp:DropDownList>
                    &nbsp;<asp:HyperLink ID="HyperLink1" runat="server">view detail</asp:HyperLink>
                    <br />
                    <asp:DropDownList ID="DDProjLead" runat="server"  Width="150px" DataSourceID="SqlDataSource2" DataTextField="F_Name" DataValueField="Em_ID">
                    </asp:DropDownList>
                    <br />
                </td>
                <td class="auto-style2">Start Date: <br />
                    End Date: <br />
                    Reference #:&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtStDate" runat="server" Width="150px" ReadOnly="False" Placeholder="Choose Date"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtStDate_CalendarExtender" runat="server" TargetControlID="txtStDate" Format="yyyy-MM-dd"/>
                    <br />
                    <asp:TextBox ID="txtEnDate" runat="server" Width="150px" ReadOnly="False" Placeholder="Choose Date"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtEnDate_CalendarExtender" runat="server" TargetControlID="txtEnDate" Format="yyyy-MM-dd"/>
                    <br />
                    <asp:TextBox ID="txtRefNum" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
        </table>
        
        <br />
        
        Project Description:
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:TextBox ID="txtPrDesc" runat="server" Height="110px" TextMode="MultiLine" Width="510px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <hr />
        DETAILS: (Tasks and Equipment)<br />
        <br />
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Add Item" Width="83px" />
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="839px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <hr />
        <br />
        Assigned to:&nbsp;&nbsp;<asp:GridView ID="GridView4" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AllowSorting="True" DataSourceID="SqlDataSource3" AutoGenerateColumns="False">
            <Columns>
                <asp:templatefield HeaderText="Select">
                    <itemtemplate>
                        <asp:checkbox ID="cbSelect" runat="server"></asp:checkbox>
                    </itemtemplate>
                </asp:templatefield>
                <asp:BoundField DataField="Em_ID" HeaderText="Em_ID" />
                <asp:BoundField DataField="F_Name" HeaderText="F_Name" />
                <asp:BoundField DataField="L_Name" HeaderText="L_Name" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style6">&nbsp;Details:&nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style5">Date: (Start-End)</td>
                <td>&nbsp;Pre-requisite task: (optional)</td>
            </tr>
            <tr>
                <td class="auto-style6">
        <asp:TextBox ID="txtTskDet" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style5">
        <asp:TextBox ID="txtTskSdate" runat="server" Width="80px"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="txtTskSdate_CalendarExtender" runat="server" TargetControlID="txtTskSdate" />
        <asp:TextBox ID="txtTskEdate" runat="server" Width="80px"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="txtTskEdate_CalendarExtender" runat="server" TargetControlID="txtTskEdate" />
                </td>
                <td>
        <asp:TextBox ID="txtTskPrq" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <!--<asp:Button ID="Button1" runat="server" Text="Add Task" OnClick="Button1_Click" />-->
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ISPROJ2ConnectionString2 %>" SelectCommand="SELECT [Em_ID], [F_Name], [L_Name] FROM [Employee] WHERE ([Position] = @Position)">
            <SelectParameters>
                <asp:Parameter DefaultValue="6" Name="Position" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <br />
        <table class="auto-style9">
            <tr>
                <td class="auto-style8">Tasks:</td>
                <td>Assigned per Task</td>
            </tr>
            <tr>
                <td class="auto-style8">
        <asp:GridView ID="GridView5" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
                </td>
                <td class="auto-style8">
        <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        
        <!--<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Create Project" />-->
        
        <br />
        <br />
        
    </div>
    
    </form>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="/js2/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/js2/bootstrap.min.js"></script>

</body>

</html>
