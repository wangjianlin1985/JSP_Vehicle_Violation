<!DOCTYPE html>
<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %> 
<%@ page import="com.core.*" %>
<%@ page import="com.model.New" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title> </title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="clockon(bgclock)"> 
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0"  > 
  <tr> 
    <td height="165" colspan="3"><jsp:include page="top.jsp"/></td> 
  </tr> 
  <%int nid=ParamUtils.getIntParameter(request,"nid");
New n=BasetableFactory.getInstance().SearchNew("WHERE nid="+nid);%> 
  <tr> 
    <td width="250" rowspan="2" align="left" valign="top"><jsp:include page="left.jsp"/></td> 
    
    <td width="750"  align="center" valign="top" ><br>
    <table width="100%"  border="0" cellpadding="0" cellspacing="0" class="tableBorder"> 
        <tr> 
          <td height="50" align="center" class="TableTitle1">
			<font size="5" face="微软雅黑"><%=n.getTitle()%></font></td> 
        </tr> 
        <tr> 
          <td height="84"><%=n.getContent()%></td> 
        </tr> 
        <tr> 
          <td height="26" align="right">摘自——<%=n.getFromto()%></td> 
        </tr> 
        <tr> 
          <td height="27" align="right">添加时间&nbsp;&nbsp;<%=n.getNtime()%></td> 
        </tr> 
        <tr> 
          <td height="27" align="center"><a class="delink" onClick="javascript:history.back()" href="#">返回</a></td> 
        </tr> 
      </table></td> 
  </tr> 
  <tr> 
    <td>　</td> 
  </tr> 
  <tr> 
    <td colspan="3" align="center"><jsp:include page="bottom.jsp"/></td> 
  </tr> 
</table> 
</body>
</html>