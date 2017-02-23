<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project_BillStatus.aspx.cs" Inherits="ISPROJ2_PrototypeMk2.Accounting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 132px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Gridview Content: all the items below, but can edit the &#39;Recieve Amount&#39; up to &#39;Remarks&#39;..<br />
        Percentage can be acquired but dividing recieve amount and recievable. (paid/remaining balances).<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <br />
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">Description</td>
                <td>Manual P.O</td>
                <td>SAP P.O.</td>
                <td>PPESI No.</td>
                <td>Percentage</td>
                <td>Recieve Amount</td>
                <td>Account Recievable</td>
                <td>Remarks</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="7">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Update" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        *note: this can also be applied to the &quot;Client&quot; second page, this is to view the balances of the projects they have with PPESI.</div>
    </form>
</body>
</html>
