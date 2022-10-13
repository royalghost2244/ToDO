<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ToDO.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body align="center" >
    <form id="form1" runat="server">
        

        <table  border="3" align="center" style="background-color:aqua; border-color:black">
            <tr >
                <th colspan="3" >
                    To Do List
                </th>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                    <Columns>
                        <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                        <asp:BoundField DataField="Sdate" HeaderText="Start Date" SortExpression="Sdate" />
                        <asp:BoundField DataField="Stime" HeaderText="Start Time" SortExpression="Stime" />
                        <asp:BoundField DataField="Edate" HeaderText="End Date" SortExpression="Edate" />
                        <asp:BoundField DataField="Etime" HeaderText="End Time" SortExpression="Etime" />
                        <asp:BoundField DataField="Priority" HeaderText="Priority" SortExpression="Priority" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="title" BackColor="Aqua"></asp:DropDownList>
                </td>
                <td align="center">
                    <asp:Button ID="Button2" runat="server" Text="Delete the Selected List" BackColor="#FF3300" OnClick="Button2_Click" />
                </td>
                <td align="center">
                                    <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" BackColor="#00CC66" ForeColor="White" />

                </td>
            </tr>
        </table>
    
        <div>
            
                
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ToDo] ORDER BY [Priority], [Sdate], [Stime]"></asp:SqlDataSource>
                 <br />
        <br />

        </div>
       
       
        </form>
        
    
</body>
</html>
