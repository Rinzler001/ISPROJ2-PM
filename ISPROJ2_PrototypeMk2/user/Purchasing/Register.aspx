<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PRIME POWER ENERGIE | REGISTER</title>
    <link href="css/registration.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Project Resource and Information Monitoring System</h1>
    <form id="form1" runat="server">
    <div class="PAGE">
    <div class="REGISTER">
        <table class="auto-style1">
            <tr>
                <td style="padding: 10px" class="label">
                        EMAIL ADDRESS
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="padding: 10px" class="label">
                    PASSWORD
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="padding: 10px" class="label">
                    FIRST NAME
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="padding: 10px" class="label">
                    LAST NAME
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">
                   
                </td>
                <td class="auto-style3">
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
