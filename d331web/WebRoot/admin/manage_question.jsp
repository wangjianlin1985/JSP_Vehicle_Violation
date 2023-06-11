<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.User" %> 
<%@ page import="com.model.Question" %>
<%@ page import="com.core.*" %>
<%@ page import="java.util.*" %>
<%if (Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) return;%>
<html>
<head>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<title>manage_question</title>
</head>
<body bgcolor="#ffffff"> 
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew"> 
  <tr align="center"> 
    <td colspan="2" class="TableTitle1" >资深保险师管理</td> 
  </tr> 
  <tr align="center"> 
    <td width="80%" bgcolor="#FFFFFF">　</td> 
    <td width="20%" bgcolor="#FFFFFF"><a href="add_question.jsp" target="_self" >
	添加资深保险师</a></td> 
  </tr> 
  <%StringUtils su=new StringUtils();
 BasetableFactory bf=BasetableFactory.getInstance();  
int submit_page=ParamUtils.getIntParameter(request,"page");Collection coll=bf.ListQuestion(submit_page,"ORDER BY qid");if(coll==null||coll.size()<=0){
%> 
  <tr align="center"> 
    <td height="27" colspan="2" bgcolor="#FFFFFF">当前资深保险师为空</td> 
  </tr> 
  <%        }else{Iterator it=coll.iterator();while(it.hasNext()){Question a=(Question)it.next();
%> 
  <tr align="left"> 
    <td height="27" bgcolor="#FFFFFF"><strong>资深保险师：<%=a.getQuestion()%></strong></td> 
    <td height="27" align="center" bgcolor="#FFFFFF"> <a href="modify_question.jsp?action=del&qid=<%=a.getQid()%>" onClick="javascript:return confirm('你确定删除该安全常识吗？')"><img src="../images/del.gif" border="0"></a></td> 
  </tr> 
  <tr align="left"> 
    <td height="27" colspan="2" bgcolor="#FFFFFF"><strong>基本情况：</strong><%=su.escapeHTMLTags(a.getAnswer())%></td> 
  </tr><%}%> 
  <tr align="right"> 
    <td height="27" colspan="2" class="TableTitle1" ><%=HtmlUtils.table(bf.getRow("question ORDER BY qid"),submit_page,"manage_question.jsp","")%></td> 
  </tr> 
  <%}%> 
</table> 
</body>
</html>
