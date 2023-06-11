<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %> 
<%@ page import="com.core.BasetableFactory" %>
<%@ page import="com.model.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<script src="js/validate.js"></script>

<%BasetableFactory bf=BasetableFactory.getInstance();%>
<table width="226" border="0" cellpadding="0" cellspacing="0" height="516">
<tr><td height="5"></td></tr>

  <tr>
    <td width="233" height="150" background="images/dd1.jpg">　
    
    
     <form method="post" action="user_modify.jsp" name="forms"> 

    <table width="96%" border="0" cellpadding="0" cellspacing="0">
<%

User u=null;
 u=(User)session.getAttribute("user");
    
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","no-cache");

%>
     <%if(u!=null){%>
      <tr>
        <td height="27" align="right" colspan="2">
		<p align="center">当前用户[<%=u.getUid()%>]登陆　
		<br><a href="user.jsp?uid=<%=u.getUid()%>" target="_parent">个人中心</a> [<a href="user_update.jsp?uid=<%=u.getUid()%>" target="_parent">修改</a>]
		<br>
		<span style="font-size: 10.5pt; font-family: 宋体">
		<a href="admin/index.jsp">进入管理</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin/exit.jsp" target="_parent">安全退出</a>
		
		</span>
		
		<br></td> 
       </tr>
<%}else{%>
      <tr>
        <td height="27" align="right">用户名：</td> 
        <td height="25" ><input name="uid" type="text" size="15"></td>
        </tr>

      <tr>
            <td height="27" align="right">密&nbsp;&nbsp;码：</td> 
        <td height="25" valign="middle"  class="tableBorder_B_dashed">
		<input name="password" type="password" size="15">
		<input type="hidden" value="logon" name="action" > </td>
        </tr>

      <tr>
        <td height="25" valign="middle"  class="tableBorder_B_dashed" colspan="2">
		<p align="center"><input name="Submit" type="submit" class="btn_grey" onClick="return logons()" value="登录"> 
              <input name="Submit3" type="button" class="btn_grey" onClick="javascript:location.href='user_reg.jsp'" value="注册"></td>
        </tr><%}%>

    </table></form>
    
    </td>
  </tr>
  <tr>
    <td height="13">&nbsp;</td>
  </tr>




  <tr>
    <td width="233" height="150" background="images/dd2.jpg" align=center>
    <table width="92%" border="0" cellpadding="0" cellspacing="0">
      <%Collection coll=bf.ListAffiche("ORDER BY atime desc");
if(coll==null||coll.size()<0||coll.isEmpty()){%>
      <tr>
        <td height="25" >没有公告内容</td>
        </tr>
      <%}else{
	      Iterator it=coll.iterator();
		  while(it.hasNext()){
		      Affiche l=(Affiche)it.next();
%>
      <tr>
        <td height="25" valign="middle"  class="tableBorder_B_dashed">&nbsp;<img src="images/left_ico.GIF" width="4" height="7" border="0" />&nbsp;<a class="delink" href="#" onClick="javascript:window.open('affiche.jsp?aid=<%=l.getAid()%>','Menuhead','location=no,scrollbars=no,menubars=no,toolbars=no,resizable=yes,left=200,top=200,width=500,height=300');"><%=l.getTitle()%></a></td>
        </tr>
      <%}}%>
    </table>
    </td>
  </tr>
  <tr>
    <td height="13">　</td>
  </tr>
<tr>
    <td height="150" background="images/dd3.jpg" align=center><table width="92%" border="0" cellpadding="0" cellspacing="0">
      <%Collection coll4=bf.ListLink(0,"ORDER BY ltime desc");
	  if(coll4==null||coll4.size()<0){%>
      <tr>
        <td height="25">没有友情链接</td>
      </tr>
      <%}else{
	      Iterator it=coll4.iterator();
		  while(it.hasNext()){
		       Link l=(Link)it.next();%>
      <tr>
        <td height="25" class="tableBorder_B_dashed">&nbsp;<img src="images/left_ico.GIF" width="4" height="7" border="0" />&nbsp;<a href="<%=l.getUrl()%>" target="_parter" class="delink"><%=l.getName()%></a></td>
      </tr>
      <%}}%>
    </table></td>
  </tr>
  
  <tr>
    <td height="29" align="center" valign="middle" ></td>
  </tr>

  
<tr>
    <td height="29" align="center" valign="middle"></td>
  </tr>
  
  
  
  </table>
