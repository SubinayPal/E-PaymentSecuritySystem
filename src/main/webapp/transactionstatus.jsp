<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="p1.Connect" %>
<%@ page import="p1.*" %>
<%
	Connect c1=new Connect();
	//RSA rsa = new RSA();
	AES_ENCRYPTION aes = new AES_ENCRYPTION();
	aes.init();
	String tid=request.getParameter("tid");
	
	//String accountnumber=rsa.encrypt(request.getParameter("accountnumber"));
	String accountnumber=aes.encrypt(request.getParameter("accountnumber"));
	
	String hname=request.getParameter("hname");
	
	//String phonenumber=rsa.encrypt(request.getParameter("phonenumber"));
	String phonenumber=aes.encrypt(request.getParameter("phonenumber"));
	
	//String email=rsa.encrypt(request.getParameter("email"));
	String email=aes.encrypt(request.getParameter("email"));
	
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

 
 