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
  	<td   height="50" align="left"><h3>���յ����ʾ�</h3></td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">1.�������еı��չ�˾�������ŵĹ�ע�̶ȣ�[��ѡ��]</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="radio" name="a" value="A��ʮ�ֹ�ע">A��ʮ�ֹ�ע
  		<input type="radio" name="a" value="B���ȽϹ�ע">B���ȽϹ�ע
  		<input type="radio" name="a" value="C��һ��">C��һ��
  		<input type="radio" name="a" value="D����ע">D����ע
  		<input type="radio" name="a" value="E������ע">E������ע
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">2.��֪����Щ���չ�˾��[�����]</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input  name="b1" type="text" width="200">
  		<input  name="b2" type="text" width="200">
  		<input  name="b3" type="text" width="200">
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">3.���Ƿ����˻�׼��������ҵ����[��ѡ��]</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="radio" name="c" value="A.�Ѿ�����">A.�Ѿ�����
  		<input type="radio" name="c" value="B.���򵫻�û����">B.���򵫻�û����
  		<input type="radio" name="c" value="C.û����Ҳ������">C.û����Ҳ������
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">4.����������������ٱ��գ�����Ϊÿ��������Ǯ�ȽϺ��ʣ�[��ѡ��]</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="radio" name="d" value="A.1000Ԫ����">A.1000Ԫ����
  		<input type="radio" name="d" value="A.1000Ԫ����">B.1000-3000Ԫ
  		<input type="radio" name="d" value="C.3000-5000Ԫ">C.3000-5000Ԫ
  		<input type="radio" name="d" value="D.5000Ԫ����">D.5000Ԫ����
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">5.����������ٴι��򣩱��գ�����Ƚ�Ը�⹺�����ౣ�գ�[��ѡ��]</td>
  	
  </tr>
  <tr>

	<td align="left">
  		<input type="checkbox" name="e" value="��γ�">A.��γ�
  		<input type="checkbox" name="e" value="ѧ�ƿγ�">B.ѧ�ƿγ�
  		<input type="checkbox" name="e" value="������">C.������
  		<input type="checkbox" name="e" value="������">D.������
  		<input type="checkbox" name="e" value="�ֺ������ٱ���">E.�ֺ������ٱ���
  		<input type="checkbox" name="e" value="��������">F.��������
  		<input type="checkbox" name="e" value="ҽ�Ʊ���">G.ҽ�Ʊ���
  		<input type="checkbox" name="e" value="�ٶ�����">H.�ٶ�����
  		<input type="checkbox" name="e" value="�����˺�����">I.�����˺�����
  		<input type="checkbox" name="e" value="��ͥ�Ʋ�����">J.��ͥ�Ʋ�����
  		<input type="checkbox" name="e" value="��������">K.��������
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">������Щ���������Щ���չ�˾�������ŵ���Ϣ��[��ѡ��]
	
  	</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="checkbox" name="f" value="A.���մ����˽���">A.���մ����˽���
  		<input type="checkbox" name="f" value="B.�����Ƽ�">B.�����Ƽ�
  		<input type="checkbox" name="f" value="C.��ֽ����־ֽ��ý��63">C.��ֽ����־ֽ��ý��
  		<input type="checkbox" name="f" value="D.����,����">D.����,����
  		<input type="checkbox" name="f" value="E.���� ">E.���� 
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">7.��ѡ�����ٱ��չ�˾Ͷ�������У�����ع�˾��һ���棿[��ѡ��]
	
</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="radio" name="g" value="A.Ʒ��֪����">A.Ʒ��֪����
  		<input type="radio" name="g" value="B.��������">B.��������
  		<input type="radio" name="g" value="C.���Ź���">C.���Ź���
  		<input type="radio" name="g" value="D.���ż۸�">D.���ż۸�
  		<input type="radio" name="g" value="E.����������">E.����������
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">8.��Ŀǰ�Ļ���״��[��ѡ��]
	
</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="radio" name="h" value="A.δ��">A.δ��
  		<input type="radio" name="h" value="B.�ѻ�">B.�ѻ�
  		<input type="radio" name="h" value="C.ͬ��">C.ͬ��
  		<input type="radio" name="h" value="D.�����ɥż">D.�����ɥż
  	</td>
  </tr>
  <tr>
  	<td height="40" align="left" style="font: bold;">9.��Ŀǰ�����µ�ְҵ[��ѡ��]
	
</td>
  	
  </tr>
  <tr>

	<td align="left">
  		<input type="radio" name="i" value="A.���һ���/�������غ��������">A.���һ���/�������غ��������
  		<input type="radio" name="i" value="B.���м��ۺϼ�������ҵ">B.���м��ۺϼ�������ҵ
  		<input type="radio" name="i" value="C.����/ú����ˮ�������͹�Ӧҵ">C.����/ú����ˮ�������͹�Ӧҵ
  		<input type="radio" name="i" value="D.����/ҩƷ/����ҵ">D.����/ҩƷ/����ҵ
  		<input type="radio" name="i" value="E.����/�Ļ��͹㲥��Ӱ����ҵ">E.����/�Ļ��͹㲥��Ӱ����ҵ
  		<input type="radio" name="i" value="F.��ͨ����ִ�ҵ">F.��ͨ����ִ�ҵ
  		<input type="radio" name="i" value="G.���ڱ���ҵ">G.���ڱ���ҵ
  		<input type="radio" name="i" value="H.�����ITҵ">H.�����ITҵ
  		<input type="radio" name="i" value="I.�����˺�����I.���ز�ҵ">I.�����˺�����I.���ز�ҵ
  		<input type="radio" name="i" value="J.����ҵ">J.����ҵ
  		<input type="radio" name="i" value="J.����ҵ">K.ͨѶҵ
  		<input type="radio" name="i" value="L.����ҵ">L.����ҵ
  		<input type="radio" name="i" value="M.��������ó��ҵ">M.��������ó��ҵ
  		<input type="radio" name="i" value="N.����/��ѯ����ҵ">N.����/��ѯ����ҵ
  		<input type="radio" name="i" value="O.����/����/����ҵ">O.����/����/����ҵ
  		<input type="radio" name="i" value="P.ѧ��">P.ѧ��
  		<input type="radio" name="i" value="Q.��ͥ����">Q.��ͥ����
  		<input type="radio" name="i" value="R.����">R.����
  	</td>
  </tr>
  
   <tr>
  	<td height="40" align="left" style="font: bold;">10.����ͥ˰ǰ��������[��ѡ��]
	
</td>
  	
  </tr>
  <tr>
  	<td align="left">
  		<input type="radio" name="j" value="A.1000Ԫ����">A.1000Ԫ����
  		<input type="radio" name="j" value="D. 10000Ԫ����">D. 10000Ԫ����
  		<input type="radio" name="j" value="C.5000-10000Ԫ10">C.5000-10000Ԫ
  		<input type="radio" name="j" value="D. 10000Ԫ����">D. 10000Ԫ����
  	</td>
  </tr>
  <tr>
  	<td height="50" align="left">
  		<input style="color: red;" type="submit" value="�ύ�ʾ�">
  		<input style="color: red;" type="reset" value="����">
  	</td>
  </tr>
	</table>
	</form>
	</td> 
  </tr> 
  <tr> 
    <td>��</td> 
  </tr> 
  <tr> 
    <td colspan="3" align="center"><jsp:include page="bottom.jsp"/></td> 
  </tr> 
</table> 
</body>
</html>