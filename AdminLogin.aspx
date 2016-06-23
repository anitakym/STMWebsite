<%@ Page Language="C#" MasterPageFile="~/Page/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Login" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style9
    {
        width: 100%;
        height: 100%;
    }
    .style10
    {
        width: 400px;
    }
    .style11
    {
        width: 164px;
    }
        .style12
        {
            width: 222px;
        }
        .style13
        {
            height: 56px;
        }
        .style14
        {
            width: 443px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style9">
    <tr>
        <td align="center" valign="middle" class="style14" rowspan="3">
            &nbsp;</td>
        <td align="center" valign="middle">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" valign="middle">
           <table align="left" class="style10">
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/上.png" />
                    </td>
                </tr>
                <tr>
                    <td class="style11" align="right">
                        账户名：</td>
                    <td class="style12" align="left">
                        <asp:TextBox ID="TextLogName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style11" align="right">
                        密码：</td>
                    <td class="style12" align="left">
                        <asp:TextBox ID="TextPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="LabelErrMsg" runat="server" Font-Bold="True" Font-Italic="True" 
                            Font-Size="14px" ForeColor="Red" Text="LabelErrMsg" Width="300px"></asp:Label>
                        <asp:Button ID="ButtonClear" runat="server" onclick="ButtonClear_Click" 
                            Text="清空" />
                        <asp:Button ID="ButtonLogin" runat="server" onclick="ButtonLogin_Click" 
                            Text="登录" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Index.aspx" 
                            Font-Underline="False" onclick="LinkButton1_Click">Back To Index</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="style13">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/下.png" />
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSourceUser" runat="server" 
                ConnectionString="<%$ ConnectionStrings:STMvideoConnectionString %>" 
                
                SelectCommand="SELECT [User_LogName], [User_Password], [User_Issuper] FROM [User] WHERE (([User_LogName] = @User_LogName) AND ([User_Issuper] = @User_Issuper))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextLogName" Name="User_LogName" 
                        PropertyName="Text" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="User_Issuper" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridViewUser" runat="server" 
                ondatabound="GridViewUser_DataBound">
            </asp:GridView></td>
    </tr>
    <tr>
        <td align="center" valign="middle">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

