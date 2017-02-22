 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project_Creation1.aspx.cs" Inherits="PROJ2_PTE.Project_Creation" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100px;
        }
        .auto-style5 {
            width: 205px;
        }
        .auto-style6 {
            width: 290px;
        }
        .auto-style7 {
            width: 266px;
        }
        .auto-style8 {
            width: 419px;
            align-content:center;
            vertical-align:top;
        }
        .auto-style9 {
            width: 95%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ISPROJ2ConnectionString %>" SelectCommand="SELECT [Comp_Name], [Cl_ID] FROM [Client] ORDER BY [Comp_Name]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ISPROJ2ConnectionString %>" SelectCommand="SELECT [Em_ID], [F_Name], [L_Name] FROM [Employee] WHERE ([Position] = @Position)">
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
        <asp:Button ID="Button1" runat="server" Text="Add Task" OnClick="Button1_Click" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ISPROJ2ConnectionString %>" SelectCommand="SELECT [Em_ID], [L_Name], [F_Name] FROM [Employee] WHERE ([Position] = @Position)">
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
        
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Create Project" />
        
        <br />
        <br />
        
    </div>
    
    </form>
</body>
</html>
