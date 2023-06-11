<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.User" %> 
<%@ page import="com.model.Car" %>
<%@ page import="com.core.*" %>
<%@ page import="java.util.*" %>
<%
	if (Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) return;
%>
<html>
<head>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<title>manage_Yxlb</title>
</head>
<body bgcolor="#ffffff"> 
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew"> 
  <tr align="center"> 
    <td colspan="7" class="TableTitle1" >车辆信息</td> 
  </tr> 
  <tr align="center"> 
    <td colspan="6" bgcolor="#FFFFFF">　</td> 
    <td width="30%" bgcolor="#FFFFFF"><a href="car_add.jsp" target="_self" >添加车辆信息</a></td> 
  </tr> 
  <tr align="center"> 
    <td height="27" bgcolor="#FFFFFF">车号</td> 
    <td bgcolor="#FFFFFF">颜色</td> 
    <td bgcolor="#FFFFFF">车辆名称</td> 
    <td bgcolor="#FFFFFF">电话</td> 
    <td bgcolor="#FFFFFF">身份证</td> 
    <td bgcolor="#FFFFFF">备注</td> 
    <td bgcolor="#FFFFFF">修改删除</td> 
  </tr> 
  <%
	BasetableFactory bf=BasetableFactory.getInstance();
	int submit_page=ParamUtils.getIntParameter(request,"page");
	Collection coll=bf.ListCar(submit_page,"");
	if(coll==null||coll.size()<=0){
   %> 
  <tr align="center"> 
    <td height="27" colspan="7" bgcolor="#FFFFFF">类型记录为空</td> 
  </tr>   
  <%
     	}else{
        	Iterator it=coll.iterator();
        	while(it.hasNext()){
        	Car a=(Car)it.next();
     %> 
  <tr align="center"> 
    <td height="27" bgcolor="#FFFFFF"><%=a.getCarNo()%></td> 
    <td bgcolor="#FFFFFF"><%=a.getCarColour()%></td> 
    <td bgcolor="#FFFFFF"><%=a.getName()%></td>  
    <td bgcolor="#FFFFFF"><%=a.getTel()%></td> 
    <td bgcolor="#FFFFFF"><%=a.getSfid()%></td> 
    <td bgcolor="#FFFFFF"><%=a.getBz()%></td> 
    <td bgcolor="#FFFFFF">
      <a href="car_update.jsp?action=modify&id=<%=a.getId()%>"><img src="../images/modify.gif" border="0"></a>&nbsp;&nbsp;
      <a href="car_modify.jsp?action=del&id=<%=a.getId()%>" onClick="javascript:return confirm('你确定删除该类别吗？')"><img src="../images/del.gif" border="0"></a>
    </td> 
  </tr>   <%}%> 
  <tr align="right"> 
    <td height="27" colspan="7" class="TableTitle1" ><%=HtmlUtils.table(bf.getRow("car"),submit_page,"car_list.jsp","")%></td> 
  </tr><%}%> 
</table> 
</body>
</html>
