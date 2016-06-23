<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logo.aspx.cs" Inherits="Logo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body style="margin-left:0px; margin-top:0px; 
             margin-right:0px; margin-bottom:0px">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" style="background-image: url('Images/banner.png')">
            <tr>
                <td>
                    <asp:Label ID="lblDate" runat="server" Font-Size="13px" ForeColor="White" 
                        Text="今天是："></asp:Label>
                </td>
                <td align="right">
                                <asp:HyperLink ID="hyplinkLogout" runat="server" Font-Size="14px" 
                                    NavigateUrl="~/AdminLogin.aspx" Target="_top" Font-Bold="True" 
                        Font-Underline="False" ForeColor="White">注销</asp:HyperLink>
                            </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAdmin" runat="server" Font-Size="13px" ForeColor="White" 
                        Text="当前管理员是："></asp:Label>
                </td>
                <td>
                    <table class="style1">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
