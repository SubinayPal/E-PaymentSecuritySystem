<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"    
%>
<%@ page import="p1.Connect" %>
    
    
    
<%
	Connect c1 = new Connect();
	//String name=request.getParameter("name");
	//String email=request.getParameter("email");
	//String contact=request.getParameter("contact");
	String uid = request.getParameter("uid");
	String pwd = request.getParameter("pwd");
	
	boolean b = c1.checkRecord(uid,pwd);
	//System.out.println(b);
%>

<%=uid %>
<%=pwd %>

<%
	if(b==true){
		response.sendRedirect("userDashboard.jsp");
		
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><font color="red">Wrong User Id or Password...!!!</font></h1>
<h2>Go back and try again...</h2>
</body>
</html>
