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
	<a href="changePassword.jsp">Change password</a><br><br>
	<h1> List of Paths: </h1>
	<table border="1" cellpadding="5">

	<tr>
				<th>airline</th>
                <th>source</th>
                <th>destination</th>
                <th>price(in rs)</th>
    </tr>
	<%	
		List<PathDetails> paths1 = (List<PathDetails>)session.getAttribute("listPaths");
		for(PathDetails path : paths1){
	%>
	
	
                <tr>
                	<td><%= path.getAirline()%></td>
                    <td><%= path.getSource()%></td>
                    <td><%= path.getDestination()%></td>
                    <td><%= path.getPrice()%></td>
                </tr>
                <%
		}
                %> 
                </table>
	</center>	
</body>
</html>