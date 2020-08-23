<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="PrjDemo.LogInPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Import Namespace= "PrjDemo" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            width: 58%;
            height: 356px;
        }
        .style3
        {            text-align: center;
        }
        .style5
        {
            width: 168px;
            text-align: left;
        }
        .style7
        {
            text-align: center;
            height: 11px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 727px; width: 848px">
    
        <asp:Panel ID="PanelBody" runat="server" Height="599px" 
            style="text-align: center; font-weight: 700; color: #009999; font-size: x-large" 
            Width="844px">
            <br />
            <asp:Panel ID="Panel1" runat="server" 
                BackImageUrl="~/img/wooden_background.jpg" Height="542px" Width="841px">
                <span class="style1">Log in<br /> </span>
                <asp:Panel ID="Panel2" runat="server" Height="504px" 
                    style="text-align: left; font-size: medium;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <table align="center" bgcolor="#669999" class="style2">
                        <tr>
                            <td class="style5" rowspan="8">
                                <asp:Image ID="imgLogin" runat="server" Height="181px" 
                                    ImageUrl="~/img/18407236-donate-button-showing-charity-donation-and-fundraising.jpg" 
                                    Width="152px" />
                            </td>
                            <td class="style3">
                                <asp:Label ID="lblUserName" runat="server" 
                                    style="font-size: large; color: #003366;" Text="USER  NAME:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUserName" runat="server" Height="26px" Width="183px"></asp:TextBox>
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
                                <asp:Label ID="lblPassword0" runat="server" 
                                    style="font-size: large; color: #003366;" Text="PASSWORD:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="184px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnLogin" runat="server" ForeColor="#009999" Height="37px" 
                                    style="text-align: left; font-weight: 700; font-size: large; color: #003366;" 
                                    Text="Log in" Width="97px" onclick="btnLogin_Click"/>
                                &nbsp;
                                <asp:Button ID="btnNewUser" runat="server" ForeColor="#009999" Height="37px"
                                    style="text-align: left; font-weight: 700; font-size: large; color: #003366;" 
                                    Text="Registration" Width="120px" onclick="btnNewUser_Click" />
                                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td>
                                &nbsp; &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="lnkbtnForgotPwd0" runat="server" 
                                 style="font-size: large; color: #003366" onclick="lnkbtnForgotPwd0_Click">Forgot Password?</asp:LinkButton>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style3" colspan="2">
                                &nbsp;&nbsp;<asp:Label ID="lblMessage" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
