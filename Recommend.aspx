<%@ Page Language="C#" MasterPageFile="~/Page/MasterPage.master" AutoEventWireup="true" CodeFile="Recommend.aspx.cs" Inherits="Recommend" Title="无标题页" %>

<%@ Register src="Search.ascx" tagname="Search" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 100%;
            height: 100%;
        }
        .style10
        {
            width: 100%;
        }
        .style11
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style9">
        <tr>
            <td class="style8">
                <table class="style10">
                    <tr>
                        <td class="style11">
                        <asp:Label ID="lblDate" runat="server" Font-Size="13px" ForeColor="Black" 
                        Text="今天是："></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Label ID="lblAdmin" runat="server" Font-Size="13px" ForeColor="Black" 
                        Text="欢迎您："></asp:Label>
                            </td>
                    </tr>
                    <tr>
                        <td align="center">
                           <asp:HyperLink ID="hyplinkLogout" runat="server" Font-Size="14px" 
                                    NavigateUrl="~/Login.aspx" Target="_top" Font-Bold="True" 
                        Font-Underline="False" ForeColor="Black">注销</asp:HyperLink></td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="style10">
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14px" 
                                Text="初始推荐"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14px" 
                                Text="热度推荐"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

