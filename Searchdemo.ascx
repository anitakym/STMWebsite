<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Searchdemo.ascx.cs" Inherits="Search" %>
<style type="text/css">
    .style1
    {
        width: 220px;
      
        
    }
    
</style>
<table class="style1" style="font-size: 13px" width="220px">
    <tr>
        <td colspan="2" align="center">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Images/searchup.png" Height="61px" Width="158px" />
        </td>
    </tr>
    <tr>
        <td width="120px">
                        查询类别：</td>
        <td class="style1">
            <asp:DropDownList ID="ddlSearchType" runat="server" Font-Size="13px" 
                Width="100px">
                <asp:ListItem>视频标题</asp:ListItem>
                <asp:ListItem>视频类型</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td valign="120px">
            关键字：</td>
        <td class="style2">
            <asp:TextBox ID="txtSearchKey" runat="server" Width="100px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" colspan="2">
            <asp:ImageButton ID="imgbtnSearch" runat="server" 
                ImageUrl="~/Images/searchdown.png" onclick="imgbtnSearch_Click" />
        </td>
    </tr>
</table>
