<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="users" class="model.UserController" scope="application"></jsp:useBean>
<jsp:useBean id="newUser" class="model.User" scope="request"></jsp:useBean>
<jsp:setProperty name="newUser" property="username" param="username"></jsp:setProperty>
<jsp:setProperty name="newUser" property="lastname" param="lastname"></jsp:setProperty>
<jsp:setProperty name="newUser" property="password" param="password"></jsp:setProperty>
<jsp:setProperty name="newUser" property="firstname" param="firstname"></jsp:setProperty>

<%
if (request.getParameter("submit") != null) {
	boolean isOk = users.register(newUser);
	if (isOk) {
		session.setAttribute("message", "Successfully registered!");
	} else {
		session.setAttribute("message", "Username exists! Try again.");
	}
} else {
	session.setAttribute("message", "");
}
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="registration.jsp" method="post">
Firstname: <input type="text" name="firstname"><br>
Lastname: <input type="text" name="lastname"><br>
Username: <input type="text" name="username"><br>
Password: <input type="password" name="password"><br>
<input type="submit" value="Submit" name="submit">
</form>
<p><%= session.getAttribute("message")%></p>
<a href="login.jsp">Back to login >></a>
</body>
</html>