<html>
<head>
<title>New User Creation</title>
<script language="javascript" src="JavaScripts/NewUserCreation.js">

</script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  
  <script>
  $(document).ready(function() {
    $("#dob").datepicker();
    $("#doj").datepicker();
  });
  </script>
</head>
<body >
<%@include file="E.html"%> 

<table width="100%"  border="1" cellpadding="2" cellspacing="2">
  <tr>

    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
	  <form action="NewUserCreation1.jsp" method="get" name="form1" onSubmit="return validate(this)">
      <table width="100%" height="58"  border="1" background="images/backgroun6.jpg">
          <tr>
            <td height="52" align="center"><strong>New User Creation</strong> </td>
          </tr>
		  
      </table >
		<table width="100%" height="455" border="0" background="images/backgroun6.jpg">
  <tr>
    <td><table width="100%" height="450"  border="0">
      <tr>
        <td width="23%" align="left"><strong>First Name</strong></td>
        <td width="27%" align="right">
          <input name="fname" type="text" > 
        </td>
        <td width="23%" align="left"><strong>&nbsp; &nbsp; Last Name</strong></td>
        <td width="27%" align="right"><input name="lname" type="text"></td>
      </tr>
      <tr>
        <td align="left"><strong>Designation</strong>      </td>
        <td align="right"><input name="desg" type="text"></td>
        <td align="left"><strong>&nbsp; &nbsp; Qualification</strong></td>
        <td align="right"><input name="qual" type="text"></td>
      </tr>

      <tr>
        <td align="left"><strong>Specilization</strong>          </td>
        <td align="right"><input name="spelz" type="text">
		</td>
        <td align="left"><strong>&nbsp; &nbsp; Experience</strong></td>
        <td align="right"><input type="text" name="exp">
		</td>
      </tr>
      <tr>
        <td align="left"><strong>Field of Experience</strong>          </td>
        <td align="right"><input name="foe" type="text"></td>
        <td align="left"> <strong>&nbsp; &nbsp; University </strong> </td>
        <td align="right"><input name="university" type="text"></td>
      </tr>
	  
	  <tr>
        <td align="left"><strong>Mobile</strong>          </td>
        <td align="right"><input name="mobile" type="text"></td>
        <td align="left"> <strong>&nbsp; &nbsp; E-mail</strong> </td>
        <td align="right"><input name="email" type="text"></td>
	  </tr>
      <tr>
        <td align="left"><strong>Sex </strong>
          </td>
        <td align="right"><select name="sex" size="1">
          <option value=""><------Select Gender-----></option>
      <!--    <option value=""><-----------Select----------></option> -->
          <option value="m">Male</option>
          <option value="f">Female</option>
        </select></td>
    
        	  
	        <td align="left"><strong>&nbsp; &nbsp; Date Of Birth </strong> </td>
        <td align="right"><input name="dob" type="text" id="dob"></td>
      </tr>
	  <tr>
	  <td align="left"><strong>Date of Join </strong>          </td>
        <td align="right"><input name="doj" type="text" id="doj"></td>
        
          
	        <td align="left"><strong>&nbsp; &nbsp; Password </strong> </td>
        <td align="right"><input name="pass" type="text"></td>
       
	    
	    </tr>
          <tr>
        <td align="left"><strong>Type</strong></td>
        <td align="right"><select name="type" size="1">
          <option value=""><----Select Employee---></option>
<option value="a">Administrator</option>

          <option value="m">Manager</option>
          <option value="d">Doctor</option>
          <option value="c">Client</option>
          <option value="o">Official</option>
        </select></td>
	  </tr>

    </table>
      </td>
  </tr>
  <tr><td align="center" height="30">
  <input name="k" type="hidden"  value="<%=request.getParameter("k")%>">
  <input  style="height:30;width:80" name="submit" type="submit" value="Save"></td></tr>
</table>
</form>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>