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
			//����MySql��������   
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
    <td colspan="7" class="TableTitle1" >ԤԼ������</td>
  </tr>
  <tr align="center">
    <td colspan="7" bgcolor="#FFFFFF">��</td>
  </tr>
  <tr align="center">
    <td height="27" bgcolor="#FFFFFF">�û�</td>
    <td bgcolor="#FFFFFF">ԤԼ��</td>

    <td bgcolor="#FFFFFF">����ʦ</td>
    <td bgcolor="#FFFFFF">ԤԼʱ��</td>
    <td bgcolor="#FFFFFF">��ϵ��ʽ</td>
    <td bgcolor="#FFFFFF" width="300px">����</td>
    <td width="80px" bgcolor="#FFFFFF">����</td>
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
  	<td bgcolor="#FFFFFF"><a href="update_appointment.jsp?id=<%=rs.getInt("id")%>" onClick="javascript:return confirm('��ȷ��ɾ����ԤԼ��')"><img src="../images/del.gif" border="0"></a></td>
  </tr>
  <%
  }
		}catch(ClassNotFoundException e){
			System.out.println("�Ҳ������������� ����������ʧ�ܣ�");
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
