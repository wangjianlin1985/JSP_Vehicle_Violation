 <%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="com.model.User" %>
<%@ page import="com.core.*" %> 
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","no-cache");
User u=null;
if (Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) {
    out.println("<script>parent.location.href='../index.jsp';</script>");    
    return ;
    }else{    u=(User)session.getAttribute("user");}
    
    %>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../css/css.css" rel="stylesheet" type="text/css">
<base target="contents">
</head>

<table width="100%" height="83"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top" background="../images/admin_top.jpg">
    
		<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0" > 
		  <tr> 
		    <td width="442" height="25" align="center">　</td> 
		    <td width="198" align="center" >　</td> 
		    <td width="450" align="center">　</td> 
		    <td width="97" align="center">当前管理员[<%=u.getUid()%>]</td> 
		    <td width="9">　</td> 
		  </tr> 
		  <tr> 
		    <td width="442" height="25" align="center">　</td> 
		    <td width="198" align="center" >　</td> 
		    <td width="450" align="center">　</td> 
		    <td width="97" align="center"><a href="../index.jsp" target="_parent">返回首页</a></td> 
		    <td width="9">　</td> 
		  </tr> 
		  <tr> 
		    <td width="442" height="25" align="center">　</td> 
		    <td width="198" align="center" >　</td> 
		    <td width="450" align="center">　</td> 
		    <td width="97" align="center"><a href="exit.jsp" target="_parent">安全退出</a></td> 
		    <td width="9"></td> 
		  </tr> 
		</table>	
</td>
  </tr>
</table>