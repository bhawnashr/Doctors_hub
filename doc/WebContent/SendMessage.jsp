
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" errorPage="errorPage.jsp"%>

<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.ResultSet"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<%	
	CBean.makeConnection();
%>
<html>
<head>
<script language="javascript" >
function Validate_search(FormName) {

if (FormName.usearch.value == "" ) {

alert("Please provide some valid data"); 

return (false);
}
if(!(FormName.cb_lname.checked )&&!(FormName.cb_fname.checked )&&!(FormName.cb_desg.checked )&&!(FormName.cb_spcl.checked )&&!(FormName.cb_email.checked )){
alert("You Have To Select Atlesat One checkbox");
return (false);
}



return (true);
} 
function showUpdate(){



  window.open('ViewAllUsers.jsp',null,"height=300,width=800,status=yes,scrollbars=yes");

}
</script>
</head>
<body>
<%@include file="E.html"%> 

<table width="100%" height="500" border="0" cellpadding="2" cellspacing="2" background="images/backgroun6.jpg">
  <tr>

    <td width="75%">
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	  <!-- content area for all modules starts-->
      <table width="98%" height="440"  border="1" background="images/backgroun6.jpg">
         <form method="POST" name="form1" action="usearchsend" onSubmit="return Validate_search(this)">
		  <tr>
            <td height="450"><table width="900" border="1" align="center">
              <tr height="40" style="font-size:20px;">
               
                <td width="290" align="center"><strong>Search for a User for Delete</strong></td>
				
			  </tr><tr height="40" style="font-size:20px;">
				
				<td align="center"><input name="usearch" type="text">
				  <input type="button" onClick="showUpdate();" value="View"></td>
				
				</tr height="40" style="font-size:20px;">
			  <tr height="40" style="font-size:20px;">
			    
			    <td><div align="center">
		            <input name="cb_fname" type="checkbox" id="cb_fname">
		        First Name </div></td>
			  </tr>
			  <tr height="40" style="font-size:20px;">
			   
			    <td><div align="center">
			        <input name="cb_lname" type="checkbox"> 
			    Last Name </div></td>
			    
		      </tr>
			  <tr height="40" style="font-size:20px;">
			   
			    <td><div align="center">
			        <input name="cb_desg" type="checkbox" > 
			    Designation </div></td>
			   
		      </tr>
			  <tr height="40" style="font-size:20px;">
			    
			    <td><div align="center">
		            <input name="cb_spcl" type="checkbox" >
			    Specialization</div></td>
			   
		      </tr>
			  <tr height="40" style="font-size:20px;">
			    
			    <td><div align="center"><input name="cb_email" type="checkbox" >
			      &nbsp;&nbsp;&nbsp;E-mail </div></td>
			    
		      </tr>
			  <tr height="40" style="font-size:20px;">
			  
			    <td align="center"><input type="submit" name="usearch" value="LOOK UP"></td>
			  
		      </tr>
            </table></td>
          </tr>
	    </form>
      </table>
	    <!-- content area for all modules ends-->
    </td></tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>