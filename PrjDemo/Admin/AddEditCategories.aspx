<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Main.Master" AutoEventWireup="true" CodeBehind="AddEditCategories.aspx.cs" Inherits="PrjDemo.Admin.AddEditCategories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style6
        {
            text-decoration: underline;
            text-align: center;
            color: #CC0066;
            font-size: x-large;
        }
        .style7
        {
            width: 231px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h3 class="style6">ADD NEW CATEGORY</h3>
</div>
    <table class="style1" >
        <tr>
            <td class="style7">
                <asp:Label ID="lblCategoryName" runat="server" 
                    style="font-size: large; font-weight: 700; color: #FF0066; text-align: center; font-style: italic;" 
                    Text="Category Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCategoryName" runat="server" AutoPostBack="True" 
                    Width="217px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" BackColor="#FF66FF" Height="39px" 
                    style="font-weight: 700; font-size: medium; color: #FF0066; background-color: #FF9999" 
                    Text="Submit" Width="94px" onclick="btnSubmit_Click" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:HiddenField ID="HiddenField1" runat="server" />
                <asp:GridView ID="grdCategory" runat="server" 
                    CaptionAlign="Bottom" CellSpacing="10" Height="132px" 
                    style="color: #CC0066" Width="338px" 
                    onrowdatabound="grdCategory_RowDataBound" 
                    onrowdeleting="grdCategory_RowDeleting">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnDelete" runat="server" 
                                    style="font-weight: 700; color: #CC0066" Text="Delete" 
                                    onclick="btnDelete_Click" CommandArgument='<%# Bind("Id") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                   
                    
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>



</asp:Content>
