<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.core.BasetableFactory" %>
<%@ page import="com.model.New" %> 
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link href="css/css.css" rel="stylesheet" type="text/css">
<table width="525" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="9" colspan="3" valign="bottom"></td>
  </tr>
  <tr>
  <form method="POST" action="wz_list.jsp">
    <td height="17" colspan="3" valign="bottom">&nbsp;
            驾使证号:<input type="text" name="number" size="20">
	车牌号:<input type="text" name="carNo" size="20">
	<input type="submit" value="搜索" name="B1"></p></td>
	</form>
  </tr>
  <tr>
    <td height="17" colspan="3" valign="bottom"><a href="list_new.jsp?lid=1"><img src="images/dd4.jpg" border="0"  /></a></td>
  </tr>
  <tr>
    <td width="8">　</td>
    <td width="162" height="130" align="center"><img src="images/picture_newsNotice.gif"  /></td>
    <td width="355" valign="middle"><table width="351"  border="0" align="right" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="3" height="4px"></td>
      </tr>
      <%BasetableFactory bf=BasetableFactory.getInstance();
        Collection coll=bf.ListNew(1000,"where lid=1 ORDER BY ntime DESC");
		if(coll==null||coll.size()<=0){
	  %>
      <tr>
        <td height="25" colspan="3" align="center">没有添加新闻信息</td>
      </tr>
      <%}else{
      
    Iterator it=coll.iterator();
    int i=0;
	while(it.hasNext()){
        New n=(New)it.next();
%>
      <tr>
        <td width="17" height="24"><img src="images/dd5.jpg" border="0" />　</td>
        <td width="334"  height="24"><a href="info_new.jsp?nid=<%=n.getNid()%>">&nbsp;<%=n.getTitle()%></a></td>
      </tr>
      <%}}%>
      <tr>
        <td colspan="3" height="4px"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="3">　</td>
  </tr>
</table>



<table width="525" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="9" colspan="3" valign="bottom"></td>
  </tr>
  <tr>
    <td height="17" colspan="3" valign="bottom"><a href="list_new.jsp?lid=2"><img src="images/dd9.jpg" border="0"  /></a></td>
  </tr>
  <tr>
    <td width="8">　</td>
    <td width="162" height="130" align="center"><img src="images/picture_newsNotice.gif"  /></td>
    <td width="355" valign="middle"><table width="351"  border="0" align="right" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="3" height="4px"></td>
      </tr>
      <%BasetableFactory bf2=BasetableFactory.getInstance();
        Collection coll2=bf2.ListNew(1000,"where lid=2 ORDER BY ntime DESC");
		if(coll2==null||coll2.size()<=0){
	  %>
      <tr>
        <td height="25" colspan="3" align="center">没有添加新闻信息</td>
      </tr>
      <%}else{
      
    Iterator it=coll2.iterator();
    int i=0;
	while(it.hasNext()){
        New n=(New)it.next();
%>
      <tr>
        <td width="17" height="24"><img src="images/dd5.jpg" border="0" />　</td>
        <td width="334"  height="24"><a href="info_new.jsp?nid=<%=n.getNid()%>">&nbsp;<%=n.getTitle()%></a></td>
      </tr>
      <%}}%>
      <tr>
        <td colspan="3" height="4px"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="3">　</td>
  </tr>
</table>


<table width="525" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="9" colspan="3" valign="bottom"></td>
  </tr>
  <tr>
    <td height="17" colspan="3" valign="bottom"><a href="list_new.jsp?lid=3"><img src="images/dd10.jpg" border="0"  /></a></td>
  </tr>
  <tr>
    <td width="8">　</td>
    <td width="162" height="130" align="center"><img src="images/picture_newsNotice.gif"  /></td>
    <td width="355" valign="middle"><table width="351"  border="0" align="right" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="3" height="4px"></td>
      </tr>
      <%BasetableFactory bf3=BasetableFactory.getInstance();
      Collection coll3=bf3.ListNew(1000,"where lid=3 ORDER BY ntime DESC");
		if(coll3==null||coll3.size()<=0){
	  %>
      <tr>
        <td height="25" colspan="3" align="center">没有添加新闻信息</td>
      </tr>
      <%}else{
      
    Iterator it=coll3.iterator();
    int i=0;
	while(it.hasNext()){
        New n=(New)it.next();
%>
      <tr>
        <td width="17" height="24"><img src="images/dd5.jpg" border="0" />　</td>
        <td width="334"  height="24"><a href="info_new.jsp?nid=<%=n.getNid()%>">&nbsp;<%=n.getTitle()%></a></td>
      </tr>
      <%}}%>
      <tr>
        <td colspan="3" height="4px"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="3">　</td>
  </tr>
</table>
