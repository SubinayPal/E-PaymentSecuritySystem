<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="p1.Connect" %>
<%@ page import="p1.RSA" %>
<%
	Connect c1=new Connect();
	RSA rsa = new RSA();
	String tid=request.getParameter("tid");
	String accountnumber=rsa.encrypt(request.getParameter("accountnumber"));
	String hname=request.getParameter("hname");
	String phonenumber=rsa.encrypt(request.getParameter("phonenumber"));
	String email=rsa.encrypt(request.getParameter("email"));
	String date=request.getParameter("date");
	String amount=request.getParameter("amount");
	
	boolean b=c1.saveReceiverRecord(tid, accountnumber, hname, phonenumber, email, date, amount);
	
	
%>
<%=b %> <br/>
<%=tid %> <br/>
<%=accountnumber %>
  <br/>
<br/>
<br/>
<br/>
<%
	if(b==true){
		response.sendRedirect("userDashboard.jsp?status=true");
		
		
	}
	
%>

 
 