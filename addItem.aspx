<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addItem.aspx.cs" Inherits="ToDO.addItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table border="1" align="center" style="background-color:aqua">
            <tr>
                <th colspan="2">
                    Add Task
                </th>
            </tr>
            <tr>
                <td>
                    Titile :
                </td>
                <td>
                                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Title"></asp:TextBox>
                </td>
            </tr>
            <tr>
                 <td>
                    Description :
                </td>
                <td>
                                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Description"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Start Date :</td>
                <td>
                                                <asp:TextBox ID="TextBox3" runat="server" type="Date"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    Start Time :
                </td>
                <td>
                                                <asp:TextBox ID="TextBox4" runat="server" type="Time"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    End Date :
                </td>
                <td>
                                                <asp:TextBox ID="TextBox5" runat="server" type="Date"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    End Time :
                </td>
                <td>
                                                <asp:TextBox ID="TextBox6" runat="server" type="time"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    Priority :
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="97%">
                        <asp:ListItem>High</asp:ListItem>
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>Low</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                                <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="#FF3300" OnClick="Button2_Click" />

                </td>
                <td align="right">
                                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" BackColor="#00CC66" />

                </td>
            </tr>
        </table>
        <div>
           
        </div>
    </form>
</body>
</html>
