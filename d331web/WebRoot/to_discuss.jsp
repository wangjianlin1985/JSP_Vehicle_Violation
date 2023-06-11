<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.model.User"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
	User user = (User) session.getAttribute("user");
	if (user == null) {
		out.println("<script>");
		out.println("alert('您还没有登录！')");
		out.println("window.location='question.jsp'");
		out.println("</script>");
	} else {
		String uid = user.getUid();
		String qname = request.getParameter("qname");
		String level = request.getParameter("level");
		String discuss = request.getParameter("discuss");

		try {
			//加载MySql的驱动类   
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager
					.getConnection(
							"jdbc:mysql://127.0.0.1:3306/db_myEnterprise?user=root&password=root&useUnicode=true",
							"root", "root");
			String sql = "insert into t_discuss values (0,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			pstmt.setString(2, qname);
			pstmt.setString(3, level);
			pstmt.setString(4, discuss);
			int index = pstmt.executeUpdate();
			if (index > 0) {
				out.println("<script>");
				out.println("alert('评论成功！')");
				out.println("window.location='question.jsp'");
				out.println("</script>");
			} else {
				out.println("<script>");
				out.println("alert('评论失败！')");
				out.println("window.location='question.jsp'");
				out.println("</script>");
			}
		} catch (ClassNotFoundException e) {
			System.out.println("找不到驱动程序类 ，加载驱动失败！");
			e.printStackTrace();
		}
	}
%>

