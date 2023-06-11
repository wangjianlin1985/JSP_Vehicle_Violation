<!DOCTYPE html>

<%@ page contentType="text/html; charset=GBK"%>
<html>
<head>
<meta charset="gb2312" />
<title>车辆违章信息管理系统</title>

<link href="css/css.css" rel="stylesheet" />

</head><body >
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0" class="tableBorder">
  <tr align="center">
    <td height="165" colspan="4"><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td width="11"  align="left" valign="top"></td>
    <td width="117" align="left" valign="top"><jsp:include page="left.jsp"/></td>
    <td width="20">　</td>
    <td align="left" valign="top">
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><jsp:include page="new.jsp"/></td>
        </tr>
        <tr>
          <td></td>
        </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td colspan="4" align="center"><jsp:include page="bottom.jsp"/></td>
  </tr>
</table>
</body>
</html>