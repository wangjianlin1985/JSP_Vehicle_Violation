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
    <td colspan="6" class="TableTitle1" >新闻信息管理</td> 
  </tr> 
  <tr align="center"> 
    <td colspan="5" bgcolor="#FFFFFF">类别：
	    <a href="manage_new.jsp?lid=1" target="_self" >交通新闻</a>&nbsp;&nbsp; 
	    <a href="manage_new.jsp?lid=2" target="_self" >安全常识</a>&nbsp;&nbsp; 
	    <a href="manage_new.jsp?lid=3" target="_self" >政策法规</a>
    </td> 
    <td bgcolor="#FFFFFF"><a href="add_new.jsp" target="_self" >添加新闻信息</a></td> 
  </tr> 
  <tr align="center"> 
  	<td height="27" bgcolor="#FFFFFF">类别</td>
    <td bgcolor="#FFFFFF">新闻信息标题</td> 
    <td bgcolor="#FFFFFF">发布时间</td> 
    <td bgcolor="#FFFFFF">发布人</td> 
    <td bgcolor="#FFFFFF">摘自</td> 
    <td width="30%" bgcolor="#FFFFFF">删除</td> 
  </tr>   <%BasetableFactory bf=BasetableFactory.getInstance();
  int submit_page=ParamUtils.getIntParameter(request,"page");
        Collection coll=bf.ListNew(submit_page,str_lb+" ORDER BY ntime DESC");
        if(coll==null||coll.size()<=0){%> 
  <tr align="center"> 
    <td height="27" colspan="6" bgcolor="#FFFFFF">当前新闻信息记录为空</td> 
  </tr>   <%}else{Iterator it=coll.iterator();while(it.hasNext()){          New n=(New)it.next();%> 
  <tr align="center"> 
    <td height="27" bgcolor="#FFFFFF">
    <%if(n.getLid().equals("1")){out.println("交通新闻");} 
      if(n.getLid().equals("2")){out.println("安全常识");} 
      if(n.getLid().equals("3")){out.println("政策法规");} 
    %>
    </td>
    <td bgcolor="#FFFFFF"><a target="_self" href="info_new.jsp?nid=<%=n.getNid()%>"><%=n.getTitle()%></a></td> 
    <td bgcolor="#FFFFFF"><%=n.getNtime()%></td> 
    <td bgcolor="#FFFFFF"><%=bf.SearchUser("WHERE uid='"+n.getUid()+"'").getName()%> </td> 
    <td bgcolor="#FFFFFF"><%=ParamUtils.nullToString(n.getFromto(),"无")%></td> 
    <td bgcolor="#FFFFFF"><a href="modify_new.jsp?action=del&nid=<%=n.getNid()%>" onClick="javascript:return confirm('你确定删除该新闻信息吗？')"><img src="../images/del.gif" border="0"></a></td> 
  </tr>   <%}%> 
  <tr align="right"> 
    <td height="27" colspan="6" class="TableTitle1" ><%=HtmlUtils.table(bf.getRow("new"),submit_page,"manage_new.jsp","")%></td> 
  </tr>   <%}%> 
</table> 
</body>
</html>
