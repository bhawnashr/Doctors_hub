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
	  
      <table width="100%" height="480" border="0" background="images/backgroun6.jpg"s>
  <tr align="center">
    <td width="50%" height="200" align="center"><p><a href="ModifyUser.jsp"><strong><font size="6" face="Georgia">Modify all Details of Users</strong></a></p>
      <p><a href="DeleteUser.jsp"><strong><font size="6" face="Georgia">Delete Users</strong></a>	        </p>
      <p><br>
            <a href="Disease.jsp"><strong><font size="6" face="Georgia">Add New Disease</strong></a></p>
      <p><strong><a href="CreateToDayShedule.jsp"><font size="6" face="Georgia">Create today shedule for doctors</a></strong> </p>
      <p><strong><a href="SendMessage.jsp"><font size="6" face="Georgia">Send Messages </a></strong><br>
      </p></td>
	    
	
  </tr>
</table>

<!-- content area for all modules ends-->
    </td>
  </tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>