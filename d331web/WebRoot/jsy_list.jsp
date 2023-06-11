<!DOCTYPE html>
<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.User" %> 
<%@ page import="com.model.Jsy" %>
<%@ page import="com.core.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Collection" %> 
<%@ page import="java.util.Iterator" %>
<%@ page import="com.model.*" %>
<%@ page import="com.core.*" %> 
<%@ page import="java.sql.*" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title></title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0"  class="tableBorder">
  <tr>
    <td height="165" colspan="2"><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td width="235"  align="left" valign="top"><jsp:include page="left.jsp"/></td>
    <td width="765"  align="center" valign="top">
	  	
	<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew">
        <tr align="center">
          <td colspan="7" class="TableTitle1" >驾驶员信息</td>
        </tr>
        <tr align="center">
		      <td height="27" bgcolor="#FFFFFF">车辆信息</td>
		    <td bgcolor="#FFFFFF">驾驶员名称</td>
		    <td bgcolor="#FFFFFF">驾驶证号</td>
		    <td bgcolor="#FFFFFF">有效期</td>
		    <td bgcolor="#FFFFFF">类型</td>
		    <td bgcolor="#FFFFFF">时间</td>
		    <td bgcolor="#FFFFFF">备注</td>
        </tr>
      <%
      String id=request.getParameter("id");
  BasetableFactory bf=BasetableFactory.getInstance();
  int submit_page=ParamUtils.getIntParameter(request,"page");
  //out.print(idS);
  String sql="";
  if(id!=null){ sql="SELECT * FROM jsy where id='"+id+"' order by id";}
  else{ sql="SELECT * FROM jsy order by id";  }
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
                Jsy form1 = new Jsy();
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
            System.out.println(ps + " jsy select ");
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
          <td height="27" colspan="7" bgcolor="#FFFFFF">没有驾驶员信息</td>
        </tr>
        <%
	     }else{
	     Iterator it=coll.iterator();
	     while(it.hasNext()){
	     Jsy a=(Jsy)it.next();
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
        </tr>         
        <%}}%>
      </table></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><jsp:include page="bottom.jsp"/></td>
  </tr>
</table>
</body>
</html>
