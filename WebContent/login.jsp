<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="users" class="model.UserController" scope="application"></jsp:useBean>
<jsp:useBean id="user" class="model.User" scope="session"></jsp:useBean>
<jsp:setProperty name="user" property="username" param="username"></jsp:setProperty>
<jsp:setProperty name="user" property="password" param="password"></jsp:setProperty>
<%
if(request.getParameter("submit") != null) {
	model.User u = users.login(user.getUsername(), user.getPassword());
	if (u != null) {
		user.setFirstname(u.getFirstname());
		user.setLastname(u.getLastname());
		user.setLoggedIn(true);
		response.sendRedirect("messages.jsp");
		
	} else {
		session.setAttribute("message", "Wrong credentials!");
		user.setLoggedIn(false);
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
	<form action="login.jsp" method="post">
	Username: <input type="text" name="username"><br>
	Passwrod: <input type="password" name="password"><br>
	<input type="submit" name="submit" value="Submit">
	</form>
	<p><%= session.getAttribute("message") %></p>
	<a href="registration.jsp">Registration >></a>
</body>
</html>