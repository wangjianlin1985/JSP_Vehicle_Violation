<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.model.User" %>
<%@ page import="com.model.Wz" %> 
<%@ page import="com.core.*" %>
<%@ page import="java.util.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%if (Crazyadept.UserIsOK(session,FinalConstants.STATUS_USER)) return;%>
<html>
<head>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<title>manage_soft</title>
</head>
<body bgcolor="#ffffff">
<%
	User user = (User) session.getAttribute("user");


		try {
			//加载MySql的驱动类   
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager
					.getConnection(
							"jdbc:mysql://127.0.0.1:3306/db_myEnterprise?user=root&password=root&useUnicode=true",
							"root", "root");
			String sql = "select * from t_appointment";
			PreparedStatement pstmt = conn.prepareStatement(sql); 
			ResultSet rs = pstmt.executeQuery();
			%>
			
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableNew">
  <tr align="center">
    <td colspan="7" class="TableTitle1" >预约单管理</td>
  </tr>
  <tr align="center">
    <td colspan="7" bgcolor="#FFFFFF">　</td>
  </tr>
  <tr align="center">
    <td height="27" bgcolor="#FFFFFF">用户</td>
    <td bgcolor="#FFFFFF">预约人</td>

    <td bgcolor="#FFFFFF">保险师</td>
    <td bgcolor="#FFFFFF">预约时间</td>
    <td bgcolor="#FFFFFF">联系方式</td>
    <td bgcolor="#FFFFFF" width="300px">讨论</td>
    <td width="80px" bgcolor="#FFFFFF">操作</td>
  </tr>
  <%
  	while(rs.next()){
  %>
  <tr>
  	<td bgcolor="#FFFFFF"><%=rs.getString("uid")%></td>
  	<td bgcolor="#FFFFFF"><%=rs.getString("appname")%></td>
  	<td bgcolor="#FFFFFF"><%=rs.getString("qname")%></td>
  	<td bgcolor="#FFFFFF"><%=rs.getString("time")%></td>
  	<td bgcolor="#FFFFFF"><%=rs.getString("phone")%></td>
  	<td bgcolor="#FFFFFF"><%=rs.getString("message")%></td>
  	<td bgcolor="#FFFFFF"><a href="update_appointment.jsp?id=<%=rs.getInt("id")%>" onClick="javascript:return confirm('你确定删除该预约吗？')"><img src="../images/del.gif" border="0"></a></td>
  </tr>
  <%
  }
		}catch(ClassNotFoundException e){
			System.out.println("找不到驱动程序类 ，加载驱动失败！");
			e.printStackTrace();
		}
			%>
  
  <tr align="center">
    <td height="27" bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"><a target="_self" href=""></a></td>
    
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
    <td bgcolor="#FFFFFF"></td>
  </tr>

  <tr align="right">
    <td height="27" colspan="7" class="TableTitle1" ></td>
  </tr>

</table>
</body>
</html>
