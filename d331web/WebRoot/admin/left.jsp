<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="com.model.User" %>
<%@ page import="com.core.*" %>
<% 
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","no-cache");
if ( Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) {
    out.println("<script>parent.location.href='../index.jsp';</script>");
    return ;
}
User u=(User)session.getAttribute("user");

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
.STYLE2 {	font-size: 9pt;
	color: #FFFFFF;
}
-->
</style>
</head>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<base target="main">

<body>
<table width="179" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="2"></td>
  </tr>
  <tr>
    <td height="1"></td>
  </tr>
  <tr>
    <td bgcolor="#d9d9d9">
    <table width="149" border="0" align="center" cellpadding="0" cellspacing="0">
    <%if(u.getStatus()==1){//管理员 %>
      <tr>
        <td height="9"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="manage_user.jsp?submit=submit" target="mainFrame" class="link_admin">用户管理</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="search_user.jsp" target="mainFrame" class="link_admin">用户查找</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="24" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="manage_head.jsp" target="mainFrame"class="link_admin" >用户头像管理</a></span></td>
      </tr>
      <tr>
        <td height="8"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="manage_affiche.jsp" target="mainFrame" class="link_admin">公告管理</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="manage_new.jsp" target="mainFrame" class="link_admin">信息模块管理</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="manage_link.jsp" target="mainFrame" class="link_admin">友情链接管理</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="car_list.jsp" target="mainFrame" class="link_admin">车辆信息管理</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="wz_list.jsp" target="mainFrame" class="link_admin">违章信息管理</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="jsy_list.jsp" target="mainFrame" class="link_admin">驾驶员信息</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="wx_list.jsp" target="mainFrame" class="link_admin">维修信息</a></span></td>
      </tr>
		<tr>
        <td height="10"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="clbf_list.jsp" target="mainFrame" class="link_admin">车辆报废</a></span></td>
      </tr>
     <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="manage_lyb.jsp" target="mainFrame" class="link_admin">留言管理</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
     <%} %>
     <%if(u.getStatus()==2){//特殊用户%>
       <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="car_list.jsp" target="mainFrame" class="link_admin">车辆信息管理</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="wz_list.jsp" target="mainFrame" class="link_admin">违章信息管理</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="jsy_list.jsp" target="mainFrame" class="link_admin">驾驶员信息</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="wx_list.jsp" target="mainFrame" class="link_admin">维修信息</a></span></td>
      </tr>
		<tr>
        <td height="10"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="clbf_list.jsp" target="mainFrame" class="link_admin">车辆报废</a></span></td>
      </tr>
     <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="manage_lyb.jsp" target="mainFrame" class="link_admin">留言管理</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
     <%} %>
      <%if(u.getStatus()==3){//老师%>
        <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="car_list.jsp" target="mainFrame" class="link_admin">车辆信息管理</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="wz_list.jsp" target="mainFrame" class="link_admin">违章信息管理</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="jsy_list.jsp" target="mainFrame" class="link_admin">驾驶员信息</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="wx_list.jsp" target="mainFrame" class="link_admin">维修信息</a></span></td>
      </tr>
		<tr>
        <td height="10"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="clbf_list.jsp" target="mainFrame" class="link_admin">车辆报废</a></span></td>
      </tr>
     <tr>
        <td height="7"></td>
      </tr>
      <tr>
        <td height="25" valign="middle" background="../images/admin_bg.gif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2"><a href="manage_lyb.jsp" target="mainFrame" class="link_admin">留言管理</a></span></td>
      </tr>
      <tr>
        <td height="7"></td>
      </tr>
       <%} %>
      </table></td>
  </tr>
</table>
</body>
</html>
