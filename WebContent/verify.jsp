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
		String uname= request.getParameter("uname");
		String password = request.getParameter("pass");
		
		if(uname.equals("admin") && password.equals("admin")){
			response.sendRedirect("pathList.jsp");
		}
		else{
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>