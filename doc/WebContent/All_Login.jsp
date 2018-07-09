<html>
<head>
</head>
 <%
			  String type1=null;
              String type=request.getParameter("k");
			  if(type.equals("a"))
			  {
			  type1="Administrator";
			  }
			  else
			  if(type.equals("m"))
			  {
			  type1="Manager";
			  }else

              if(type.equals("d"))
			  {
			  type1="Doctor";
			  }else
			  if(type.equals("c"))
			  {
			  type1="Client";
			  }else
			  if(type.equals("o"))
			  {
			  type1="Official";
			  }
			  
			  %>
<body>

<%@include file="E.html"%> 

<table width="100%" height="500" border="1" cellpadding="2" cellspacing="2">
  <tr>
    
    <td>
      <!-- Logout.jsp starts-->

	  <!-- Logout.jsp ends-->
	 
      <table width="100%" height="500"  border="1" >
          <tr>
            <td height="480">
			
			 <!-- content area for all modules starts-->
			
			<table width="100%"  hight="400" border="1" cellpadding="0" cellspacing="0"  background="bg6.jpg">
  <form name="form1" method="get" action="All_Login1.jsp">
  <tr>

	<td height="40" align="center" ><font face="Comic Sans MS" size="7" color="#99CCCC"></font><%=type1%> Login Page</font>
	 
  
  </td>
  </tr>
  <tr background="images/bg8.jpg"><td height="480" align="center"  background="bg6.jpg" >	<p><strong> <font size="5">User Name : :</strong>
          <input style="font-size:12pt;" type="text" name="uname">
  </p>
      <p> <strong>Password &nbsp;&nbsp;: :</strong>
          <input type="password" style="font-size:12pt" name="pass">
      </p>
      <input name="k" type="hidden" value="<%=request.getParameter("k")%>">   <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input style="height:30px; width:100px" type="submit" name="Submit" value="Submit"> 
    &nbsp;&nbsp;&nbsp; <input style="height:30px; width:80px" name="reset" type="reset" value="Clear">

	<br>
</td></tr>
</form>
</table>
<!-- content area for all modules ends-->

			</td>
          </tr>
      </table>
	    
    </td></tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>