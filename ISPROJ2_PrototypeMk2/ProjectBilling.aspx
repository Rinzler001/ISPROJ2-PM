<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectBilling.aspx.cs" Inherits="ISPROJ2_PrototypeMk2.ProjectBilling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="proj_code" HeaderText="proj_code" SortExpression="proj_code" />
                <asp:BoundField DataField="proj_title" HeaderText="proj_title" SortExpression="proj_title" />
                <asp:BoundField DataField="Column1" HeaderText="Column1" SortExpression="Column1" />
                <asp:BoundField DataField="Column2" HeaderText="Column2" ReadOnly="True" SortExpression="Column2" />
                <asp:BoundField DataField="proj_actualEnd" HeaderText="proj_actualEnd" SortExpression="proj_actualEnd" />
            </Columns>
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ISPROJ2ConnectionString %>" SelectCommand="SELECT [proj_code], [proj_title], CONVERT(DATE,[proj_endDate], 120), [Personnel].[emp_fname] + ' ' + [Personnel].[emp_lname], [proj_actualEnd] FROM [Project] INNER JOIN [Personnel] ON [Personnel].[emp_user_id] = [Project].[proj_leader] WHERE ([status] = @status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="5" Name="status" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
        <p>
            View the details of a completed project for billing..</p>
        <p>
            fuck fuck fuck</p>
        <p>
            if session is good, gridview is invisible, and disabled. the BOM is displayed below..</p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateSelectButton="True" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="bom_no" HeaderText="BOM No." />
                    <asp:BoundField DataField="stockdescr" HeaderText="Item" />
                    <asp:BoundField DataField="bom_poNo" HeaderText="Manual PO" />
                    <asp:BoundField DataField="stock_code" HeaderText="PPESI No." />
                    <asp:BoundField DataField="stock_price" HeaderText="Cost" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateSelectButton="True">
            </asp:GridView>
        </p>
        <p>
        </p>
        <asp:Panel ID="Panel1" runat="server">
            <table runat="server" style="width: 100%;">
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
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
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
        </asp:Panel>
    </form>
</body>
</html>
