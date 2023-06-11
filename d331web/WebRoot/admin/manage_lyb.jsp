<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.*" %>
<%@ page import="com.core.*" %> 
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %> 
<%if (Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) return;%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>manage_guestboard</title>
</head>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<body> 
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew"> 
  <tr align="center"> 
    <td height="30" colspan="3" class="TableTitle1" >讨论簿</td> 
  </tr> 
  <tr align="center"> 
    <td width="77%" height="27" bgcolor="#FFFFFF">讨论标题</td> 
    <td width="11%" bgcolor="#FFFFFF">回复</td> 
    <td width="12%" bgcolor="#FFFFFF">删除</td> 
  </tr> 
  <%
  BasetableFactory bf=BasetableFactory.getInstance();
  int submit_page=ParamUtils.getIntParameter(request,"page");
  //out.print(idS);
  String sql="SELECT * FROM (lyb)  order by gid";
	Collection coll = new ArrayList();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
  int tip = FinalConstants.STEP * (submit_page - 1); //页数
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(sql );
            rs = ps.executeQuery();
            if (tip <= 0) {
                rs.beforeFirst();
            } else {
                if (!rs.absolute(tip)) {
                    rs.beforeFirst();
                }
            }
            for (int i = 1; rs.next() && i <= FinalConstants.STEP; i++) {
                Lyb lyb = new Lyb();
                lyb.setGid(rs.getInt("gid"));
                lyb.setTitle(ParamUtils.getSqlString(rs.getString("title")));
                lyb.setGflag(rs.getInt("gflag"));
                coll.add(lyb);
            }
         } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            System.out.println(ps + " lyb select ");
                    ps.close();
                    ps = null;
                    con.close();
                    con = null;
        }
            
  
   if(coll==null||coll.size()<=0){%> 
  <tr align="center"> 
    <td height="27" colspan="3" bgcolor="#FFFFFF">当前留言为空</td> 
  </tr> 
  <% }else{ 
  Iterator it=coll.iterator(); 
  while(it.hasNext()){
  Lyb a=(Lyb)it.next();%> 
  <tr align="left"> 
    <td height="27" bgcolor="#FFFFFF"><%=a.getTitle()%></td> 
    <td height="27" align="center" bgcolor="#FFFFFF"> <%if(a.getGflag()==0){%> 
      <a href="add_lyb.jsp?action=add&gid=<%=a.getGid()%>">未回复</a>       <%}else{%> 
      <a href="info_lyb.jsp?action=add&gid=<%=a.getGid()%>">已回复</a>      <%}%> </td> 
    <td height="27" align="center" bgcolor="#FFFFFF"><a href="modify_lyb.jsp?action=del&gid=<%=a.getGid()%>" onClick="javascript:return confirm('你确定删除该条讨论吗？')">删除</a></td> 
  </tr>  <%}}%> 
  <tr align="right"> 
    <td height="27" colspan="3" class="TableTitle1" ><%=HtmlUtils.table(bf.getRow("lyb ORDER BY gid"),submit_page,"manage_lyb.jsp","")%></td> 
  </tr> 
</table> 
</body>
</html>
