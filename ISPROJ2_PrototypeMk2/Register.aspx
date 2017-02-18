<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ISPROJ2_PrototypeMk2.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Register | Prime Power Energie</title>
    <link href="css/registration.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            height: 273px;
            width: 430px;
        }
        .auto-style2 {
            height: 51px;
            width: 176px;
        }
        .auto-style3 {
            width: 288px;
        }
        .auto-style4 {
            height: 51px;
            width: 288px;
        }
        .auto-style5 {
            margin-left: 10px;
            color: rgb(20, 9, 2);
            font-family: 'Calibri';
            font-weight: 600;
            width: 176px;
        }
    </style>
</head>
<body>
    <h1>Prime Power Energie</h1>
    <form id="form1" runat="server">
    <div class="PAGE">
    <div class="REGISTER">
        <table class="auto-style1">
            <tr>
                <td style="padding: 10px" class="auto-style5">EMAIL ADDRESS</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="padding: 10px" class="auto-style5">PASSWORD</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="padding: 10px" class="auto-style5">
                    FIRST NAME
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="padding: 10px" class="auto-style5">
                    LAST NAME
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">
                   
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" class="btn" Text="BACK" Width="80px" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" class="btn" Text="REGISTER" Width="100px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>

    </div>
    </div>
    </form>
</body>
</html>