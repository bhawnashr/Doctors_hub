<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*"%>


<%@ page import="java.util.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean" />
<html>
<head>
<script language="javascript" src="JavaScripts/creatingDates_Fields.js"></script>

<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  
  <script>
  $(document).ready(function() {
    
    $("#adates").datepicker();
  });
  </script>
</head>
<body>
<%@include file="E.html"%> 

<table width="100%" height="500" border="1" cellpadding="2" cellspacing="2" background="images/backgroun6.jpg">
  <tr>
    
    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	   <%
		  ResultSet rs1=null;
		  String sql1=null;
		  int did=0;
		  
did=Integer.parseInt(request.getParameter("did"));           
sql1="select lname from MainLoginTable where sno="+did;
CBean.makeConnection();
CBean.setQuery(sql1);
rs1=CBean.executeQuery();
rs1.next();
//System.out.println("createdates.jsp"+rs1.getInt(1));
		  %>
	  <!-- content area for all modules starts-->
<p align="center"><strong><font size="6">Creating Dates</strong></p>
     
         <table width="800" height="450" border="0" background="images/backgroun6.jpg">   
		 
		  <form name="form1" method="post" action="CreatingDates1.jsp" onsubmit="return validate(this);">
		  <tr height="150">
		    <td width="300" height="10"><div align="center"><strong><font size="5">Doctor Id</strong><br>              
	            <input style="font-size:12pt;" "type="text" name="did" value="<%=did%>" disabled>			  
	            <input style="font-size:12pt;" type="hidden" name="did" value="<%=did%>">
            </div></td>
		    <td width="283"><div align="left"><strong><font size="5">Doctor Name<br>
                <input style="font-size:12pt;" type="text" name="dname" value="<%=rs1.getString(1)%>" disabled>
		        <input type="hidden" name="dname" value="<%=rs1.getString(1)%>">
              </strong></div></td>
		  </tr>
<tr>
  <td width="200" height="20"><p align="right"><strong><font size="5">Avilable Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><br>
        </p>
    </td>
  <td><p>&nbsp;</p>
    <p>      <input type="text" name="adates"  id="adates" style="font-size:12pt;">
      (Ex:02/03/2006)
    </p>
    <p>&nbsp;    </p></td>
</tr>
<tr>
  <td height="10" align="center"><input style="font-size:17px;height:30;width:90;" height="20" width="90" type="submit" name="Submit" value="Submit"></td>
  <td align="left"><input type="reset" style="font-size:17px;height:30;width:90;" height="20" width="90" name="reset" value="clear"></td>
</tr>
</form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>