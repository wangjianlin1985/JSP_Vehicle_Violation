<!DOCTYPE html><%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %> 
<%@ page import="java.util.Iterator" %>
<%@ page import="com.core.*" %>
<%@ page import="com.model.New" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title> </title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="clockon(bgclock)"> 
<table width="750" border="0" align="center" cellpadding="0" cellspacing="0"  class="tableBorder6"> 
  <tr> 
    <td height="165" colspan="3"><jsp:include page="top.jsp"/></td> 
  </tr> 

  <tr> 
    <td width="196" rowspan="2" align="left" valign="top"><jsp:include page="left.jsp"/></td> 
    
    <td width="545"  align="center" valign="top" >
    <form action="survey.jsp" method="post">
	<table border="1" width="781px">
	 <tr>
  	<td   height="50" align="left"><h3>保险调查问卷：</h3></td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">1.您对现有的保险公司及其社团的关注程度？[单选题]</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="radio" name="a" value="A、十分关注">A、十分关注
  		<input type="radio" name="a" value="B、比较关注">B、比较关注
  		<input type="radio" name="a" value="C、一般">C、一般
  		<input type="radio" name="a" value="D、关注">D、关注
  		<input type="radio" name="a" value="E、不关注">E、不关注
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">2.你知道哪些保险公司？[填空题]</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input  name="b1" type="text" width="200">
  		<input  name="b2" type="text" width="200">
  		<input  name="b3" type="text" width="200">
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">3.您是否购买了或准备购买商业保险[单选题]</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="radio" name="c" value="A.已经购买">A.已经购买
  		<input type="radio" name="c" value="B.想买但还没有买">B.想买但还没有买
  		<input type="radio" name="c" value="C.没有买也不想买">C.没有买也不想买
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">4.如果您决定购买人寿保险，您认为每年存入多少钱比较合适？[单选题]</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="radio" name="d" value="A.1000元以下">A.1000元以下
  		<input type="radio" name="d" value="A.1000元以下">B.1000-3000元
  		<input type="radio" name="d" value="C.3000-5000元">C.3000-5000元
  		<input type="radio" name="d" value="D.5000元以上">D.5000元以上
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">5.如果您购买（再次购买）保险，您会比较愿意购买哪类保险？[多选题]</td>
  	
  </tr>
  <tr>

	<td align="left">
  		<input type="checkbox" name="e" value="活动课程">A.活动课程
  		<input type="checkbox" name="e" value="学科课程">B.学科课程
  		<input type="checkbox" name="e" value="养老险">C.养老险
  		<input type="checkbox" name="e" value="教育险">D.教育险
  		<input type="checkbox" name="e" value="分红险人寿保险">E.分红险人寿保险
  		<input type="checkbox" name="e" value="健康保险">F.健康保险
  		<input type="checkbox" name="e" value="医疗保险">G.医疗保险
  		<input type="checkbox" name="e" value="少儿保险">H.少儿保险
  		<input type="checkbox" name="e" value="意外伤害保险">I.意外伤害保险
  		<input type="checkbox" name="e" value="家庭财产保险">J.家庭财产保险
  		<input type="checkbox" name="e" value="其他保险">K.其他保险
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">您从哪些渠道获得这些保险公司及其社团的信息？[多选题]
	
  	</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="checkbox" name="f" value="A.保险代理人介绍">A.保险代理人介绍
  		<input type="checkbox" name="f" value="B.朋友推荐">B.朋友推荐
  		<input type="checkbox" name="f" value="C.报纸、杂志纸质媒体63">C.报纸、杂志纸质媒体
  		<input type="checkbox" name="f" value="D.电视,网络">D.电视,网络
  		<input type="checkbox" name="f" value="E.其他 ">E.其他 
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">7.在选择人寿保险公司投保过程中，您最看重公司哪一方面？[单选题]
	
</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="radio" name="g" value="A.品牌知名度">A.品牌知名度
  		<input type="radio" name="g" value="B.服务质量">B.服务质量
  		<input type="radio" name="g" value="C.社团功能">C.社团功能
  		<input type="radio" name="g" value="D.社团价格">D.社团价格
  		<input type="radio" name="g" value="E.代理人素质">E.代理人素质
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">8.您目前的婚姻状况[单选题]
	
</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="radio" name="h" value="A.未婚">A.未婚
  		<input type="radio" name="h" value="B.已婚">B.已婚
  		<input type="radio" name="h" value="C.同居">C.同居
  		<input type="radio" name="h" value="D.离异或丧偶">D.离异或丧偶
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">9.您目前所从事的职业[单选题]
	
</td>
  	
  </tr>
  <tr>

	<td align="left">
  		<input type="radio" name="i" value="A.国家机关/政党机关和社会团体">A.国家机关/政党机关和社会团体
  		<input type="radio" name="i" value="B.科研及综合技术服务业">B.科研及综合技术服务业
  		<input type="radio" name="i" value="C.电力/煤气及水的生产和供应业">C.电力/煤气及水的生产和供应业
  		<input type="radio" name="i" value="D.卫生/药品/保建业">D.卫生/药品/保建业
  		<input type="radio" name="i" value="E.教育/文化和广播电影电视业">E.教育/文化和广播电影电视业
  		<input type="radio" name="i" value="F.交通运输仓储业">F.交通运输仓储业
  		<input type="radio" name="i" value="G.金融保险业">G.金融保险业
  		<input type="radio" name="i" value="H.计算机IT业">H.计算机IT业
  		<input type="radio" name="i" value="I.意外伤害保险I.房地产业">I.意外伤害保险I.房地产业
  		<input type="radio" name="i" value="J.汽车业">J.汽车业
  		<input type="radio" name="i" value="J.汽车业">K.通讯业
  		<input type="radio" name="i" value="L.制造业">L.制造业
  		<input type="radio" name="i" value="M.批发零售贸易业">M.批发零售贸易业
  		<input type="radio" name="i" value="N.商务/咨询服务业">N.商务/咨询服务业
  		<input type="radio" name="i" value="O.旅游/餐饮/娱乐业">O.旅游/餐饮/娱乐业
  		<input type="radio" name="i" value="P.学生">P.学生
  		<input type="radio" name="i" value="Q.家庭主妇">Q.家庭主妇
  		<input type="radio" name="i" value="R.其它">R.其它
  	</td>
  </tr>
  
   <tr>
  	<td height="40" align="left" style="font: bold;">10.您家庭税前月总收入[单选题]
	
</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="radio" name="j" value="A.1000元以下">A.1000元以下
  		<input type="radio" name="j" value="D. 10000元以上">D. 10000元以上
  		<input type="radio" name="j" value="C.5000-10000元10">C.5000-10000元
  		<input type="radio" name="j" value="D. 10000元以上">D. 10000元以上
  	</td>
  </tr>
  <tr>
  	<td height="50" align="left">
  		<input style="color: red;" type="submit" value="提交问卷">
  		<input style="color: red;" type="reset" value="重置">
  	</td>
  </tr>
	</table>
	</form>
	</td> 
  </tr> 
  <tr> 
    <td>　</td> 
  </tr> 
  <tr> 
    <td colspan="3" align="center"><jsp:include page="bottom.jsp"/></td> 
  </tr> 
</table> 
</body>
</html>