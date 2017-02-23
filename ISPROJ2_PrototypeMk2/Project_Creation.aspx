 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project_Creation.aspx.cs" Inherits="PROJ2_PTE.Project_Creation" %>

<%--<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>--%>
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
        .auto-style10 {
            width: 270px;
            align-content: center;
            vertical-align: top;
        }
        .auto-style11 {
            width: 270px;
            align-content: center;
            vertical-align: top;
            height: 56px;
        }
        .auto-style12 {
            height: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ISPROJ2ConnectionString %>" SelectCommand="SELECT [client_id], [client_name] FROM [Client]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ISPROJ2ConnectionString %>" SelectCommand="SELECT [emp_user_id], [emp_fname] + ' '  + [emp_lname] FROM [Personnel] WHERE ([emp_position] = @emp_position)">
            <SelectParameters>
                <asp:Parameter DefaultValue="5" Name="emp_position" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ISPROJ2ConnectionString %>" SelectCommand="SELECT [emp_user_id] AS 'ID', [emp_fname]+' '+[emp_lname] AS 'FULL NAME' FROM [Personnel] WHERE ([emp_position] = @emp_position)">
            <SelectParameters>
                <asp:Parameter DefaultValue="6" Name="emp_position" />
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
                    <asp:DropDownList ID="DDClient" runat="server"  Width="150px" DataSourceID="SqlDataSource1" DataTextField="client_name" DataValueField="client_id">
                    </asp:DropDownList>
&nbsp;<br />
                    <asp:DropDownList ID="DDProjLead" runat="server"  Width="150px" DataSourceID="SqlDataSource2" DataTextField="Column1" DataValueField="emp_user_id">
                    </asp:DropDownList>
                    <br />
                </td>
                <td class="auto-style2">Start Date: <br />
                    End Date: <br />
                    Reference #:&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtStDate" runat="server" Width="150px" ReadOnly="False" Placeholder="Choose Date" Format="yyyy-MM-dd" TextMode="Date"></asp:TextBox>
                    <%--<ajaxToolkit:CalendarExtender ID="txtStDate_CalendarExtender" runat="server" TargetControlID="txtStDate" Format="yyyy-MM-dd"/>--%>
                    <br />
                    <asp:TextBox ID="txtEnDate" runat="server" Width="150px" ReadOnly="False" Placeholder="Choose Date" Format="yyyy-MM-dd" TextMode="Date"></asp:TextBox >
                    <%-- <ajaxToolkit:CalendarExtender ID="txtEnDate_CalendarExtender" runat="server" TargetControlID="txtEnDate" Format="yyyy-MM-dd"/>--%>
                    <br />
                    <asp:TextBox ID="txtRefNum" runat="server" Width="150px">0</asp:TextBox>
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
        <ajaxToolkit:ComboBox ID="ComboBox1" runat="server" AutoCompleteMode="Suggest" DataSourceID="SqlDataSource4" DataTextField="stock_code" DataValueField="stock_id" MaxLength="0" style="display: inline;" OnSelectedIndexChanged="ComboBox1_SelectedIndexChanged" OnTextChanged="ComboBox1_TextChanged" AutoPostBack="True">
        </ajaxToolkit:ComboBox>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ISPROJ2ConnectionString %>" SelectCommand="SELECT [stock_code], [stock_id] FROM [Stock]"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox10" runat="server" placeholder="Quantity"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Add Item" Width="83px" OnClick="Button2_Click" />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="839px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                    <asp:TemplateField HeaderText="Item No.">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
            </Columns>
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
&nbsp;<br />
        <br />
        <hr />
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
        <asp:TextBox ID="txtTskSdate" runat="server" Width="80px" TextMode="Date"></asp:TextBox>
                    <%--<ajaxToolkit:CalendarExtender ID="txtTskSdate_CalendarExtender" runat="server" TargetControlID="txtTskSdate" />--%>
        <asp:TextBox ID="txtTskEdate" runat="server" Width="80px" TextMode="Date"></asp:TextBox>
                    <%--<ajaxToolkit:CalendarExtender ID="txtTskEdate_CalendarExtender" runat="server" TargetControlID="txtTskEdate" />--%>
                </td>
                <td>
        <asp:TextBox ID="txtTskPrq" runat="server">0</asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        Assigned to:<asp:GridView ID="GridView4" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" AllowSorting="True" DataSourceID="SqlDataSource3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:templatefield HeaderText="Select">
                    <itemtemplate>
                        <asp:checkbox ID="cbSelect" runat="server"></asp:checkbox>
                    </itemtemplate>
                </asp:templatefield>
<%--                <asp:BoundField DataField="Em_ID" HeaderText="Em_ID" />
                <asp:BoundField DataField="F_Name" HeaderText="F_Name" />
                <asp:BoundField DataField="L_Name" HeaderText="L_Name" />--%>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Add Task" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        
        <br />
        <table class="auto-style9">
            <tr>
                <td class="auto-style11">Tasks:<asp:HiddenField ID="Counter" runat="server" Value="0" />
                </td>
                <td class="auto-style12">Assigned per Task</td>
            </tr>
            <tr>
                <td class="auto-style10">
        <asp:GridView ID="GridView5" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GridView5_RowDeleting">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
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
                    <%--            <asp:GridView ID="GridView5" runat="server" CssClass="Grid" DataKeyNames="Pr_Title" >
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:TemplateField>
            <ItemTemplate>
                <img alt = "" style="cursor: pointer" src="images/plus.png" />
                <asp:Panel ID="pnlOrders" runat="server" Style="display: none">
                    <asp:GridView ID="GridView3" runat="server" CssClass = "ChildGrid">
                       
                    </asp:GridView>
                </asp:Panel>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    </asp:GridView>--%>


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
