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
    <td colspan="3" class="TableTitle1" >添加驾驶员信息</td>
  </tr>
  <form action="jsy_modify.jsp" method="post" name="forms">
    <tr align="center">
      <td width="23%" bgcolor="#FFFFFF">驾驶员</td>
      <td width="37%" align="left" bgcolor="#FFFFFF"> <input name="name" type="text"> </td>
    </tr>
    <tr align="center">
      <td width="23%" bgcolor="#FFFFFF">驾驶证号</td>
      <td width="37%" align="left" bgcolor="#FFFFFF"> <input name="number" type="text"> </td>
    </tr>
    <tr align="center">
      <td width="23%" bgcolor="#FFFFFF">有效期</td>
      <td width="37%" align="left" bgcolor="#FFFFFF"> <input name="xytime" type="text"> </td>
    </tr>
    <tr align="center">
      <td bgcolor="#FFFFFF">车辆信息</td>
      <td align="left" bgcolor="#FFFFFF">
		<select name="sid">
           <%
          	Collection coll=BasetableFactory.getInstance().ListCar("");
                if(coll==null||coll.size()<=0){
                    out.print("<option>无车辆信息</option>");
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
      <td bgcolor="#FFFFFF">类型</td>
      <td colspan="2" align="left" bgcolor="#FFFFFF">
      <select name="flag">
          <option value="A">A票</option>
          <option value="B">B票</option>
          <option value="C" selected>C票</option>
      </select></td>
    </tr>
    <tr align="center">
      <td width="23%" bgcolor="#FFFFFF">备注</td>
      <td width="37%" align="left" bgcolor="#FFFFFF"> <input name="bz" type="text"> </td>
    </tr>
    <tr align="center">
      <td height="27" colspan="3" bgcolor="#FFFFFF"> 
        <input type="hidden" name="action" value="add">
        <input type="hidden" name="uid" value="<%=(((User)session.getAttribute("user")).getUid())%>">
        <input name="Submit" type="submit" class="btn_grey" onClick="return softs()" value="提交">
&nbsp;&nbsp;
      <input name="Submit2" type="reset" class="btn_grey" value="重置"> </td>
    </tr>
  </form>
</table>
<table width="80%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="50" colspan="5" align="right"><a href="#" onClick="Jscript:history.back()">返回</a></td>
  </tr>
</table>
</body>
</html>
