<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task_Update.aspx.cs" Inherits="ISPROJ2_PrototypeMk2.Task_Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 225px;
            text-align: center;
            vertical-align:top;
            align-content:center;
            
        }
        .auto-style2 {
            width: 222px;
        }
        .auto-style5 {
            text-align: center;
            height: 96px;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Hi!
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1" colspan="3">
                    &nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" HorizontalAlign="Center">
                    </asp:GridView>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="3">
                    Client:
                    <asp:Label ID="lblClient" runat="server"></asp:Label>
                    <br />
                    <br />
                    Details of Task:<br />
                    <asp:Label ID="lblTask" runat="server"></asp:Label>
                    <br />
                    <br />
                    Status:
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>--Choose--</asp:ListItem>
                        <asp:ListItem Value="2">Completed</asp:ListItem>
                        <asp:ListItem Value="3">Delayed</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    Remarks: <asp:TextBox ID="TextBox1" runat="server" Height="73px" TextMode="MultiLine" Width="218px"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Update Task" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
