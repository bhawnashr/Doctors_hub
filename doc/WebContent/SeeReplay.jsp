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

<table width="100%" height="500" border="0" cellpadding="2" cellspacing="2" background="images/backgroun6.jpg">
  <tr>
    
    <td>
      <!-- Logout.jsp starts-->
      <div align="right">
        <%@include file="LogoutIcon.jsp"%> 
        <!-- Logout.jsp ends-->
        <!-- content area for all modules starts-->
        <%
System.out.println("viewfaqs.jsp");
String sql1=null;
ResultSet rs=null;

int cid=Integer.parseInt(request.getParameter("cid"));

CBean.makeConnection();
sql1="select * from PostedQuery where cid="+cid;

CBean.setQuery(sql1);

rs=CBean.executeQuery();

%>
<strong><a href="ClientMainPage.jsp?cid=<%=cid%>">BACK</a></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
<table width="100%" height="400" border="0">
<tr>
<td><strong>Query</strong></td>


<td><strong>Reply Query</strong></td>

</tr>  

<%

//rs.previous();
System.out.println("outerwhile");
while(rs.next())
{
System.out.println("while loop");
%>
<tr>
		<td>
           <% 
           out.println(rs.getString(2));
		   %>
		   </td><td>
		   <%
		   out.println(rs.getString(5));
           %></td><%
        
		   
	    }
		%>
		
 
		   
	  </table background="images/backgroun6.jpg">
	  </form>
      <div align="center"><strong></strong>
        <%
CBean.closeConnection();
%>
	      <!-- content area for all modules ends-->
      </div></td></tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>