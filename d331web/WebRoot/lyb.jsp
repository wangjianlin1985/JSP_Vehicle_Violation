<!DOCTYPE html><%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.*" %>
<%@ page import="com.core.*" %> 
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title> </title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body> 
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0"  class="tableBorder6"> 
  <tr> 
    <td height="165" colspan="3"><jsp:include page="top.jsp"/></td> 
  </tr> 
  <tr> 
    <td width="11" rowspan="2"></td> 
    <td width="234" rowspan="2" align="left" valign="top"><jsp:include page="left.jsp"/></td> 
    <td width="536"  align="center" valign="top">
    <table width="781px" border="0" align="center" cellpadding="0" cellspacing="1" bordercolorlight="#FFFFFF" bordercolordark="#777777" class="tableNew"> 
       
        <tr align="center"> 
          <td height="30" colspan="2" class="TableTitle1" >留言信息</td> 
        </tr> 
  <%
    User user1=(User)session.getAttribute("user");
	String user="游客", uid = "";
	if(user1!=null){
		user=user1.getName();
	    uid=user1.getUid();
	}
  int gid=ParamUtils.getIntParameter(request,"gid");

	String sqlL="SELECT * FROM (Lyb) where gid="+gid;
	Collection coll = new ArrayList();
	Connection con = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	String bbs_class_str="";
	con = Database.getConnection();
	ps = con.prepareStatement(sqlL );
	rs = ps.executeQuery();
	//System.out.println(!rs.last());

	if(!rs.last()){%> 
        <tr align="center"> 
          <td height="27" colspan="2">当前留言为空</td> 
        </tr>         
        
        <%}else{%> 
        <tr align="center"> 
          <td width="36%" height="27"  bgcolor="#FFFFFF">留言标题</td> 
          <td width="64%" align="left"  bgcolor="#FFFFFF"><%=rs.getString("title")%></td> 
        </tr> 
        <tr align="left"> 
          <td height="13" align="center"  bgcolor="#FFFFFF">留言时间</td> 
          <td height="0" align="left"  bgcolor="#FFFFFF"><%=rs.getString("gtime")%></td> 
        </tr> 
        <tr align="left"> 
          <td height="14" align="center"  bgcolor="#FFFFFF">留&nbsp;言&nbsp;人</td> 
          <td height="0" align="left"  bgcolor="#FFFFFF"><%=rs.getString("guest")%></td> 
        </tr> 
        <tr align="left"> 
          <td height="60" align="center"  bgcolor="#FFFFFF">留言内容</td> 
          <td height="0" align="left" valign="top"  bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("content")%></td> 
        </tr> 
        <tr align="left"> 
          <td height="50" align="center"  bgcolor="#FFFFFF">回复内容</td> 
          <td height="0" align="left" valign="top"  bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("recontent")%></td> 
        </tr> 
        <tr align="left"> 
          <td height="27" align="center"  bgcolor="#FFFFFF"> 回复时间</td> 
          <td height="0" align="left"  bgcolor="#FFFFFF">&nbsp;<%=rs.getString("rtime")%></td> 
        </tr><%}%> 
        <tr align="right"> 
          <td height="27" colspan="2"><a class="delink" onClick="javascript:history.back()" href="#">返回</a></td> 
        </tr> 
    </table></td> 
  </tr> 
  <tr> 
    <td>　</td> 
  </tr> 
  <tr> 
    <td colspan="3" align="center"><br><jsp:include page="bottom.jsp"/><br></td> 
  </tr> 
</table> 
</body>
</html>
