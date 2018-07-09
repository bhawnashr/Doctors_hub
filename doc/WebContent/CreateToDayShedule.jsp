<html>
<head>
<script language="JavaScript">
//for non bhel persons

function viewdoctors()
{
window.open('ViewAvailDocs.jsp',null,"height=300,width=400,status=yes,toolbar=no");
}
</script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  
  <script>
  $(document).ready(function() {
    $("#adate").datepicker();
  });
  </script>
</head>
<body>
<%@include file="E.html"%> 

<table width="100%" height="500" border="1" cellpadding="2" cellspacing="2" background="images/backgroun6.jpg">
  <tr>

    <td>
      <!-- Logout.jsp starts-->
      <div align="center">
        <%@include file="LogoutIcon.jsp"%> 
          <a href="#" onClick="viewdoctors();"><strong> <font size="5">view available doctors</strong></a>        <!-- Logout.jsp ends-->
        <!-- content area for all modules starts-->
      </div>
      <table width="100%" height="450"  border="0" background="images/backgroun6.jpg">
      <form name="form1" method="post" action="CreateToDayShedule1.jsp">
	      		    <tr><td align="right"><strong><font size="5">Doctor Id &nbsp;&nbsp;&nbsp;</strong><input type="text" name="did">
            </td>
		    <td> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="5">Doctor Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><input type="text" name="dname"> </td> 
		    </tr>
	      		 
            <tr>
	      		      <td  align="right"><p><strong><font size="5">AvailableDate&nbsp;</strong><input type="text" name="adate" id="adate">
                      </p>
	      		        <p>(ex:02/02/2006) </p></td>
	      		      <td>
	      		        <p align="left"><strong>&nbsp;&nbsp;&nbsp;<font size="5">Consultation Fee&nbsp;&nbsp;</strong><input type="text" name="cfee">
   		               <font size="5"> Rs.</p>
	      		        <p align="center"> (ex:300)</p>
            </td>
	      </tr>
	      		    <tr>
	      		      <td align="center"><div align="right"><strong><font size="5">Status</strong></div></td>
	      		      <td><p>
      		            <input name="state" type="radio" value="y">
	      		        <strong><font size="5">Present</strong></p>
	      		        <p><input name="state" type="radio" value="n" checked>
	      		          <strong><font size="5">Not Present </strong></p></td>
	      </tr>
	      		    <tr>
	      		      <td align="center"><input style="height:30px;width:80px;font-size:16px;" type="submit" name="Submit" value="Create"></td>
	      		      <td align="center"><input style="height:30px;width:80px;font-size:16px;" type="reset" name="Reset" value="Clear"></td>
	      </tr>
		</form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>