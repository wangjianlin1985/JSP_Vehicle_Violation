<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.User" %>
<%@ page import="com.model.New" %>
<%@ page import="com.core.*" %> 
<%@ page import="java.util.*" %>
<%if (Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) return;
String lid=request.getParameter("lid");
String str_lb="";
if(lid!=null){
	str_lb="where lid="+lid;
	out.println(lid);
	}

%>
<html>
<head>
<title>manage_new</title>
</head>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<body> 
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew"> 
  <tr align="center"> 
    <td colspan="6" class="TableTitle1" >������Ϣ����</td> 
  </tr> 
  <tr align="center"> 
    <td colspan="5" bgcolor="#FFFFFF">���
	    <a href="manage_new.jsp?lid=1" target="_self" >��ͨ����</a>&nbsp;&nbsp; 
	    <a href="manage_new.jsp?lid=2" target="_self" >��ȫ��ʶ</a>&nbsp;&nbsp; 
	    <a href="manage_new.jsp?lid=3" target="_self" >���߷���</a>
    </td> 
    <td bgcolor="#FFFFFF"><a href="add_new.jsp" target="_self" >���������Ϣ</a></td> 
  </tr> 
  <tr align="center"> 
  	<td height="27" bgcolor="#FFFFFF">���</td>
    <td bgcolor="#FFFFFF">������Ϣ����</td> 
    <td bgcolor="#FFFFFF">����ʱ��</td> 
    <td bgcolor="#FFFFFF">������</td> 
    <td bgcolor="#FFFFFF">ժ��</td> 
    <td width="30%" bgcolor="#FFFFFF">ɾ��</td> 
  </tr>   <%BasetableFactory bf=BasetableFactory.getInstance();
  int submit_page=ParamUtils.getIntParameter(request,"page");
        Collection coll=bf.ListNew(submit_page,str_lb+" ORDER BY ntime DESC");
        if(coll==null||coll.size()<=0){%> 
  <tr align="center"> 
    <td height="27" colspan="6" bgcolor="#FFFFFF">��ǰ������Ϣ��¼Ϊ��</td> 
  </tr>   <%}else{Iterator it=coll.iterator();while(it.hasNext()){          New n=(New)it.next();%> 
  <tr align="center"> 
    <td height="27" bgcolor="#FFFFFF">
    <%if(n.getLid().equals("1")){out.println("��ͨ����");} 
      if(n.getLid().equals("2")){out.println("��ȫ��ʶ");} 
      if(n.getLid().equals("3")){out.println("���߷���");} 
    %>
    </td>
    <td bgcolor="#FFFFFF"><a target="_self" href="info_new.jsp?nid=<%=n.getNid()%>"><%=n.getTitle()%></a></td> 
    <td bgcolor="#FFFFFF"><%=n.getNtime()%></td> 
    <td bgcolor="#FFFFFF"><%=bf.SearchUser("WHERE uid='"+n.getUid()+"'").getName()%> </td> 
    <td bgcolor="#FFFFFF"><%=ParamUtils.nullToString(n.getFromto(),"��")%></td> 
    <td bgcolor="#FFFFFF"><a href="modify_new.jsp?action=del&nid=<%=n.getNid()%>" onClick="javascript:return confirm('��ȷ��ɾ����������Ϣ��')"><img src="../images/del.gif" border="0"></a></td> 
  </tr>   <%}%> 
  <tr align="right"> 
    <td height="27" colspan="6" class="TableTitle1" ><%=HtmlUtils.table(bf.getRow("new"),submit_page,"manage_new.jsp","")%></td> 
  </tr>   <%}%> 
</table> 
</body>
</html>
