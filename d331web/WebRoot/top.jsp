<!DOCTYPE html>
<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.core.BasetableFactory" %> 
<%@ page import="com.model.*" %>


<html lang="en">

<head>
<meta charset="gb2312" />
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=GBK">

<!-- css -->
<link rel="stylesheet" href="css/style1.css" />
<script src="js/jquery-1.9.1.min.js"></script>
<script>
    $(document).ready(function() {
        $( '.dropdown' ).hover(
            function(){
                $(this).children('.sub-menu').slideDown(200);
            },
            function(){
                $(this).children('.sub-menu').slideUp(200);
            }
        );
    }); // end ready
</script>

<%BasetableFactory bf=BasetableFactory.getInstance();%>
</head>

<body>
<table width="980" height="252" border="0" align="center" cellpadding="0" cellspacing="0">
 <tr>
    <td  colspan="2" valign=top bgcolor="#EEEEEE" align="center">
<div id="wrapper" >

<nav>
    <ul class="content clearfix">
        <li><a href="index.jsp">��ҳ</a></li>
        <li class="dropdown"><a href="#">������Ϣ</a>
        <ul class="sub-menu">
                <li class="dropdown"><a href="list_new.jsp?lid=1">��ͨ����</a> </li>
                <li class="dropdown"><a href="list_new.jsp?lid=2">��ȫ��ʶ</a> </li>
                <li class="dropdown"><a href="list_new.jsp?lid=3">���߷���</a> </li>
        </ul>
                
        <li class="dropdown"><a href="car_list.jsp">������ѯ</a></li>
                
        </li>
        <li class="dropdown"><a href="#">��������</a>
        	<ul class="sub-menu">
        		<li  class="dropdown"><a href="wz_list.jsp">Υ����Ϣ</a></li>
        		<li  class="dropdown"><a href="jsy_list.jsp">��ʻԱ��Ϣ</a></li>
                <li  class="dropdown"><a href="wx_list.jsp">ά����Ϣ</a></li>
                <li  class="dropdown"><a href="clbf_list.jsp">��������</a></li>
            </ul>
        </li>
        <li><a href="list_lyb.jsp">���԰�</a></li>
        
    </ul>
</nav>
   </div> 
    </td>
  </tr>
  <tr>
    <td align=right colspan="2" background="images/ad.JPG"  height=350  valign=bottom>
	<table border="0" width="50%">
		<tr>
        <td width="10%"><img src="images/top_homepage.GIF" width="11" height="10" /></td>
        <td width="25%"><a href="#" onclick="this.style.behavior='url(#default#homepage)';this.sethomepage('http://localhost')">��Ϊ��ҳ</a></td>
        <td width="10%"><img src="images/top_favorite.GIF" width="11" height="9" /></td>
        <td width="25%"><a href="JavaScript:window.external.AddFavorite('Http://localhost','XXXX')">�ղر�վ</a></td>
        <td width="10%" align="center" valign="middle"><img src="images/top_contact.GIF" width="11" height="8" /></td> 
        <td width="20%" align="center" valign="middle">
	<a href="mailto:123@qq.com">��ϵ����</a></td> 
		</tr>
	</table>
	</td>
  </tr>
</table>
</body>