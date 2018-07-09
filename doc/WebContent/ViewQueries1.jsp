<%@ page errorPage="errorPage.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page import="java.util.*"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
</head>
<body>
<%@include file="E.html"%> 

<table width="100%" height="500" border="1" cellpadding="2" cellspacing="2" background="images/backgroun6.jpg">
  <tr>

    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
<%
System.out.println("viewQueries1.jsp");
String sql1=null;
ResultSet rs=null;
//ResultSetMetaData rsmd=null;

int no=0;
no=Integer.parseInt(request.getParameter("no"));
System.out.println("1");
//String pquery=request.getParameter("pquery");
int did=Integer.parseInt(request.getParameter("eid"));
int cid=Integer.parseInt(request.getParameter("cid"));

System.out.println("1234567"+did+cid);
CBean.makeConnection();
sql1="select * from PostedQuery where eid="+did+" and cid="+cid+" and no="+no;
System.out.println("sql1"+did+"no"+no);
CBean.setQuery(sql1);
System.out.println("cbean"+cid);
rs=CBean.executeQuery();
rs.next();
{
%>

      <table width="100%" height="480"  border="0" background="images/backgroun6.jpg">
	  <form action="ReplayQuery.jsp" name="form1" method="get">
<tr><td> <font size="5" >Query</td><td><input style="font-size:16px;height:40;width:300" type="hidden" name="no" value="<%=rs.getInt(1)%>">
<textarea name="pquery"><%=rs.getString(2)%> </textarea></td></tr>
<tr><td><font size="5">DoctorId</td><td><input style="font-size:16px;height:30;width:200" type="text" name="eid" value="<%=rs.getInt(3)%>"></td></tr>
<tr><td><font size="5">ClientId</td><td><input style="font-size:16px;height:30;width:200" type="text" name="cid" value="<%=rs.getInt(4)%>"></td></tr>
<tr><td><font size="5">Solution to Query</td><td><textarea style="font-size:16px;height:30;width:200" name="rquery"><%=rs.getString(5)%></textarea></td></tr>

<tr>
  <td align="right"><div align="left"><font size="5">This query is FAQ</div></td><td align="left">&nbsp;&nbsp;
    <input name="faq" type="radio" value="y">
    <font size="5">yes 
    <input name="faq" type="radio" value="n" checked>
    <font size="5">no</td>
</tr>
<tr>
  <td height="26" align="right"><input style="font-size:16px;height:30;width:90" name="submit" type="submit" value="reply"></td>
  &nbsp;&nbsp;&nbsp;<td align="left"><input style="font-size:16px;height:30;width:90" name="clear" type="reset" value="Clear"></td>
</tr>
</form>
</table>
	  
	  <%
	  
}

%>
    
 
		
<%
CBean.closeConnection();
%>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>