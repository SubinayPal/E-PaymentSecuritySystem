<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="p1.*" %>
<%@ page import="java.util.ArrayList" %>
<%
	Connect c1=new Connect();
	ArrayList arr = c1.getReciverData();
	RSA rsa = new RSA();
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<style>

@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700,800,900&display=swap');

* {
  margin: 0;
  padding: 0;
  outline: 0;
}

body {
  font-family: 'Poppins', sans-serif;
}

section{
  width: 100%;
  height: 100vh;
  background: linear-gradient(-45deg, #3f51b1 0%, #5a55ae 13%, #7b5fac 25%, #8f6aae 38%, #a86aa4 50%, #cc6b8e 62%, #f18271 75%, #f3a469 87%, #f7c978 100%);;
  background-size: 400% 400%;
  position: relative;
  animation: animate 7.5s ease-in-out infinite;
  display: flex;
  justify-content: center;
  align-items: center;
}

h1{
  color: #fff;
  background: rgba(255,255,255,.2);
  padding: 20px;
  font-size: 50px;
  border-radius: 10px;
}

@keyframes animate{
  0%{
    background-position: 0 50%;
  }
  50%{
    background-position: 100% 50%;
  }
  100%{
    background-position: 0 50%;
  }
}

</style>


</head>
<body>

<section>

<table border="1" cellspacing="0" cellpadding="10" align="center">
	<tr>
	<th>Transaction Id</th>
	<th>Account Number</th>
	<th>Holder's Name</th>
	<th>Phone Number</th>
	<th>Email</th>
	<th>Date</th>
	<th>Amount</th>
	</tr>
	<%
		for(int i=0;i<arr.size();i++)
		{
			ReceiverInfo obj=null;
			String accno=null;
			try{
			obj=(ReceiverInfo)arr.get(i);
			accno=obj.getAccountnumber();
			accno=rsa.decrypt(accno);
			out.println(accno);	
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		
	%>
		<tr>
		<td><%=obj.getTid()%></td>
		<td><%=accno %></td>
		</tr>
	<%
		}
	%>
</table>


</section>

</body>
</html>