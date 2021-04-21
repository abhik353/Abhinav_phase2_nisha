<%@page import="java.io.PrintWriter"%>
<%@page import="com.dto.PathDetails"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	<h1> Welcome to FlyAway </h1>
	<h1> Available airlines : </h1>
	<form action="payment.jsp" method="post">
	<table border="1" cellpadding="5">
	
	<tr>
				<th>airline</th>
                <th>source</th>
                <th>destination</th>
                <th>price per seat(in rs)</th>
                <th>total price(in rs)</th>
                <th>action</th>
    </tr>
	<%
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		int person = Integer.parseInt(request.getParameter("person"));
		List<PathDetails> paths1 = (List<PathDetails>)session.getAttribute("listPaths");
		for(PathDetails path : paths1){ 
			if(path.getSource().equals(source) && path.getDestination().equals(destination)){
		%>			
            <tr>
            	<td><%= path.getAirline()%></td>
                <td><%= path.getSource()%></td>
                <td><%= path.getDestination()%></td>
                <td><%= path.getPrice()%></td>
                <td><%= Integer.parseInt((path.getPrice()))*person%></td>
                <td><a href="Register.jsp?pathId=<%= path.getPathId()%>&source=<%= path.getSource()%>&destination=<%= path.getDestination()%>&price=<%= Integer.parseInt((path.getPrice()))*person%>&airline=<%= path.getAirline()%>">Book</a></td>
            </tr>           
		<%	}
		} %>
	</table>
	</center> 
	
</body>
</html>