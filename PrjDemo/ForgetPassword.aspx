<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="PrjDemo.ForgetPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 62%;
            height: 349px;
        }
        .style2
        {
            width: 177px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 543px; width: 895px">
    
        <asp:Panel ID="Panel1" runat="server" 
            BackImageUrl="~/img/743947-background-pictures.jpg" Height="537px" 
            style="text-align: center">
            <br />
            <asp:Label ID="Label1" runat="server" 
    
                style="text-align: center; color: #FFFFCC; font-weight: 700; font-size: xx-large; text-decoration: underline;" 
                Text="Forgot Password" ForeColor="#FFFF99"></asp:Label>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table align="center" bgcolor="#33CCCC" class="style1">
                <tr>
                    <td class="style2" rowspan="8">
                        <asp:Image ID="ImgforgetPwd" runat="server" Height="203px" 
                            ImageUrl="~/img/forgotpassword.png" Width="220px" />
                    </td>
                    <td colspan="2" style="text-align: left">
                        <asp:Label ID="Label2" runat="server" Text="*"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: left">
                        <asp:Label ID="Label3" runat="server" Text="*"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        &nbsp;
                        <asp:Label ID="lblfrgtEmailId" runat="server" 
                            style="font-weight: 700; font-size: x-large; color: #006699; text-align: left" 
                            Text="Enter Your Email Id:"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtfrgtEmailId" runat="server" style="color: #006699" 
                            Width="277px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Height="41px" 
                            onclick="btnSubmit_Click" 
                            style="font-weight: 700; color: #006699; font-size: large" Text="Submit" 
                            Width="98px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
