<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.User" %> 
<%@ page import="com.model.Wx" %>
<%@ page import="com.core.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Collection" %> 
<%@ page import="java.util.Iterator" %>
<%@ page import="com.model.*" %>
<%@ page import="com.core.*" %> 
<%@ page import="java.sql.*" %> 
<%
	if (Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) return;
	String id=request.getParameter("id");
%>
<html>
<head>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<title>manage_wz</title>
</head>
<body bgcolor="#ffffff">
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew">
  <tr align="center">
    <td colspan="8" class="TableTitle1" >维修信息管理</td>
  </tr>
  <tr align="center">
    <td colspan="7" bgcolor="#FFFFFF">　</td>
    <td bgcolor="#FFFFFF"><a href="wx_add.jsp" target="_self" >添加新维修信息</a></td>
  </tr>
  <tr align="center">
    <td height="27" bgcolor="#FFFFFF">车辆信息</td>
    <td bgcolor="#FFFFFF">维修名称</td>
    <td bgcolor="#FFFFFF">维修号</td>
    <td bgcolor="#FFFFFF">有效期</td>
    <td bgcolor="#FFFFFF">类型</td>
    <td bgcolor="#FFFFFF">时间</td>
    <td bgcolor="#FFFFFF">备注</td>
    <td width="20%" bgcolor="#FFFFFF">修改删除</td>
  </tr>
<%
  BasetableFactory bf=BasetableFactory.getInstance();
  int submit_page=ParamUtils.getIntParameter(request,"page");
  //out.print(idS);
  String sql="";
  if(id!=null){ sql="SELECT * FROM wx where id='"+id+"' order by id";}
  else{ sql="SELECT * FROM wx order by id";  }
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
                Wx form1 = new Wx();
                form1.setId(rs.getString("id"));
                form1.setName(ParamUtils.getSqlString(rs.getString("name")));
                form1.setNumber(ParamUtils.getSqlString(rs.getString("number")));
                form1.setUptime(ParamUtils.getSqlString(rs.getString("uptime")));
                form1.setUid(rs.getString("uid"));
                form1.setSid(rs.getString("sid"));
                form1.setXytime(rs.getString("xytime"));
                form1.setFlag(rs.getString("flag"));
                form1.setBz(rs.getString("bz"));
                coll.add(form1);
            }
         } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            System.out.println(ps + " Wx select ");
                if (ps != null) {
                    ps.close();
                    ps = null;
                }
                if (con != null) {
                    con.close();
                    con = null;
                }
        }
	if(coll==null||coll.size()<=0){
%> 
  <tr align="center">
    <td height="27" colspan="5" bgcolor="#FFFFFF">当前维修信息为空</td>
  </tr>   
  <%
     }else{
     Iterator it=coll.iterator();
     while(it.hasNext()){
     Wx a=(Wx)it.next();
     %>
  <tr align="center">
    <td height="27" bgcolor="#FFFFFF">
    <%
    String name=bf.SearchCar("where id="+a.getSid()).getName(); 
    if(name==null){out.print("无");}else{out.print(name);}
    %></td>
    <td bgcolor="#FFFFFF"><%=a.getName()%></td>
    <td bgcolor="#FFFFFF"><%=a.getNumber()%></td>
    <td bgcolor="#FFFFFF"><%=a.getXytime()%></td>
    <td bgcolor="#FFFFFF"><%=a.getFlag()%></td>
    <td bgcolor="#FFFFFF"><%=a.getUptime()%></td>
    <td bgcolor="#FFFFFF"><%=a.getBz()%></td>
    <td bgcolor="#FFFFFF"><a href="wx_update.jsp?action=modify&id=<%=a.getId()%>"><img src="../images/modify.gif" border="0"></a>&nbsp;&nbsp; 
    <a href="wx_modify.jsp?action=del&id=<%=a.getId()%>" onClick="javascript:return confirm('你确定删除吗？')"><img src="../images/del.gif" border="0"></a>
    </td>
  </tr>
  <%
   }
%>
  <tr align="right">
    <td height="27" colspan="8" class="TableTitle1" ><%=HtmlUtils.table(bf.getRow("wx"),submit_page,"wx_list.jsp","")%></td>
  </tr>
  <%
}
%>
</table>
</body>
</html>
