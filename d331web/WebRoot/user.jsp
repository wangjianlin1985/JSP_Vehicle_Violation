<!DOCTYPE html>
<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="com.model.User" %>
<%@ page import="com.model.Head" %>
<%@ page import="com.core.*" %>
<%@ page import="java.util.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title> </title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="clockon(bgclock)">
 
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0"  class="tableBorder"> 
  <tr> 
    <td colspan="3"><jsp:include page="top.jsp"/></td> 
  </tr> 
  <tr> 
      <td width="11" rowspan="2"></td> 
    <td width="196" rowspan="2" align="left" valign="top"><jsp:include page="left.jsp"/></td> 
    <td width="547"  align="center" valign="top">
	<table><tr><td height="9"></td></tr></table>
	<%String uid=ParamUtils.getRequestString(request,"uid");User u=BasetableFactory.getInstance().SearchUser("WHERE uid='"+uid+"'");
session.removeAttribute("error");if(u.getUid()==null||"".equals(u.getUid())){        session.setAttribute("error","��ѯʧ��");
        response.sendRedirect("error.jsp");}else{%>
	<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew"> 
  <tr align="center"> 
    <td height="40" colspan="2" class="TableTitle1">�û�ע����ϸ��Ϣ</td> 
  </tr> 
  <tr> 
    <td width="239" height="27" bgcolor="#FFFFFF">�û�ID</td> 
    <td width="391" bgcolor="#FFFFFF"><%=ParamUtils.nullToString(u.getUid(),"��")%></td> 
  </tr> 
  <tr> 
    <td height="27" bgcolor="#FFFFFF">����</td> 
    <td bgcolor="#FFFFFF"><%=ParamUtils.nullToString(u.getName(),"��")%></td> 
  </tr> 
  <tr> 
    <td height="27" bgcolor="#FFFFFF">ȡ��������ʾ</td> 
    <td bgcolor="#FFFFFF"><%=ParamUtils.nullToString(u.getRegqu(),"��")%></td> 
  </tr> 
  <tr> 
    <td height="27" bgcolor="#FFFFFF">ȡ������ش�</td> 
    <td bgcolor="#FFFFFF"><%=ParamUtils.nullToString(u.getReganswer(),"��")%></td> 
  </tr> 
  <tr> 
    <td height="27" bgcolor="#FFFFFF">�Ա�</td> 
    <td bgcolor="#FFFFFF"><%=u.getSex()==1?"��":"Ů"%></td> 
  </tr> 
  <tr> 
    <td height="27" bgcolor="#FFFFFF">����</td> 
    <td bgcolor="#FFFFFF"><%=u.getAge()%></td> 
  </tr> 
  <tr> 
    <td height="27" bgcolor="#FFFFFF">�绰</td> 
    <td bgcolor="#FFFFFF"><%=ParamUtils.nullToString(u.getTel(),"��")%></td> 
  </tr> 
  <tr> 
    <td height="27" bgcolor="#FFFFFF">Email</td> 
    <td bgcolor="#FFFFFF"><%=ParamUtils.nullToString(u.getEmail(),"��")%></td> 
  </tr> 
  <tr> 
    <td height="27" bgcolor="#FFFFFF">QQ</td> 
    <td bgcolor="#FFFFFF"><%=ParamUtils.nullToString(u.getQq(),"��")%></td> 
  </tr> 
  <tr> 
    <td height="27" bgcolor="#FFFFFF">���˵�ַ</td> 
    <td bgcolor="#FFFFFF"><%=ParamUtils.nullToString(u.getAddress(),"��")%></td> 
  </tr> 
  <tr> 
    <td height="27" bgcolor="#FFFFFF">������ҳ</td> 
    <td bgcolor="#FFFFFF"><%=ParamUtils.nullToString(u.getHttp(),"��")%></td> 
  </tr> 
  <tr> 
    <td height="27" bgcolor="#FFFFFF">ע��ʱ��</td> 
    <td bgcolor="#FFFFFF"><%=u.getRegtime()%></td> 
  </tr> 
  <tr> 
    <td height="27" bgcolor="#FFFFFF">Ȩ�޼���</td> 
    <td bgcolor="#FFFFFF"><%=u.getStatus()==FinalConstants.STATUS_ADMIN?"����Ա":"��ͨ�û�"%></td> 
  </tr> 
  <tr> 
    <td height="27" bgcolor="#FFFFFF">״̬��ʾ</td> 
    <td bgcolor="#FFFFFF"><%=u.getState()==FinalConstants.STATE_FREE?"����":"����"%></td> 
  </tr> 
  <tr> 
    <td height="60" bgcolor="#FFFFFF">���˼��</td> 
    <td valign="top" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;<%=ParamUtils.nullToString(u.getResume(),"��")%></td> 
  </tr> 
  <tr> 
    <td height="60" bgcolor="#FFFFFF">ͷ��</td> 
    <td bgcolor="#FFFFFF"><%if(u.getIid()==null||"".equals(u.getIid())){        out.print("δѡ��");
}else{    Head h=BasetableFactory.getInstance().SearchHead("WHERE iid='"+u.getIid()+"'");
    out.print("<img  width=60 height=60 src='"+h.getPath()+"'>");}%></td> 
  
  </tr> 
  <tr align="center"> 
    <td height="22" colspan="2" bgcolor="#FFFFFF">��</td> 
  </tr> 
</table> 
<table width="80%"  border="0" cellspacing="0" cellpadding="0"> 
  <tr> 
    <td height="50" colspan="5" align="right"><a href="#" onClick="Jscript:history.back()">����</a></td> 
  </tr> 
</table>  <%}%> </td> 
  </tr> 
  <tr> 
    <td>��</td> 
  </tr> 
  <tr> 
    <td colspan="3" align="center"><jsp:include page="bottom.jsp"/></td> 
  </tr> 
</table> 
</body>
</html>