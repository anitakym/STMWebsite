<%@ Page Language="C#" MasterPageFile="~/Page/MasterPage.master" AutoEventWireup="true" CodeFile="Movie.aspx.cs" Inherits="Movie" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 100%;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style9">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    Text="Button" />
            </td>
        </tr>
    </table>
</asp:Content>

