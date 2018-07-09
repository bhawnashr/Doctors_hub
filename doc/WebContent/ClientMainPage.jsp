<html>
<head>
<style type="text/css">
<!--
.style1 {font-weight: bold}
-->
</style>
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
      <table width="100%" height="480"  border="1" background="images/backgroun6.jpg">
  <tr align="center">
    <td height="223" align="center"><p>&nbsp;</p>
      <p><span class="style1"><a href="PostedQuery.jsp?cid=<%=request.getParameter("cid")%>"><font face="Georgia" size="5">PostQuery</a>
            </span></p>
      <p><strong><a href="SeeReplay.jsp?cid=<%=request.getParameter("cid")%>"><font face="Georgia" size="5">See the Reply</a> <br>
	        <br>
	        <a href="ViewFaqs.jsp?cid=<%=request.getParameter("cid")%>"><font face="Georgia" size="5">View FAQs</a></strong></p>
      <p><a href="TakeAppoint.jsp?cid=<%=request.getParameter("cid")%>"><strong><font face="Georgia" size="5">Take Appointment</strong></a><strong> </strong></p></td>
  </tr>
</table>

<!-- content area for all modules ends-->
    </td>
  </tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>