<!DOCTYPE html><%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator"   %> 
<%@ page import="com.core.*"  %>
<%@ page import="com.model.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"  %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>    </title>
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
          <td height="30" class="TableTitle1">百科信息</td> 
          <td  align="left" class="TableTitle1"></td> 
        </tr> 
  <%
  if (!Crazyadept.UserIsOK(session)) return;
  User user1=(User)session.getAttribute("user");
String user="游客", uid = "";
if(user1!=null){
	user=user1.getName();
    uid=user1.getUid();
}
    int tid=ParamUtils.getIntParameter(request,"tid");
    String tidF=ParamUtils.getRequestString(request,"tidF");
    String ttable=ParamUtils.getRequestString(request,"ttable");

    String sqlL="SELECT * FROM ("+ttable+") where "+tidF+"="+tid+"   ";
    Collection coll = new ArrayList();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        String bbs_class_str="";
        con = Database.getConnection();
        ps = con.prepareStatement(sqlL );
        rs = ps.executeQuery();
        System.out.println(!rs.last());
              
	if(!rs.last()){
	%> 
        <tr align="center"> 
          <td height="27" colspan="2">当前收藏为空</td> 
        </tr>
   <%}else{
%>         
        <tr align="center"> 
          <td width="36%" height="27"  bgcolor="#FFFFFF">收藏 标题</td> 
          <td width="64%" align="left"  bgcolor="#FFFFFF"><%=rs.getString("title")%></td> 
        </tr> 
        <tr align="left"> 
          <td height="13" align="center"  bgcolor="#FFFFFF">时间</td> 
          <td height="0" align="left"  bgcolor="#FFFFFF"><%=rs.getString("btime")%></td> 
        </tr> 
        <tr align="left"> 
          <td height="14" align="center"  bgcolor="#FFFFFF">发布人</td> 
          <td height="0" align="left"  bgcolor="#FFFFFF"><%=rs.getString("uname")%></td> 
        </tr> 
        <tr align="left"> 
          <td height="60" align="center"  bgcolor="#FFFFFF">内容</td> 
          <td height="0" align="left" valign="top"  bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("content")%></td> 
        </tr> 
    <%} %>
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
