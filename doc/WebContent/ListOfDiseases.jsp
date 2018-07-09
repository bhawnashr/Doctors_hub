<%@ page language="java" contentType="text/html; charset=ISO-8859-1" errorPage="errorPage.jsp"%>

<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
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
 <%
		
		String sql=null;
		sql= "select dname, remedy from Disease";
		System.out.println("query is---------->"+sql);
	    CBean.makeConnection();
	    CBean.setQuery(sql);
        ResultSet rs=CBean.executeQuery();
		//ResultSetMetaData rsmd=rs.getMetaData();
		
		%>
 <a href="ManagerMainPage.jsp"><strong>BACK</strong></a>
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
     
		 <table width="100%" height="450"border="1" align="center" cellpadding="1" cellspacing="1" background="images/backgroun6.jpg" > 
    	   
         				<form action="" name="form1"> 

		  
	        
		  <tr> 
		  
		  <td width="179">DISEASE NAME</td>
		  <td width="188">REMEDY</td>
		  
		  </tr>
		<%
		
	    while(rs.next()){
%>
<tr>      <td><%=rs.getString(1)%></td>
		  <td><%=rs.getString(2)%></td>
		  
		  		   </tr>
		   <%
        }
		
		%>
		
		 
		 
		
     
		 </form>
		
            
 </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>