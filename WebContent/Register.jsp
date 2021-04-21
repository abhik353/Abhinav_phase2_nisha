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
	<h1> Please Register: </h1>
	<label>Enter name: </label>
	<input type="text" placeholder="enter name"><br><br>
	<label>Enter number: </label>
	<input type="text" placeholder="enter number"><br><br>
	<label>Enter email: </label>
	<input type="text" placeholder="enter email"><br><br>
	<a href="payment.jsp?source=<%= source%>&destination=<%= destination%>&price=<%= price%>&airline=<%=airline%>">Register</a>
	</center>
</body>
</html>