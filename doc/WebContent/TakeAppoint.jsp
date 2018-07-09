
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" errorPage="error_app.jsp"%>

<html>
<head>

<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  
  <script>
  $(document).ready(function() {
    $("#adate").datepicker();
  });
  </script>


<script language="javascript" src="JavaScripts/TakeApp_Fields.js"></script>
<script language="JavaScript">
//for non bhel persons

function viewdoctors()
{
window.open('TakeAppDocs.jsp',null,"height=300,width=400,status=yes,toolbar=no");
}
</script>
</head>
<body>
<%@include file="E.html"%> 
<%
int cid=0;
%>
<table width="100%" height="500" border="1" cellpadding="2" cellspacing="2" background="images/backgroun6.jpg">
  <tr>
    
    <td height="480">
      <!-- Logout.jsp starts-->
      
        <%@include file="LogoutIcon.jsp"%> 
              <!-- Logout.jsp ends-->
        <!-- content area for all modules starts-->
		<%
		cid=Integer.parseInt(request.getParameter("cid"));
		%>
        <p align="center"><a href="#" onClick="viewdoctors();"><strong><font size="5">view available doctors List</strong></a></p>
      <table width="100%" height="400"  border="0" background="images/backgroun6.jpg">
      <form name="form1" method="post" action="TakeAppoint1.jsp" onsubmit="return validate(this);">
	      		    <tr><td width="50%" align="right"><strong><font size="4">Doctor Id &nbsp;&nbsp;&nbsp;</strong><input style="font-size:14pt;" type="text" name="did">
            </td>
		    <td width="50%"> <strong>&nbsp;&nbsp;&nbsp;&nbsp;<font size="4">Doctor Name&nbsp;&nbsp;</strong><input type="text" style="font-size:14pt;" name="dname"> &nbsp;&nbsp;&nbsp;</td> 
		    </tr>
	      		 
            <tr>
	      		      <td  align="right"><p><strong>&nbsp;<font size="4">AvailableDate&nbsp;&nbsp;</strong><input type="text" style="font-size:14pt;" name="adate" id="adate">
                      </p>
	          <p>(ex:02/02/2006) </p></td>
	      		      <td><p align="left"><strong>&nbsp;&nbsp;&nbsp;<font size="4">CreditCard No
                            <input name="ccno" style="font-size:14pt;" type="text">
                      </strong></p> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(ex:4111 1111 1111 1111)</p>
	          </td>
	      </tr>
	      		    <tr>
	      		      <td align="center"><div align="right"><strong><font size="4">Client Id &nbsp;&nbsp;&nbsp;</strong></div></td>
	      		      <td><p><strong>
	      		        <input name="cid" style="font-size:14pt;" type="text" value="<%=cid%>" disabled>
						<input type="hidden" style="font-size:12pt;" name="cid" value="<%=cid%>">
	      		      </strong></p>
      		          </td>
	      </tr>
	      		    <tr>
	      		      <td align="center"><input style="height:30px; width:160px;font-size:16px;" type="submit" name="Submit" value="Take Appointment"></td>
	      		      <td align="center"><input style="height:30px; width:90px;font-size:16px;" type="reset" name="Reset" value="Clear"></td>
	      </tr>
		</form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>