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
      <table width="100%"  border="0">
  <tr align="center">
    <td height="480" align="center"><a href="ViewQueries.jsp?did=<%=request.getParameter("did")%>"><strong><font size="5" face="Georgia">View Posted Queries And  reply </strong></a>
	<br>
	<br>
	<strong><a href="CreatingDates.jsp?did=<%=request.getParameter("did")%>"><font size="5" face="Georgia"> Mention Your Available Dates for Consulting</a></strong> </td>
	
  </tr>
</table>

<!-- content area for all modules ends-->
    </td>
  </tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>