<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="user" class="model.User" scope="session"></jsp:useBean>
<%
user.setLoggedIn(false);
session.invalidate();
response.sendRedirect("login.jsp");
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>