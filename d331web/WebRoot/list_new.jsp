<!DOCTYPE html>
<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.User" %> 
<%@ page import="com.model.New" %>
<%@ page import="com.core.*" %>
<%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title></title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0"  class="tableBorder">
  <tr>
    <td height="165" colspan="2"><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td width="235"  align="left" valign="top"><jsp:include page="left.jsp"/></td>

    <td width="765"   align="center" valign="top">
	  <table><tr><td height="9pt"></td></tr></table>	
	<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew">
        <tr align="center">
          <td colspan="3" class="TableTitle1" >新闻信息信息</td>
        </tr>
        <tr align="center">
          <td height="27" bgcolor="#FFFFFF">新闻信息标题</td>
          <td bgcolor="#FFFFFF">发布时间</td>
          <td bgcolor="#FFFFFF">摘自</td>
        </tr>
        <%
        int lid=Integer.parseInt(request.getParameter("lid"));
        BasetableFactory bf=BasetableFactory.getInstance();
		Collection coll=bf.ListNew("where lid = '"+lid+"' ORDER BY ntime desc");
		if(coll==null||coll.size()<=0){%>

        <tr align="center">
          <td height="27" colspan="3" bgcolor="#FFFFFF">没有添加新闻信息</td>
        </tr><%}else{            Iterator it=coll.iterator();
            while(it.hasNext()){New n=(New)it.next();%>
        <tr align="center">
          <td height="27" bgcolor="#FFFFFF"><a target="_self" href="info_new.jsp?nid=<%=n.getNid()%>" class="delink"><%=n.getTitle()%></a></td>
          <td bgcolor="#FFFFFF"><%=n.getNtime()%></td>
          <td bgcolor="#FFFFFF"><%=ParamUtils.nullToString(n.getFromto(),"无")%></td>
        </tr>         <%}}%>
      </table></td>
  </tr>
  <tr>
    <td>　</td>
  </tr>
  <tr>
    <td colspan="2" align="center"><jsp:include page="bottom.jsp"/></td>
  </tr>
</table>
</body>
</html>
