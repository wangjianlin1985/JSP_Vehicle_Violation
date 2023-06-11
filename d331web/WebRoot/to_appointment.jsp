<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.model.User"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
	User user = (User) session.getAttribute("user");
	if (user == null) {
		out.println("<script>");
		out.println("alert('您还没有登录！')");
		out.println("window.location='question.jsp'");
		out.println("</script>");
	} else {
		String uid = user.getUid();
		String today = new SimpleDateFormat("yyyy-MM-dd")
				.format(new Date());
		String todayMonth = today.substring(today.indexOf("-") + 1,
				today.lastIndexOf("-"));
		String todayDate = today.substring(today.lastIndexOf("-") + 1);
		String month = request.getParameter("month");
		String date = request.getParameter("date");
		if (Integer.parseInt(month) >= Integer.parseInt(todayMonth)) {
			if (Integer.parseInt(date) > Integer.parseInt(todayDate)) {
				
			} else {
				out.println("<script>");
				out.println("alert('您选择的时间是现在的或者过去的时间，不能预约！')");
				out.println("window.location='question.jsp'");
				out.println("</script>");
				return;
			}
		} else {
			out.println("<script>");
			out.println("alert('您选择的时间是过去的时间，不能预约！')");
			out.println("window.location='question.jsp'");
			out.println("</script>");
			return;
		}

		try {
			//加载MySql的驱动类   
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager
					.getConnection(
							"jdbc:mysql://127.0.0.1:3306/db_myEnterprise?user=root&password=root&useUnicode=true",
							"root", "root");
			String sql = "select * from t_appointment where uid=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				out.println("<script>");
				out.println("alert('您已经预约过了！')");
				out.println("window.location='question.jsp'");
				out.println("</script>");
			} else {
				sql = "insert into t_appointment values (0,?,?,?,?,?,?)";
				String appname = request.getParameter("appname");
				String qname = request.getParameter("qname");
				String phone = request.getParameter("phone");
				String message = request.getParameter("message");

				String time = month + "月" + date + "日";

				pstmt.setString(1, uid);
				pstmt.setString(2, appname);
				pstmt.setString(3, qname);
				pstmt.setString(4, time);
				pstmt.setString(5, phone);
				pstmt.setString(6, message);
				int index = pstmt.executeUpdate();
				if (index > 0) {
					out.println("<script>");
					out.println("alert('预约成功！')");
					out.println("window.location='index.jsp'");
					out.println("</script>");
				} else {
					out.println("<script>");
					out.println("alert('预约失败！')");
					out.println("window.location='index.jsp'");
					out.println("</script>");
				}
			}

		} catch (ClassNotFoundException e) {
			System.out.println("找不到驱动程序类 ，加载驱动失败！");
			e.printStackTrace();
		}
	}
%>