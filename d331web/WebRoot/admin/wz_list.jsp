<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.User" %> 
<%@ page import="com.model.Wz" %>
<%@ page import="com.core.*" %>
<%@ page import="java.util.*" %>
<%
	if (Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) return;
%>
<html>
<head>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<title>manage_wz</title>
</head>
<body bgcolor="#ffffff">
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew">
  <tr align="center">
    <td colspan="5" class="TableTitle1" >Υ�¹���</td>
  </tr>
  <tr align="center">
    <td colspan="4" bgcolor="#FFFFFF">��</td>
    <td bgcolor="#FFFFFF"><a href="wz_add.jsp" target="_self" >�����Υ��</a></td>
  </tr>
  <tr align="center">
    <td height="27" bgcolor="#FFFFFF">������Ϣ</td>
    <td bgcolor="#FFFFFF">Υ������</td>
    <td bgcolor="#FFFFFF">�ϴ�ʱ��</td>
    <td bgcolor="#FFFFFF">Υ�·���</td>
    <td width="20%" bgcolor="#FFFFFF">�޸�ɾ��</td>
  </tr>
  <%
	BasetableFactory bf=BasetableFactory.getInstance();
	int submit_page=ParamUtils.getIntParameter(request,"page");
	Collection coll=bf.ListWz(submit_page,"ORDER BY id");
	if(coll==null||coll.size()<=0){
  %>
  <tr align="center">
    <td height="27" colspan="5" bgcolor="#FFFFFF">��ǰΥ�¼�¼Ϊ��</td>
  </tr>   
  <%
     }else{
     Iterator it=coll.iterator();
     while(it.hasNext()){
     Wz a=(Wz)it.next();
     %>
  <tr align="center">
    <td height="27" bgcolor="#FFFFFF">
    <%
    String name=bf.SearchCar("where id="+a.getSid()).getName(); 
    if(name==null){out.print("��");}else{out.print(name);}
    %></td>
    <td bgcolor="#FFFFFF"><a target="_self" href="wz_info.jsp?id=<%=a.getId()%>"><%=a.getName()%></a></td>
    <td bgcolor="#FFFFFF"><%=a.getUptime()%></td>
    <td bgcolor="#FFFFFF"><%=a.getResume()%></td>
    <td bgcolor="#FFFFFF"><a href="wz_update.jsp?action=modify&id=<%=a.getId()%>"><img src="../images/modify.gif" border="0"></a>&nbsp;&nbsp; 
    <a href="wz_modify.jsp?action=del&id=<%=a.getId()%>" onClick="javascript:return confirm('��ȷ��ɾ����')"><img src="../images/del.gif" border="0"></a>
    </td>
  </tr>
  <%
   }
%>
  <tr align="right">
    <td height="27" colspan="5" class="TableTitle1" ><%=HtmlUtils.table(bf.getRow("wz"),submit_page,"wz_list.jsp","")%></td>
  </tr>
  <%
}
%>
</table>
</body>
</html>
