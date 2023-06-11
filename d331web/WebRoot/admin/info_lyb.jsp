<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.*" %>
<%@ page import="com.core.*" %> 
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*" %>
<%if (Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) return;%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>add_guestboard</title>
<link href="../css/css.css" rel="stylesheet" type="text/css">
</head>
<body> 
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew"> 
  <tr align="center"> 
    <td height="30" colspan="2" class="TableTitle1" >回复讨论信息</td> 
  </tr>  
   <%
   int gid=ParamUtils.getIntParameter(request,"gid");
   
  BasetableFactory bf=BasetableFactory.getInstance();
  //out.print(idS);
  String sql="SELECT * FROM (lyb) WHERE gid="+gid;
	Collection coll = new ArrayList();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        Lyb a = new Lyb();
        try {
            
            con = Database.getConnection();
            ps = con.prepareStatement(sql );
            rs = ps.executeQuery();
            for (int i = 1; rs.next() && i <=rs.getRow(); i++) {
                
                a.setGid(rs.getInt("gid"));
                a.setTitle(ParamUtils.getSqlString(rs.getString("title")));
                a.setGflag(rs.getInt("gflag"));
                a.setGtime(ParamUtils.getSqlString(rs.getString("gtime")));
                a.setGuest(ParamUtils.getSqlString(rs.getString("guest")));
                a.setContent(ParamUtils.getSqlString(rs.getString("content")));
                a.setRecontent(ParamUtils.getSqlString(rs.getString("recontent")));
                coll.add(a);
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
            
  
   
   
   
   if(a.getGid()<=0){
   %> 
  <tr align="center"> 
    <td height="27" colspan="2" bgcolor="#FFFFFF">当前讨论为空</td> 
  </tr>   
  <%}else{%> 
  <tr align="center"> 
    <td width="36%" height="27" bgcolor="#FFFFFF">讨论标题</td> 
    <td width="64%" align="left" bgcolor="#FFFFFF"><%=a.getTitle()%></td> 
  </tr> 
  <tr align="left"> 
    <td height="13" align="center" bgcolor="#FFFFFF">讨论时间</td> 
    <td height="0" align="left" bgcolor="#FFFFFF"><%=a.getGtime()%></td> 
  </tr> 
  <tr align="left"> 
    <td height="14" align="center" bgcolor="#FFFFFF">留&nbsp;言&nbsp;人</td> 
    <td height="0" align="left" bgcolor="#FFFFFF"><%=a.getGuest()%></td> 
  </tr> 
  <tr align="left"> 
    <td height="60" align="center" bgcolor="#FFFFFF">讨论内容</td> 
    <td height="0" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;<%=a.getContent()%></td> 
  </tr> 
  <tr align="left"> 
    <td height="60" align="center" bgcolor="#FFFFFF">回复内容</td> 
    <td height="0" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;<%=a.getRecontent()%></td> 
  </tr> 
  <tr align="right"> 
    <td height="27" colspan="2" bgcolor="#FFFFFF"><a class="delink" onClick="javascript:history.back()" href="#">返回</a></td>     
    <%}%> 
</table> 
</body>
</html>
