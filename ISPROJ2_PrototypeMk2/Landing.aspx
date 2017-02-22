<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="ISPROJ2_PrototypeMk2.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title> Login | Prime Power Energie </title>
    <link href="css/login.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .auto-style1 {
            margin-left: 10px;
            color: rgb(20, 9, 2);
            font-family: 'Calibri';
            font-weight: 600;
            width: 123px;
        }
        .auto-style2 {
            width: 123px;
        }
    </style>
</head>
<body>
    <h1>Prime Power Energie</h1>
    <form id="form1" runat="server">
    <div class="PAGE">
    <div class="LOGIN">
        <table style="width: 100%;">
            <tr>
                <td style="padding: 10px" class="auto-style1">
                    ACCOUNT ID
                </td>
                <td>
                    <asp:TextBox ID="txtAcct" runat="server" MaxLength="8" Width="170px"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td style="padding: 10px" class="auto-style1">
                    PASSWORD </td>
                <td>
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="170px"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style2">
                   
                </td>
                <td>
                    <div>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                    
                    <div id="buttons">
                    <asp:Button ID="Button1" runat="server" class="btn" Text="LOGIN" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" class="btn" Text="CANCEL" OnClick="Button2_Click1" />
                    </div>
                </td>
            </tr>
        </table>

    </div>
    </div>
    </form>
</body>
</html>