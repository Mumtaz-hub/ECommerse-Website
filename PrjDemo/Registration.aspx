<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="PrjDemo.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 76%;
            height: 408px;
        }
        .style2
        {
            font-size: large;
        }
        .style3
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 793px; width: 880px">
            
        <asp:Panel ID="Panel1" runat="server" 
            BackImageUrl="~/img/743947-background-pictures.jpg" Height="782px" 
            style="text-align: center; color: #009999; font-size: xx-large; font-weight: 700">
            <br class="style2" />
            <asp:Label ID="Label2" runat="server" style="color: #FFFFCC" 
                Text="User Registration"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;
            <table align="center" bgcolor="#99CCFF" class="style1">
                <tr>
                    <td class="style3" rowspan="11">
                        <asp:Image ID="imgRegistration" runat="server" Height="267px" 
                            ImageUrl="~/img/registration.png" Width="247px" />
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="lblUserName" runat="server" 
                            style="font-size: large; color: #336699" Text="User Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" Width="156px" 
                            ontextchanged="txtUserName_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" 
                            style="font-size: medium; color: #006699"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="lblPassword" runat="server" 
                            style="color: #336699; font-size: large" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="152px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label6" runat="server" style="font-size: large; color: #336699" 
                            Text="Confirm Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtconfrmPwd" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="lblEmailId0" runat="server" 
                            style="font-size: large; color: #006699;" Text="Email Id:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmailId0" runat="server" Width="160px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3" colspan="2">
                        &nbsp;<asp:Button ID="btnCreateAcc1" runat="server" Height="42px" 
                            style="font-weight: 700; color: #336699; font-size: large" 
                            Text="Create Account" Width="149px" onclick="btnCreateAcc1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="style3" colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
            
    </div>
    </form>
</body>
</html>
