<!DOCTYPE html>
<%@ page contentType="text/html; charset=GBK" %>
<html>
<head>
<title>用户登录</title>
</head>
<link href="css/css.css" rel="stylesheet" type="text/css">
<script src="js/validate.js"></script>
<body bgcolor="#ffffff" onLoad="clockon(bgclock)"><form action="survey.jsp" method="post">
<table width="780" border="0" cellspacing="0" cellpadding="0" class="tableBorder6" align=center> 
  <tr> 
    <td height="165"><jsp:include page="top.jsp"/></td> 
  </tr> 
  <tr> 
    <td  height="50" align="left" ><h3>信息：</h3></td> 
  </tr>
  <tr>
    <td  height="260" align="center" valign="middle" class="Redfont">
	<%        String error=session.getAttribute("error").toString();
        if(error!=null){
            out.print(error);
        }else{
            out.print("未知错误！！！");
        }%></td>
  </tr>
  
 
  <tr>
    <td height="50" align="center" valign="middle"><a style="cursor:hand" onClick="javascript:history.back();" class="delink">返回上页</a>&nbsp;&nbsp;<a style="cursor:hand" onClick="javascrip:window.close();" class="delink">关闭窗口</a></td>
  </tr> 
  <tr> 
    <td align="center"><jsp:include page="bottom.jsp"/></td> 
  </tr> 
</table> </form>
</body>
</html>
