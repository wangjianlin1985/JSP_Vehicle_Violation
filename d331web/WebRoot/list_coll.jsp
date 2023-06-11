<!DOCTYPE html>
<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %> 
<%@ page import="java.util.Iterator" %>
<%@ page import="com.model.*" %>
<%@ page import="com.core.*" %> 
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %> 
<%if (!Crazyadept.UserIsOK(session)) return;%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title> </title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<%
User user1=(User)session.getAttribute("user");
String user="游客", uid = "";
if(user1!=null){
	user=user1.getName();
    uid=user1.getUid();
}

Collection coll = new ArrayList();
Connection con = null;
ResultSet rs = null;
PreparedStatement ps = null;

 %>
<body > 
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0"  class="tableBorder"> 
  <tr> 
    <td height="165" colspan="3"><jsp:include page="top.jsp"/></td> 
  </tr> 
  <tr> 
    <td width="11" rowspan="2"></td> 
    <td width="234" rowspan="2" align="left" valign="top"><jsp:include page="left.jsp"/></td> 
    <td width="536"  align="center" valign="top"><br> 
       <br>
      <table width="781px" border="0" align="center" cellpadding="0" cellspacing="1" bordercolorlight="#FFFFFF" bordercolordark="#777777" class="tableNew">
       <tr align="center"> 
          <td height="27" colspan="4" class="TableTitle1">我的收藏</td> 
        </tr>  
        <tr align="center"> 
          <td height="27" class="TableTitle1">标题</td> 
          <td class="TableTitle1">时间</td> 
          <td class="TableTitle1">取消收藏</td> 
        </tr> 
  <%
  BasetableFactory bf=BasetableFactory.getInstance();
  int submit_page=ParamUtils.getIntParameter(request,"page");
  //out.print(idS);
  String sql="";
  sql="SELECT * FROM (Collection) where uid='"+uid+"' order by id desc";  
  		 coll = new ArrayList();
         con = null;
         rs = null;
         ps = null;
        int tip = FinalConstants.STEP * (submit_page - 1); //页数
        try {
            con = Database.getConnection();
            ps = con.prepareStatement(sql );
            rs = ps.executeQuery();
            if (tip <= 0) {
                rs.beforeFirst();
            } else {
                if (!rs.absolute(tip)) {
                    rs.beforeFirst();
                }
            }
            for (int i = 1; rs.next() && i <= FinalConstants.STEP; i++) {
                Coll co= new Coll();
                co.setId(rs.getInt("id"));
                co.setTtable(ParamUtils.getSqlString(rs.getString("ttable")));
                co.setTid(ParamUtils.getSqlString(rs.getString("tid")));
                co.setTname(ParamUtils.getSqlString(rs.getString("tname")));
                co.setCtime(ParamUtils.getSqlString(rs.getString("ctime")));
                co.setTidF(ParamUtils.getSqlString(rs.getString("tidF")));
                coll.add(co);
            }
         } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            System.out.println(ps + " bbs select ");
                if (ps != null) {
                    ps.close();
                    ps = null;
                }
                if (con != null) {
                    con.close();
                    con = null;
                }
        }
            
     
    
	if(coll==null||coll.size()<=0){
%> 
        <tr align="center"> 
          <td height="27" colspan="4" bgcolor="#FFFFFF">当前数据为空</td> 
        </tr> 
       <%        
  }else{            
  Iterator it=coll.iterator();
  while(it.hasNext()){
  Coll a=(Coll)it.next();%> 
        <tr align="left"> 
          <td height="27" bgcolor="#FFFFFF" style="padding:5px;"><a class="delink" href="coll.jsp?ttable=<%=a.getTtable()%>&tidF=<%=a.getTidF()%>&tid=<%=a.getTid()%>"><%=a.getTname()%></a></td> 
          <td height="27" align="center" bgcolor="#FFFFFF"><%=a.getCtime()%>    </td> 
          <td align="center" bgcolor="#FFFFFF"><a class="delink" href="modify_bbs.jsp?action=colldel&id=<%=a.getId()%>">取消收藏</td> 
        </tr> 
        <%}}%> 
        <tr align="right"> 
          <td height="27" colspan="4" bgcolor="#FFFFFF">
          <%=HtmlUtils.table(bf.getRow("Collection where uid='"+uid+"' ORDER BY id"),submit_page,"list_coll.jsp","")%>
          </td> 
        </tr> 
    </table></td> 
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