<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.*" %>
<%@ page import="com.core.*" %>
<%@ page import="java.util.*" %>
<%if (Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) return;%>
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>add_soft</title>
</head>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<script src="../js/validate.js"></script>
<body>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew">
  <tr align="center">
    <td colspan="3" class="TableTitle1" >��Ӽ�ʻԱ��Ϣ</td>
  </tr>
  <form action="jsy_modify.jsp" method="post" name="forms">
    <tr align="center">
      <td width="23%" bgcolor="#FFFFFF">��ʻԱ</td>
      <td width="37%" align="left" bgcolor="#FFFFFF"> <input name="name" type="text"> </td>
    </tr>
    <tr align="center">
      <td width="23%" bgcolor="#FFFFFF">��ʻ֤��</td>
      <td width="37%" align="left" bgcolor="#FFFFFF"> <input name="number" type="text"> </td>
    </tr>
    <tr align="center">
      <td width="23%" bgcolor="#FFFFFF">��Ч��</td>
      <td width="37%" align="left" bgcolor="#FFFFFF"> <input name="xytime" type="text"> </td>
    </tr>
    <tr align="center">
      <td bgcolor="#FFFFFF">������Ϣ</td>
      <td align="left" bgcolor="#FFFFFF">
		<select name="sid">
           <%
          	Collection coll=BasetableFactory.getInstance().ListCar("");
                if(coll==null||coll.size()<=0){
                    out.print("<option>�޳�����Ϣ</option>");
                }else{
                    Iterator it=coll.iterator();
                    while(it.hasNext()){
                        Car s=(Car)it.next();
                        out.print("<option value='"+s.getId()+"' > "+s.getCarNo()+"-"+s.getName()+"</option>)");
                        }
                }
          %>
      </select></td>
    </tr>
    <tr align="center">
      <td bgcolor="#FFFFFF">����</td>
      <td colspan="2" align="left" bgcolor="#FFFFFF">
      <select name="flag">
          <option value="A">AƱ</option>
          <option value="B">BƱ</option>
          <option value="C" selected>CƱ</option>
      </select></td>
    </tr>
    <tr align="center">
      <td width="23%" bgcolor="#FFFFFF">��ע</td>
      <td width="37%" align="left" bgcolor="#FFFFFF"> <input name="bz" type="text"> </td>
    </tr>
    <tr align="center">
      <td height="27" colspan="3" bgcolor="#FFFFFF"> 
        <input type="hidden" name="action" value="add">
        <input type="hidden" name="uid" value="<%=(((User)session.getAttribute("user")).getUid())%>">
        <input name="Submit" type="submit" class="btn_grey" onClick="return softs()" value="�ύ">
&nbsp;&nbsp;
      <input name="Submit2" type="reset" class="btn_grey" value="����"> </td>
    </tr>
  </form>
</table>
<table width="80%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="50" colspan="5" align="right"><a href="#" onClick="Jscript:history.back()">����</a></td>
  </tr>
</table>
</body>
</html>
