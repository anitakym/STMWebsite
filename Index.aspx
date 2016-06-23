<%@ Page Language="C#" MasterPageFile="~/Page/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style9
    {
        width: 100%;
        height: 100%;
    }
    .style10
    {
        width: 290px;
    }
        .style11
        {
            width: 100%;
            height: 446px;
        }
        .style12
        {
            width: 100%;
        }
        .style13
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style9">
    <tr>
        <td class="style10">
            <table class="style11" style="background-image: url('Images/公告栏.png')">
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Bull_ID" 
                            DataSourceID="SqlDataSourceBulletin">
                            <EditItemTemplate>
                                Bull_Content:
                                <asp:TextBox ID="Bull_ContentTextBox" runat="server" 
                                    Text='<%# Bind("Bull_Content") %>' />
                                <br />
                                Bull_ID:
                                <asp:Label ID="Bull_IDLabel1" runat="server" Text='<%# Eval("Bull_ID") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                    CommandName="Update" Text="更新" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                    CausesValidation="False" CommandName="Cancel" Text="取消" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Bull_Content:
                                <asp:TextBox ID="Bull_ContentTextBox" runat="server" 
                                    Text='<%# Bind("Bull_Content") %>' />
                                <br />
                                Bull_ID:
                                <asp:TextBox ID="Bull_IDTextBox" runat="server" Text='<%# Bind("Bull_ID") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                    CommandName="Insert" Text="插入" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                    CausesValidation="False" CommandName="Cancel" Text="取消" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<br />
                                <table class="style12">
                                    <tr>
                                        <td align="center" class="style13">
                                            <asp:Label ID="Bull_ContentLabel" runat="server" 
                                                Text='<%# Bind("Bull_Content") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </ItemTemplate>
                        </asp:FormView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSourceBulletin" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:STMvideoConnectionString %>" 
                            SelectCommand="SELECT [Bull_Content], [Bull_ID] FROM [Bulletin] WHERE ([Bull_ID] = @Bull_ID)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="Bull_ID" Type="Byte" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Images/页面2.png" 
                PostBackUrl="~/Movie.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/页面.png" 
                PostBackUrl="~/Login.aspx" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/页面4.png" 
                PostBackUrl="~/SearchVideo.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/页面3.png" 
                PostBackUrl="~/AdminLogin.aspx" />
</td>
    </tr>
</table>
</asp:Content>

