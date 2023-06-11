<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<%
	String [] strs=request.getParameterValues("e");
	if(strs==null){
		out.println("<script>");
			out.println("window.location='error.jsp'");
			out.println("</script>");
	}else{
			out.println("<script>");
			out.println("alert('"+"根据您提交的问卷，我们建议您购买"+strs[0]+"')");
			out.println("window.location='index.jsp'");
			out.println("</script>");
	}
	
%>

