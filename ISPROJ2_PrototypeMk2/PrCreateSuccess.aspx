<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrCreateSuccess.aspx.cs" Inherits="ISPROJ2_PrototypeMk2.PrCreateSuccess" %>
<meta http-equiv="Refresh" content="5; url=http://localhost:15357/Landing.aspx" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Project Created! Redirected back in 5 secs. Your ID:
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        &nbsp;(Logging out)</div>
        <p>
            if not click
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Landing.aspx">here</asp:HyperLink>
            .</p>
    </form>
</body>
</html>
