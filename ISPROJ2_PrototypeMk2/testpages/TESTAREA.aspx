<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TESTAREA.aspx.cs" Inherits="ISPROJ2_PrototypeMk2.testpages.TESTAREA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 434px;
        }
    </style>
    <script src="../../Scripts/jquery-1.3.2.min.js" language="javascript" type="text/javascript"/>
    <script src="../../Scripts/jquery-ui-1.7.1.custom.min.js" type="text/javascript"/>
</head>
<body>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $("[src*=plus]").live("click", function () {
        $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
        $(this).attr("src", "images/minus.png");
    });
    $("[src*=minus]").live("click", function () {
        $(this).attr("src", "images/plus.png");
        $(this).closest("tr").next().remove();
    });
</script>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ISPROJ2ConnectionString %>" SelectCommand="SELECT [Pr_Title], [Supervisor], [Client], [Pr_Lead] FROM [Project]"></asp:SqlDataSource>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
    <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="False" CssClass="Grid"
    DataKeyNames="Pr_Title" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <img alt = "" style="cursor: pointer" src="images/plus.png" />
                <asp:Panel ID="pnlOrders" runat="server" Style="display: none">
                    <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="false" CssClass = "ChildGrid">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="OrderId" HeaderText="Order Id" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="OrderDate" HeaderText="Date" />
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField ItemStyle-Width="150px" DataField="Pr_Title" HeaderText="Contact Name" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Pr_Title" HeaderText="City" />
    </Columns>
</asp:GridView>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
&nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                <input type="text" value="9/23/2009" style="width: 100px;" readonly="readonly" name="Date" id="Date" class="hasDatepicker"/></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Pr_Title" HeaderText="Pr_Title" SortExpression="Pr_Title" />
                <asp:BoundField DataField="Supervisor" HeaderText="Supervisor" SortExpression="Supervisor" />
                <asp:BoundField DataField="Client" HeaderText="Client" SortExpression="Client" />
                <asp:BoundField DataField="Pr_Lead" HeaderText="Pr_Lead" SortExpression="Pr_Lead" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
