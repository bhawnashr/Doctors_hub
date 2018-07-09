<%@ page errorPage="errorPage_login.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="Project.sql.CBean"%>
<jsp:useBean id="CBean" class="Project.sql.CBean"/>
<html>
<head>
<title>All_Login1</title>
</head>
<body>

<%@include file="E.html"%> 

<table width="100%" height="500" border="1" cellpadding="2" cellspacing="2">
  <tr>

    <td>
      <!-- Logout.jsp starts-->
<%@include file="LogoutIcon.jsp"%> 
	  <!-- Logout.jsp ends-->
	 
      <table width="100%" height="480"  border="1" background="images/backgroun6.jpg">
          <tr>
            <td height="480">
			 <!-- content area for all modules starts-->
			
  
  

	         <p>
               <%
               	// variables
               String uname=null;
               String pass=null;
               String k=null;
               String sqlQuery1=null;
               String type= "";
               int cid=0;
               int did=0;
               	//requested parameters
               	try{
               		uname = request.getParameter("uname");
               		pass = request.getParameter("pass");
               		k = request.getParameter("k");

               		sqlQuery1 = "select type, sno from LoginTable where name='" + uname + "' and password='" + pass
               				+ "' and type='" + k + "'";
               		System.out.println("bhasker bhasker bhasker ************************" + sqlQuery1);
               		//Connection with db

               		CBean.makeConnection();
               		ResultSet rs = null;
               		rs = CBean.executeQuery(sqlQuery1);
               		rs.next();
               		type = rs.getString(1);
               		cid = rs.getInt(2);
               		System.out.println(type);
               	} finally {
               		CBean.closeConnection();
               	}

               	
               	did = cid;
               	System.out.println("client" + cid);
               	System.out.println("doctor" + did);
               	//checking Authentication

               	if (type.equals("a")) {
               %>	
               <%@include file="AdminMainPage.jsp"%>
               <%
	}
if(type.equals("c"))
	{
	out.println("You are successfully Logged.... as a Client ");
	%>
<a href="ClientMainPage.jsp?cid=<%=cid%>">Click here to<strong> Continue...</strong></a>
               </p>
	         <p>
               <% 
	}
	if(type.equals("o"))
	{
	out.println("You are successfully Logged.... as a Official");
	%>
              <a href="OfficialMainPage.jsp"><br>Click here to<strong> Continue..</strong></a></p>
	       
               <%
	}
	if(type.equals("d"))
	{
	out.println("You are successfully Logged.... as a Doctor");
	%>
	        
              <a href="DoctorMainPage.jsp?did=<%=did%>"><br>Click here to<strong> Continue...</strong></a>
               <%
	}
	

	if(type.equals("m"))
	{
	out.println("You are successfully Logged ...as a manager");
	%>
               <br>
              <a href="ManagerMainPage.jsp">Click here to<strong> Continue...</strong></a>
            
	        
               <%
	}
	
	%>
               <!-- content area for all modules ends-->
          
	        </td>
          </tr>
      </table>
	    
    </td></tr>
</table>
<%@include file="footer.jsp"%> 
</body>
</html>