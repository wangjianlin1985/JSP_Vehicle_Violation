<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.User" %> 
<%@ page import="com.model.Bill" %>
<%@ page import="com.core.*" %>
<%@ page import="java.util.*" %>
<%if (Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) return;%>
<html>
<head>
<title>manage_bill</title>
</head>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<body> 
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew"> 
  <tr align="center"> 
    <td colspan="5" class="TableTitle1" >��������</td> 
  </tr> 
  <tr align="center"> 
    <td colspan="4" bgcolor="#FFFFFF">��</td> 
    <td bgcolor="#FFFFFF"><a href="add_bill.jsp" target="_self" >��ӱ���</a></td> 
  </tr> 
  <tr align="center"> 
    <td height="27" bgcolor="#FFFFFF">�������</td> 
    <td bgcolor="#FFFFFF">��������</td> 
    <td bgcolor="#FFFFFF">�б�������</td> 
    <td bgcolor="#FFFFFF">Ͷ��������</td> 
    <td width="30%" bgcolor="#FFFFFF">ɾ��</td> 
  </tr>   <%
	  BasetableFactory bf=BasetableFactory.getInstance();
	  int submit_page=ParamUtils.getIntParameter(request,"page");
      Collection coll=bf.ListBill(submit_page,"");
      if(coll==null||coll.size()<=0){
        %> 
  <tr align="center"> 
    <td height="27" colspan="5" bgcolor="#FFFFFF">��ǰ������¼Ϊ��</td> 
  </tr>   
  <%}else{
  Iterator it=coll.iterator();
  while(it.hasNext()){          
  Bill n=(Bill)it.next();%> 
  <tr align="center"> 
    <td height="27" bgcolor="#FFFFFF">
    <a target="_self" href="info_bill.jsp?id=<%=n.getId()%>"><%=n.getBillNO()%></a></td> 
    <td bgcolor="#FFFFFF"><%=n.getBxname()%></td> 
    <td bgcolor="#FFFFFF"><%=n.getCbrname()%> </td> 
    <td bgcolor="#FFFFFF"><%=n.getTbrname()%></td> 
    <td bgcolor="#FFFFFF"><a href="update_bill.jsp?action=modify&id=<%=n.getId()%>"><img src="../images/modify.gif" border="0"></a>&nbsp;&nbsp; <a href="modify_bill.jsp?action=del&id=<%=n.getId()%>" onClick="javascript:return confirm('��ȷ��ɾ���ñ�����')"><img src="../images/del.gif" border="0"></a></td> 
  </tr>   <%}%> 
  <tr align="right"> 
    <td height="27" colspan="5" class="TableTitle1" ><%=HtmlUtils.table(bf.getRow("bill"),submit_page,"manage_bill.jsp","")%></td> 
  </tr>   <%}%> 
</table> 
</body>
</html>
