<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.User" %>
<%@ page import="com.core.*" %>
<% 
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","no-cache");
if (Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) {
	response.sendRedirect("../user_logon.jsp");
}
%>
<html>
<head>
<title>����Ա����̨</title>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
</head>





<frameset rows="88,*">
	<frame src="top.jsp" name="topFrame" scrolling="NO" noresize target="contents">
	<frameset cols="200,*">
		<frame src="left.jsp" name="leftFrame" scrolling="auto" noresize target="main">
		<frame src="main.jsp" name="mainFrame">
	</frameset>
	<noframes>
	<body>

	<p>����ҳʹ���˿�ܣ��������������֧�ֿ�ܡ�</p>

	</body>
	</noframes>
</frameset>
</html>
