<%@page import="com.dto.PathDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String path = request.getParameter("pathId");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String airline = request.getParameter("airline");
		String price = request.getParameter("price");
	%>
	
	<center>
		<h1> Welcome to FlyAway </h1>	
		<h1>Booking details</h1>	
		<h2> Trvelling from: <%= source %></h2> <br>
		<h2> Travelling to: <%= destination %></h2> <br>
		<h2> airline name : <%= airline %></h2> <br>
		<h2> Total payable: <%= price %></h1> <br>
		<label>enter upi id</label>
		<input type="text" placeholder="enter upi id">
		<a href="paymentFinal.jsp?source=<%= source%>&destination=<%= destination%>&price=<%= price%>&airline=<%=airline%>">Pay</a>
	
	</center>
	
</body>
</html>