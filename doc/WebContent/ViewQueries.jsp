<%@ page errorPage="errorPage.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page import="java.util.*"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
<script language="javascript" >
function showUpdate(a,b,c){
var eid=b;
var cid=c;
var no=a;



window.location.href="ViewQueries1.jsp?no="+no+"&eid="+eid+"&cid="+cid;

}
</script>
</head>
<body>
<%@include file="E.html"%> 

<table width="100%" height="500" border="1" cellpadding="2" cellspacing="2"background="images/backgroun6.jpg">
  <tr>

    <td>
      <!-- Logout.jsp starts-->
      <div align="right">
        <%@include file="LogoutIcon.jsp"%> 
        <!-- Logout.jsp ends-->
        <!-- content area for all modules starts-->
        <%
System.out.println("viewQueries.jsp");
String sql1=null;
ResultSet rs=null;
ResultSetMetaData rsmd=null;


int did=Integer.parseInt(request.getParameter("did"));

CBean.makeConnection();
sql1="select * from PostedQuery where eid="+did;

CBean.setQuery(sql1);

rs=CBean.executeQuery();
rsmd=rs.getMetaData();

if(rs.next()== true){

%>
        <strong><a href="DoctorMainPage.jsp?did=<%=did%>">BACK</a></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
        <table width="100%" heiht="300"  border="0" style="font-size:25px;"  background="images/backgroun6.jpg">
<tr>
<td><strong>Query</strong></td>
<td><strong>DoctorID</strong></td>
<td><strong>ClientId</strong></td>
<td><strong>replyQuery</strong></td>

</tr>  

<%

//rs.previous();
System.out.println("outerwhile ");
while(rs.next())
{
System.out.println("while loop");
%>
<tr  onClick="showUpdate(<%=rs.getInt(1)%>,<%=rs.getInt(3)%>,<%=rs.getInt(4)%>);" onmouseover='style.backgroundColor="#ffffff"' onmouseout='style.backgroundColor="#D8D8D8"'>
		<%
	       for(int i=2;i<rsmd.getColumnCount();i++){
              %><td>
           <% 
           out.println(rs.getString(i));
           %></td><%
           }
		  %>
</tr>
		  <% 
	    }
	       }else{
                %>
	<tr>		
        <td><font color="#FF0033" size="+2">NO RECORD FOUND</font>
				 <a href="ViewQueries.jsp?did=<%=did%>">GO TO HOME</a></td>
</tr>
                <%
               }
	   
		%>
		
	  </table>
	 
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