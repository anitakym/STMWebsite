<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BulletinManage.aspx.cs" Inherits="BulletinManage" %>

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
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                 <td align="center" style="font-size: 22px;  font-family: 隶书">
                    浏览公告</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataKeyNames="Bull_ID" 
                        DataSourceID="SqlDataSourceBulletin">
                        <Columns>
                            <asp:BoundField DataField="Bull_Title" HeaderText="公告标题" 
                                SortExpression="Bull_Title" />
                            <asp:BoundField DataField="Bull_SubTime" HeaderText="发布时间" 
                                SortExpression="Bull_SubTime" />
                            <asp:BoundField DataField="Bull_Content" HeaderText="公告内容" 
                                SortExpression="Bull_Content" />
                            <asp:BoundField DataField="Bull_Promulgator" HeaderText="发布人" 
                                SortExpression="Bull_Promulgator" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSourceBulletin" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:STMvideoConnectionString %>" 
                        DeleteCommand="DELETE FROM [Bulletin] WHERE [Bull_ID] = @Bull_ID" 
                        InsertCommand="INSERT INTO [Bulletin] ([Bull_ID], [Bull_Title], [Bull_SubTime], [Bull_Content], [Bull_Promulgator]) VALUES (@Bull_ID, @Bull_Title, @Bull_SubTime, @Bull_Content, @Bull_Promulgator)" 
                        SelectCommand="SELECT * FROM [Bulletin]" 
                        UpdateCommand="UPDATE [Bulletin] SET [Bull_Title] = @Bull_Title, [Bull_SubTime] = @Bull_SubTime, [Bull_Content] = @Bull_Content, [Bull_Promulgator] = @Bull_Promulgator WHERE [Bull_ID] = @Bull_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Bull_ID" Type="Byte" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Bull_Title" Type="String" />
                            <asp:Parameter Name="Bull_SubTime" Type="DateTime" />
                            <asp:Parameter Name="Bull_Content" Type="String" />
                            <asp:Parameter Name="Bull_Promulgator" Type="String" />
                            <asp:Parameter Name="Bull_ID" Type="Byte" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Bull_ID" Type="Byte" />
                            <asp:Parameter Name="Bull_Title" Type="String" />
                            <asp:Parameter Name="Bull_SubTime" Type="DateTime" />
                            <asp:Parameter Name="Bull_Content" Type="String" />
                            <asp:Parameter Name="Bull_Promulgator" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td height="5px" style="background-color:Blue">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
