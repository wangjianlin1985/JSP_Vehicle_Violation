<!DOCTYPE html><%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.core.*" %>
<%@ page import="com.model.User" %>
<%@ page import="com.model.Question" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title> </title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">
	//此方法用以 处理 添加评论时的处理 
	function submits(){
		var discuss = document.getElementById("discuss").value;
		if(discuss==''){
			alert("请输入评论！");
			window.event.retrunValue = false;
			return false;
		}else{
			for(i=0;i<form2.level.length;i++)
  			{
  				if(form2.level[i].checked){
  					window.event.retrunValue = true;
  					return true;
  				}
    		}
			alert("您还没选择评级!!");
			window.event.retrunValue = false;
			return false;
		}
		
	}
	//用以对预约的处理 
	function check(){
		var app = document.getElementById("appname").value;
		var pho = document.getElementById("phone").value;
		var msg = document.getElementById("message").value;
		if(app==''){
			alert("请输入预约人！");
			window.event.retrunValue = false;
			return false;
		}
		if(pho==''){
			alert("请输入联系方式！");
			window.event.retrunValue = false;
			return false;
		}
		if(msg==''){
			alert("请输入讨论！");
			window.event.retrunValue = false;
			return false;
		}
		return true;
	}
	
	
</script>
<body onLoad="clockon(bgclock)">

<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0"  class="tableBorder"> 
  <tr> 
    <td colspan="3"><jsp:include page="top.jsp"/></td> 
  </tr> 
  <tr> 
      <td width="11" rowspan="2"></td> 
    <td width="196" rowspan="2" align="left" valign="top"><jsp:include page="left.jsp"/></td> 
    <td width="547"  align="center" valign="top">
	<table><tr><td height="9"></td></tr></table>
	<div style="width:781px; height:200px; overflow:scroll;">
    <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#45B5E3"> 
        <tr align="center"> 
          <td class="TableTitle1" >资深保险师</td> 
        </tr> 
        <%
		StringUtils su=new StringUtils();
		BasetableFactory bf=BasetableFactory.getInstance();
Collection coll=bf.ListQuestion("ORDER BY qid");
if(coll==null||coll.size()<=0){%> 
        <tr align="center"> 
          <td height="27" bgcolor="#FFFFFF">当前安全常识为空</td> 
        </tr> 
        <%
        }else{            Iterator it=coll.iterator();
            while(it.hasNext()){Question a=(Question)it.next();%> 
        <tr align="left"> 
          <td height="27" bgcolor="#FFFFFF" style="padding-left:5px;"><strong>资深保险师：<%=a.getQuestion()%></strong></td> 
        </tr> 
        <tr align="left"> 
          <td height="27" bgcolor="#FFFFFF" style="padding-left:5px;"><strong>简历：</strong><%=su.escapeHTMLTags(a.getAnswer())%></td> 
        </tr>         <%}%> 
<%}%> 
      </table>
      
      <%
    	try{   
    		//加载MySql的驱动类   
   	 		Class.forName("com.mysql.jdbc.Driver") ; 
   	 		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_myEnterprise?user=root&password=root&useUnicode=true","root","root");   
   	 		String sql = "select * from question";
   	 		PreparedStatement pstmt = conn.prepareStatement(sql);
   	 		ResultSet rs = pstmt.executeQuery();
   	 		%>
	</div>
	
	<form action="to_appointment.jsp" method="post">
    	<table style="margin-top: -10px" width="750px" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#45B5E3">
    	
    		<tr align="center">
    			<td class="TableTitle1" colspan="2"> 预约单</td>
    		</tr>
    		<tr>
    			<td height="27" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong>预约人：</strong></td>
    			<td height="27" width="600" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong><input name="appname" id="appname" type="text"></strong></td>
    		</tr>
    		<tr>
    			<td height="27" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong>预约保险师：</strong></td>
    			<td height="27" width="600" bgcolor="#FFFFFF" style="padding-left:5px;" >
    				<strong>
    					<select name="qname" id="qname" style="width: 130px;">
    					<%while(rs.next()){%>
    						<option><%=rs.getString("question")%></option>
    						
    						<% 
    		}
    	}catch(ClassNotFoundException e){   
    		System.out.println("找不到驱动程序类 ，加载驱动失败！");   
    	e.printStackTrace() ;   
    	}   
    %>
    					</select>
    				</strong>
    			</td>
    		</tr>
    		<tr>
    			<td height="27" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong>预约时间：</strong></td>
    			<td height="27" width="600" bgcolor="#FFFFFF" style="padding-left:5px;" >
    				<strong>
    					<select name="month" id="month" style="width: 45px;">
    						<option>1</option>
    						<option>2</option>
    						<option>3</option>
    						<option>4</option>
    						<option>5</option>
    						<option>6</option>
    						<option>7</option>
    						<option>8</option>
    						<option>9</option>
    						<option>10</option>
    						<option>11</option>
    						<option>12</option>
    					</select>
    				</strong>
    				月
    				<strong>
    					<select name="date" id="date" style="width: 45px;">
    						<option>1</option>
    						<option>2</option>
    						<option>3</option>
    						<option>4</option>
    						<option>5</option>
    						<option>6</option>
    						<option>7</option>
    						<option>8</option>
    						<option>9</option>
    						<option>10</option>
    						<option>11</option>
    						<option>12</option>
    						<option>13</option>
    						<option>14</option>
    						<option>15</option>
    						<option>16</option>
    						<option>17</option>
    						<option>18</option>
    						<option>19</option>
    						<option>20</option>
    						<option>21</option>
    						<option>22</option>
    						<option>23</option>
    						<option>24</option>
    						<option>25</option>
    						<option>26</option>
    						<option>27</option>
    						<option>28</option>
    						<option>29</option>
    						<option>30</option>
    						<option>31</option>
    						<option>32</option>
    					</select>
    				</strong>
    				日
    			</td>
    		</tr>
    		<tr>
    			<td height="27" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong>联系电话：</strong></td>
    			<td height="27" width="600" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong><input name="phone" id="phone" type="text"></strong></td>
    		</tr>
    		<tr>
    			<td height="27" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong>讨论：</strong></td>
    			<td height="50" width="600" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong><textarea name="message" id="message" style="height: 60px"></textarea></strong></td>
    		</tr>
    		<tr align="left">
    			<td colspan="2"  height="27" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong><input type="submit" value="确定" style="width: 80;" onclick="return check()"><input type="reset" value="重置" style="width: 80;"></strong></td>
    		</tr>
    		
    	</table>　
    	</form>
    	<%
    	try{   
    		//加载MySql的驱动类   
   	 		Class.forName("com.mysql.jdbc.Driver") ; 
   	 		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_myEnterprise?user=root&password=root&useUnicode=true","root","root");   
   	 		String sql = "select * from question";
   	 		PreparedStatement pstmt = conn.prepareStatement(sql);
   	 		ResultSet rs = pstmt.executeQuery();
   	 		%>
    	<form name="form2" action="to_discuss.jsp" method="post">
    	<table style="margin-top: -35px" width="750px" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#45B5E3">
    	
    		<tr align="center">
    			<td class="TableTitle1" colspan="2">保险师评价</td>
    		</tr>
    		<tr>
    			<td height="27" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong>保险师：</strong></td>
    			<td height="27" width="600" bgcolor="#FFFFFF" style="padding-left:5px;" >
    				<strong>
    					<select name="qname" style="width: 130px;">
    					<%
    						while(rs.next()){
    					%>
    						<option><%=rs.getString("question")%></option>
    					<%}%>
    					</select>
    					
    				</strong>
    			</td>
    		</tr>
    		<tr>
    			<td height="27" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong>评级：</strong></td>
    			<td height="27" width="600" bgcolor="#FFFFFF" style="padding-left:5px;" > 
    				<strong>
    					<input type="radio" name="level" id="level" value="差">差
    					<input type="radio" name="level" id="level" value="一般">一般
    					<input type="radio" name="level" id="level" value="好">好
    				</strong>
    			</td>
    		</tr>
    		<tr>
    			<td height="27" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong>评价：</strong></td>
    			<td height="27" width="600" bgcolor="#FFFFFF" style="padding-left:5px;" > 
    				<strong>
    					<textarea id="discuss" name="discuss" style="height: 60px"></textarea>
    				</strong>
    			</td>
    		</tr>
    		<tr align="left">
    			<td colspan="2"  height="27" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong><input type="submit" value="确定" style="width: 80;" onclick="return submits()"><input type="reset" value="重置" style="width: 80;"></strong></td>
    		</tr>
    		
    	</table>
    	</form>
    	<% 
    		
    	}catch(ClassNotFoundException e){   
    		System.out.println("找不到驱动程序类 ，加载驱动失败！");   
    	e.printStackTrace() ;   
    	}   
    %>
    <div style="width:781px; height:200px; overflow:scroll;">
    <%
    	try{   
    		//加载MySql的驱动类   
   	 		Class.forName("com.mysql.jdbc.Driver") ; 
   	 		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_myEnterprise?user=root&password=root&useUnicode=true","root","root");   
   	 		String sql = "select * from t_discuss";
   	 		PreparedStatement pstmt = conn.prepareStatement(sql);
   	 		ResultSet rs = pstmt.executeQuery();
   	 		%>
   	 		
   	 	
    	<table style="margin-top: 0px" width="750px" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#45B5E3">
    	
    	
    		<tr align="center">
    			<td class="TableTitle1" colspan="3">用户评价信息显示列表</td>
    		</tr>
    		<%while(rs.next()){%>
    		<tr>
    			<td height="27" width="100" bgcolor="#FFFFFF" style="padding-left:5px;" > <strong><%=rs.getString("uid")%></strong></td>
    			<td height="27" width="200" bgcolor="#FFFFFF" style="padding-left:5px;color: blue;">@<%=rs.getString("qname")%>（服务水平：<%=rs.getString("level")%>）</td>
    			<td height="27" width="500" bgcolor="#FFFFFF" style="padding-left:5px;"><%=rs.getString("discuss")%></td>
    		</tr>
    		<% 
    		}
    	}catch(ClassNotFoundException e){   
    		System.out.println("找不到驱动程序类 ，加载驱动失败！");   
    	e.printStackTrace() ;   
    	}   
    %>
    		
    	</table>
    	</div>
    	
    		
	
	</td> 
  </tr> 
  
  <tr> 
    	
    	
    	
  </tr>

  
  <tr> 
    <td colspan="3" align="center"><jsp:include page="bottom.jsp"/></td> 
  </tr> 
</table> 
</body>
</html>