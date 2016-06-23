<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchVideo.aspx.cs" Inherits="SearchVideo" %>

<%@ Register src="Search.ascx" tagname="Search" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 719px;
        }
        .style2
        {
            width: 223px;
        }
        .style3
        {
            width: 181px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1" width="1000px">
        <tr>
            <td colspan="2">
                <asp:Image ID="Image1" runat="server" Height="192px" 
                    ImageUrl="~/Images/logo.jpg" Width="482px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td rowspan="3" class="style2" >
                <uc1:Search ID="Search1" runat="server" />
                </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:GridView ID="GridViewSearchVideo" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="Video_ID" EmptyDataText="没有满足条件的记录" 
                    Font-Size="15px" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="Video_AddTime" HeaderText="添加时间" />
                        <asp:TemplateField HeaderText="视频标题">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# Eval("Video_ID", "ShowVideoDetail.aspx?ID={0}") %>' 
                                    Text='<%# Eval("Video_Title") %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Video_Type" HeaderText="视频类型" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:SqlDataSource ID="SqlDataSourceSearchVideoByType" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:STMvideoConnectionString %>" 
                    SelectCommand="SELECT * FROM [Video] WHERE ([Video_Type] = @Video_Type)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Video_Type" QueryStringField="Key" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSourceSearchVideoByTitle" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:STMvideoConnectionString %>" 
                    SelectCommand="SELECT * FROM [Video] WHERE ([Video_Title] LIKE '%' + @Video_Title + '%')">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Video_Title" QueryStringField="Key" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
