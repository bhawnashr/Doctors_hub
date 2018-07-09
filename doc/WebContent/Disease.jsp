<%@ page errorPage="errorPage_login.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
<script language="javascript" src="JavaScripts/Disease_Fields.js"></script>
</head>
<body>
<%@include file="E.html"%> 

<table width="100%" height="500" border="0" cellpadding="2" cellspacing="2" background="images/backgroun6.jpg">
  <tr>

    <td>
      <!-- Logout.jsp starts-->
	  <a href="ManagerMainPage.jsp">Home</a>
      <%@include file="LogoutIcon.jsp"%> 
	   <!-- Logout.jsp-->
	  <!-- content area of all models starts-->
      <table width="100%" height="30"  border="0" >
          <form name="form1" method="post" action="Disease1.jsp" onsubmit="return validate(this);">
		  <tr><td align="center"><strong><font size="5">Diseases and their possible Remedy </font></strong></td></tr>
		  <tr>
            <td width="35%" height="450">
			
              <p align="center"><strong><font size="4">Disease Name </font> </strong>                
                <input type="text" name="dise">
                <a href="#" onClick="verifyUsername(document.form1.dise.value);">Verify</a>
              </p>
              <p align="center"><strong><font size="4">Remedy ::</strong>
                <textarea name="remedy" rows="3" cols="40"></textarea>
            </p></td>
   		    </tr>
			  <tr>
			<td height="28" align="center"><input type="submit" name="Submit" value="Save"></td>
          </tr>
		  </form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>