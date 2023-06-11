<!DOCTYPE html>
<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %> 
<%@ page import="java.util.Iterator" %>
<%@ page import="com.model.*" %>
<%@ page import="com.core.*" %> 
<%@ page import="java.sql.*" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title> </title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<%
	int pllx=Integer.parseInt(request.getParameter("pllx"));
	User user1=(User)session.getAttribute("user");
String user="游客", uid = "";
if(user1!=null){
	user=user1.getName();
    uid=user1.getUid();
}
 %>
<body > 
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0"  class="tableBorder"> 
  <tr> 
    <td height="165" colspan="3"><jsp:include page="top.jsp"/></td> 
  </tr> 
  <tr> 
      <td width="11" rowspan="2"></td> 
    <td width="234" rowspan="2" align="left" valign="top"><jsp:include page="left.jsp"/></td> 
    <td width="536"  align="center" valign="top"><br> 
          <a href="#" onClick="javascript:window.open('add_guestboard.jsp?pllx=<%=pllx%>','Menuhead','location=no,scrollbars=no,menubars=no,toolbars=no,resizable=yes,left=200,top=200,width=500,height=220');">我要	参与讨论</a>
       <br>
	   如果您有问题请与我校联系，可以先注册为我校用户，再参与讨论！
      <table width="781px" border="0" align="center" cellpadding="0" cellspacing="1" bordercolorlight="#FFFFFF" bordercolordark="#777777" class="tableNew"> 
        <tr align="center"> 
          <td height="27" class="TableTitle1">标题</td> 
          <td class="TableTitle1">是否回复</td> 
          <td class="TableTitle1">回复</td> 
        </tr> 
        <%
		int submit_page=ParamUtils.getIntParameter(request,"page");
		BasetableFactory bf=BasetableFactory.getInstance();
		Collection coll=null;
		if(pllx==1){ coll=bf.ListGuestboard(submit_page,"where pllx="+pllx+" ORDER BY gid");}
		else{coll=bf.ListGuestboard(submit_page,"where pllx="+pllx+" ORDER BY gid");}

		if(coll==null||coll.size()<=0){

%> 
        <tr align="center"> 
          <td height="27" colspan="3" bgcolor="#FFFFFF">当前数据为空</td> 
        </tr> 
        <%}else{Iterator it=coll.iterator();
            while(it.hasNext()){Guestboard a=(Guestboard)it.next();%> 
        <tr align="left"> 
          <td height="27" bgcolor="#FFFFFF" style="padding:5px;"><a class="delink" href="guestboard.jsp?gid=<%=a.getGid()%>"><%=a.getTitle()%></a></td> 
          <td height="27" align="center" bgcolor="#FFFFFF"><%=a.getGflag()==0?"否":"是"%></td> 
          <td height="27" align="center" bgcolor="#FFFFFF">
          <%if(pllx==1){ 
            if(a.getRe_uid().equals(uid)){
             %>
          <a href="add_guestboard_hf.jsp?pllx=<%=pllx %>&action=add&gid=<%=a.getGid()%>">回复</a>
          <%
            }else{
          %>
                          指定<%=a.getRe_uid() %> 教师回复
          <%}
           }else{ %>
			<a href="add_guestboard_hf.jsp?pllx=<%=pllx %>&action=add&gid=<%=a.getGid()%>">回复</a>
			
			<%}%> </td> 
        </tr> 
        <%}}%> 
        <tr align="right"> 
          <td height="27" colspan="3" bgcolor="#FFFFFF"><%=HtmlUtils.table(bf.getRow("guestboard ORDER BY gid"),submit_page,"list_guestboard.jsp","&pllx="+pllx)%></td> 
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