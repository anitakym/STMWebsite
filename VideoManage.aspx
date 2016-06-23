<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VideoManage.aspx.cs" Inherits="VideoManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            height: 140px;
        }
        .style2
        {
            width: 115px;
        }
        .style3
        {
            width: 340px;
        }
        .style4
        {
            width: 115px;
            height: 23px;
        }
        .style5
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td align="center" style="font-size: 22px;  font-family: 隶书">
                    浏览视频</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridViewVideo" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataKeyNames="Video_ID" 
                        DataSourceID="SqlDataSourceVideo" Font-Size="15px" HorizontalAlign="Center" 
                        PageSize="7">
                        <Columns>
                            <asp:BoundField DataField="Video_Title" HeaderText="视频标题" 
                                SortExpression="Video_Title" />
                            <asp:BoundField DataField="Video_Description" HeaderText="描述" 
                                SortExpression="Video_Description" />
                            <asp:BoundField DataField="Video_ClickTimes" HeaderText="点击次数" 
                                SortExpression="Video_ClickTimes" />
                            <asp:BoundField DataField="Video_AddTime" HeaderText="添加时间" 
                                SortExpression="Video_AddTime" />
                            <asp:CommandField SelectText="查看详细" ShowDeleteButton="True" 
                                ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSourceVideo" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:STMvideoConnectionString %>" 
                        DeleteCommand="DELETE FROM [Video] WHERE [Video_ID] = @Video_ID" 
                        InsertCommand="INSERT INTO [Video] ([Video_ID], [Video_Title], [Video_Type], [Video_Recommended], [Video_Description], [Video_ClickTimes], [Video_AddTime], [Video_Image]) VALUES (@Video_ID, @Video_Title, @Video_Type, @Video_Recommended, @Video_Description, @Video_ClickTimes, @Video_AddTime, @Video_Image)" 
                        SelectCommand="SELECT * FROM [Video] ORDER BY [Video_AddTime] DESC" 
                        UpdateCommand="UPDATE [Video] SET [Video_Title] = @Video_Title, [Video_Type] = @Video_Type, [Video_Recommended] = @Video_Recommended, [Video_Description] = @Video_Description, [Video_ClickTimes] = @Video_ClickTimes, [Video_AddTime] = @Video_AddTime, [Video_Image] = @Video_Image WHERE [Video_ID] = @Video_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Video_ID" Type="Byte" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Video_Title" Type="String" />
                            <asp:Parameter Name="Video_Type" Type="Int32" />
                            <asp:Parameter Name="Video_Recommended" Type="Boolean" />
                            <asp:Parameter Name="Video_Description" Type="String" />
                            <asp:Parameter Name="Video_ClickTimes" Type="Int32" />
                            <asp:Parameter Name="Video_AddTime" Type="DateTime" />
                            <asp:Parameter Name="Video_Image" Type="String" />
                            <asp:Parameter Name="Video_ID" Type="Byte" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Video_ID" Type="Byte" />
                            <asp:Parameter Name="Video_Title" Type="String" />
                            <asp:Parameter Name="Video_Type" Type="Int32" />
                            <asp:Parameter Name="Video_Recommended" Type="Boolean" />
                            <asp:Parameter Name="Video_Description" Type="String" />
                            <asp:Parameter Name="Video_ClickTimes" Type="Int32" />
                            <asp:Parameter Name="Video_AddTime" Type="DateTime" />
                            <asp:Parameter Name="Video_Image" Type="String" />
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
                    <asp:FormView ID="FormViewVideo" runat="server" DataKeyNames="Video_ID" 
                        DataSourceID="SqlDataSourceVideoByID">
                        <EditItemTemplate>
                            Video_ID:
                            <asp:Label ID="Video_IDLabel1" runat="server" Text='<%# Eval("Video_ID") %>' />
                            <br />
                            Video_Title:
                            <asp:TextBox ID="Video_TitleTextBox" runat="server" 
                                Text='<%# Bind("Video_Title") %>' />
                            <br />
                            Video_Type:
                            <asp:TextBox ID="Video_TypeTextBox" runat="server" 
                                Text='<%# Bind("Video_Type") %>' />
                            <br />
                            Video_Recommended:
                            <asp:CheckBox ID="Video_RecommendedCheckBox" runat="server" 
                                Checked='<%# Bind("Video_Recommended") %>' />
                            <br />
                            Video_Description:
                            <asp:TextBox ID="Video_DescriptionTextBox" runat="server" 
                                Text='<%# Bind("Video_Description") %>' />
                            <br />
                            Video_ClickTimes:
                            <asp:TextBox ID="Video_ClickTimesTextBox" runat="server" 
                                Text='<%# Bind("Video_ClickTimes") %>' />
                            <br />
                            Video_AddTime:
                            <asp:TextBox ID="Video_AddTimeTextBox" runat="server" 
                                Text='<%# Bind("Video_AddTime") %>' />
                            <br />
                            Video_Image:
                            <asp:TextBox ID="Video_ImageTextBox" runat="server" 
                                Text='<%# Bind("Video_Image") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Video_ID:
                            <asp:TextBox ID="Video_IDTextBox" runat="server" 
                                Text='<%# Bind("Video_ID") %>' />
                            <br />
                            Video_Title:
                            <asp:TextBox ID="Video_TitleTextBox" runat="server" 
                                Text='<%# Bind("Video_Title") %>' />
                            <br />
                            Video_Type:
                            <asp:TextBox ID="Video_TypeTextBox" runat="server" 
                                Text='<%# Bind("Video_Type") %>' />
                            <br />
                            Video_Recommended:
                            <asp:CheckBox ID="Video_RecommendedCheckBox" runat="server" 
                                Checked='<%# Bind("Video_Recommended") %>' />
                            <br />
                            Video_Description:
                            <asp:TextBox ID="Video_DescriptionTextBox" runat="server" 
                                Text='<%# Bind("Video_Description") %>' />
                            <br />
                            Video_ClickTimes:
                            <asp:TextBox ID="Video_ClickTimesTextBox" runat="server" 
                                Text='<%# Bind("Video_ClickTimes") %>' />
                            <br />
                            Video_AddTime:
                            <asp:TextBox ID="Video_AddTimeTextBox" runat="server" 
                                Text='<%# Bind("Video_AddTime") %>' />
                            <br />
                            Video_Image:
                            <asp:TextBox ID="Video_ImageTextBox" runat="server" 
                                Text='<%# Bind("Video_Image") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table class="style1" width="700px">
                                <tr>
                                    <td class="style4">
                                        视频标题：</td>
                                    <td class="style5" colspan="2">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Video_Title") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        视频类型：</td>
                                    <td class="style3">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Video_Type") %>'></asp:Label>
                                    </td>
                                    <td width="170px">
                                        视频图片：</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        添加时间：</td>
                                    <td class="style3">
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Video_AddTime") %>'></asp:Label>
                                    </td>
                                    <td rowspan="3">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Video_Image") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        是否推荐：</td>
                                    <td class="style3">
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Video_Recommended") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        视频内容：</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3" width="700px">
                                        <asp:TextBox ID="TextBox1" runat="server" Height="150px" ReadOnly="True" 
                                            Text='<%# Bind("Video_Description") %>' TextMode="MultiLine" Width="570px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="编辑" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                                CommandName="Delete" Text="删除" />
                            &nbsp;
                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSourceVideoByID" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:STMvideoConnectionString %>" 
                        DeleteCommand="DELETE FROM [Video] WHERE [Video_ID] = @Video_ID" 
                        InsertCommand="INSERT INTO [Video] ([Video_ID], [Video_Title], [Video_Type], [Video_Recommended], [Video_Description], [Video_ClickTimes], [Video_AddTime], [Video_Image]) VALUES (@Video_ID, @Video_Title, @Video_Type, @Video_Recommended, @Video_Description, @Video_ClickTimes, @Video_AddTime, @Video_Image)" 
                        SelectCommand="SELECT * FROM [Video] WHERE ([Video_ID] = @Video_ID)" 
                        UpdateCommand="UPDATE [Video] SET [Video_Title] = @Video_Title, [Video_Type] = @Video_Type, [Video_Recommended] = @Video_Recommended, [Video_Description] = @Video_Description, [Video_ClickTimes] = @Video_ClickTimes, [Video_AddTime] = @Video_AddTime, [Video_Image] = @Video_Image WHERE [Video_ID] = @Video_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridViewVideo" Name="Video_ID" 
                                PropertyName="SelectedValue" Type="Byte" />
                        </SelectParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="Video_ID" Type="Byte" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Video_Title" Type="String" />
                            <asp:Parameter Name="Video_Type" Type="Int32" />
                            <asp:Parameter Name="Video_Recommended" Type="Boolean" />
                            <asp:Parameter Name="Video_Description" Type="String" />
                            <asp:Parameter Name="Video_ClickTimes" Type="Int32" />
                            <asp:Parameter Name="Video_AddTime" Type="DateTime" />
                            <asp:Parameter Name="Video_Image" Type="String" />
                            <asp:Parameter Name="Video_ID" Type="Byte" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Video_ID" Type="Byte" />
                            <asp:Parameter Name="Video_Title" Type="String" />
                            <asp:Parameter Name="Video_Type" Type="Int32" />
                            <asp:Parameter Name="Video_Recommended" Type="Boolean" />
                            <asp:Parameter Name="Video_Description" Type="String" />
                            <asp:Parameter Name="Video_ClickTimes" Type="Int32" />
                            <asp:Parameter Name="Video_AddTime" Type="DateTime" />
                            <asp:Parameter Name="Video_Image" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
