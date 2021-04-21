<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Welcome to FlyAway </h1>
	<form action="bookTicket.jsp" method="post">
		<input type="text" name="source" placeholder="enter source"> <br>
		<input type="text" name="destination" placeholder="enter destination"> <br>
		<input type="number" name="person" placeholder="enter no of passengers"> <br>
		<input type="submit" name="Search">
	</form>
</body>
</html>