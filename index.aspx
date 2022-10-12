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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                        <asp:BoundField DataField="Sdate" HeaderText="Start Date" SortExpression="Sdate" />
                        <asp:BoundField DataField="Stime" HeaderText="Start time" SortExpression="Stime" />
                        <asp:BoundField DataField="Edate" HeaderText="End Date" SortExpression="Edate" />
                        <asp:BoundField DataField="Etime" HeaderText="End Time" SortExpression="Etime" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
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
            
                
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ToDo]"></asp:SqlDataSource>
                 <br />
        <br />

        </div>
       
       
        </form>
        
    
</body>
</html>
