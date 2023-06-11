<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.Wz" %> 
<%@ page import="com.core.*" %>
<%@ page import="java.util.*" %>
<%
	if (Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) return;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>info_soft</title>
</head>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<body bgcolor="#ffffff">
<%
	int id=ParamUtils.getIntParameter(request,"id");BasetableFactory bf=BasetableFactory.getInstance();
	Wz u=bf.SearchWz("WHERE id="+id);
	session.removeAttribute("error");
	if(u.getId()<=0){
    session.setAttribute("error","查找失败");
    response.sendRedirect("error.jsp");}else{
%>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew">
  <tr align="center">
    <td colspan="3" class="TableTitle1" >违章详细信息</td>
  </tr>
  <tr align="center">
    <td width="23%" bgcolor="#FFFFFF">违章</td>
    <td width="37%" align="left" bgcolor="#FFFFFF"><%=u.getName()%></td>
    <td width="40%" rowspan="8" align="center" bgcolor="#FFFFFF"><%String path=bf.SearchHead("WHERE iid='"+u.getIid()+"'").getPath();
    if(path==null||"".equals(path)){out.print("无图片");}else{out.print("<img src=../"+path+" width=150 height=135 >");}%></td>
  </tr>
  <tr align="center">
    <td bgcolor="#FFFFFF">发布者</td>
    <td align="left" bgcolor="#FFFFFF"><%=u.getEdition()%></td>
  </tr>
  <tr align="center">
    <td bgcolor="#FFFFFF">车辆信息分类</td>
    <td align="left" bgcolor="#FFFFFF"><%String name=bf.SearchCar("where id="+u.getSid()).getName();if(name==null){out.print("无");}else{out.print(name);}%></td>
  </tr>

  <tr align="center">
    <td bgcolor="#FFFFFF">推荐指数</td>
    <td align="left" bgcolor="#FFFFFF"><% for(int i=0;i<u.getCommend();i++){out.print("<img src='../images/star.gif'>");}%></td>
  </tr>

  <tr align="center">
    <td bgcolor="#FFFFFF">下载数量</td>
    <td colspan="2" align="left" bgcolor="#FFFFFF"><%=u.getLoadnum()%></td>
  </tr>
  <tr align="center">
    <td bgcolor="#FFFFFF">上传人</td>
    <td colspan="2" align="left" bgcolor="#FFFFFF"><%=bf.SearchUser("WHERE uid='"+u.getUid()+"'").getName()%></td>
  </tr>
  <tr align="center">
    <td bgcolor="#FFFFFF">上传时间</td>
    <td colspan="2" align="left" bgcolor="#FFFFFF"><%=u.getUptime()%></td>
  </tr>
  <tr align="center">
    <td height="80" bgcolor="#FFFFFF">违章介绍</td>
    <td colspan="2" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;<%=u.getIntroduce()%></td>
  </tr>
  <tr align="center">
    <td height="90" bgcolor="#FFFFFF">社团成果展示</td>
    <td colspan="2" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;<%=u.getResume()%></td>
  </tr>
</table>
<table width="80%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="50" colspan="5" align="right"><a href="#" onClick="Jscript:history.back()">返回</a></td>
  </tr>
</table>
<%}%>
</body>
</html>
