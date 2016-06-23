<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminManage.aspx.cs" Inherits="AdminManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员主页</title>
</head>
<frameset rows=75,*>
  <frame name="logo" src="Logo.aspx" scrolling = "no" noresize/>
  <frameset id="frame" cols="180,*" >
	<frame name="left"  src="Left.aspx" noresize>
	<frame name="right" src="Main.aspx">	
  </frameset>  
</frameset>
</html>
