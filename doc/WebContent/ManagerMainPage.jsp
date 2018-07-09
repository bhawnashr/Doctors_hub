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
      <table width="100%"  border="1">
  <tr align="center">
    <td width="53%" height="480" align="center"><a href="Reports.jsp"><font face="Comic Sans MS" size="6">Reports of all Users</a>
	<br>
	<br></td>
	    <td width="47%" align="center"><a href="ListOfDiseases.jsp"> <font face="Comic Sans MS" size="6">View all Diseases and their Remedies </a>
	<br>
	<br></td>
	
  </tr>
</table>


	    <!-- content area for all modules ends-->
    </td></tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>