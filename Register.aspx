<%@ Page Language="C#" MasterPageFile="~/Page/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 100%;
            height: 100%;
        }
        .style12
        {
            height: 408px;
            width: 774px;
        }
        .style14
        {
            height: 16px;
        }
        .style15
        {
            height: 11px;
            width: 66px;
        }
        .style16
        {
            width: 300px;
            height: 11px;
        }
        .style17
        {
            height: 25px;
            width: 66px;
        }
        .style18
        {
            width: 300px;
            height: 25px;
        }
        .style19
        {
            width: 300px;
            height: 12px;
        }
        .style20
        {
            height: 12px;
            width: 66px;
        }
        .style25
        {
            height: 27px;
            width: 66px;
        }
        .style26
        {
            width: 300px;
            height: 27px;
        }
        .style27
        {
            height: 6px;
            width: 66px;
        }
        .style28
        {
            width: 300px;
            height: 6px;
        }
        .style29
        {
            height: 9px;
            width: 66px;
        }
        .style30
        {
            width: 300px;
            height: 9px;
        }
        .style31
        {
            height: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style9">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style3">
        <tr>
            <td align="center">
                <table class="style12" align="center">
                    <tr>
                        <td colspan="2" align="left" class="style14">
                            添加会员 <font color="red" style="font-size:13px;">(加*项为必填项）</font>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style15">
                            <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
                        </td>
                        <td align="left" class="style16">
                            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                            <font color="red">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" ControlToValidate="txtUserName" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator></font></td>
                    </tr>
                    <tr>
                        <td align="right" class="style17">
                            <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
                        </td>
                        <td align="left" class="style18">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <font color="red">*</font>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtPassword" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style20">
                            <asp:Label ID="Label3" runat="server" Text="确认密码："></asp:Label>
                        </td>
                        <td align="left" class="style19">
                            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                            <font color="red">*</font>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtPassword" ControlToValidate="txtPwd" 
                                ErrorMessage="两次输入的密码不一致"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style25">
                            <asp:Label ID="Label4" runat="server" Text="性别："></asp:Label>
                        </td>
                        <td align="left" class="style26">
                            <asp:RadioButtonList ID="rbSex" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="rbSex" ErrorMessage="请选择性别"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style27">
                            学校：</td>
                        <td align="left" class="style28">
                            <asp:TextBox ID="txtSchool" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style29">
                            <asp:Label ID="Label10" runat="server" Text="E-mail："></asp:Label>
                        </td>
                        <td align="left" class="style30">
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="您输入的E-mail有误" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center" class="style31">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                            <asp:Label ID="Label11" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="btnClear" runat="server" CausesValidation="False" 
                                onclick="btnClear_Click" Text="重置" style="height: 26px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnRegister" runat="server" onclick="btnRegister_Click" Text="提交" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

