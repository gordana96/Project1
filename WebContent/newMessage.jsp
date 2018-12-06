<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="messages" class="model.MessageController" scope="application"></jsp:useBean>
<jsp:useBean id="user" class="model.User" scope="session"></jsp:useBean>
<jsp:useBean id="newMessage" class="model.Message" scope="request"></jsp:useBean>

<%
if (!user.isLoggedIn()) {
	response.sendRedirect("login.jsp");
}

if (request.getParameter("submit") != null) {
	session.setAttribute("message", "Message successfully added!");
	newMessage.setAddress(request.getRemoteAddr());
	newMessage.setContent(request.getParameter("content"));
	newMessage.setName(user.getFirstname());
	newMessage.setDate(new java.util.Date().toString());
	messages.addMessage(newMessage);
	
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
<%@ include file="header.jsp" %>
<form action="newMessage.jsp" method="post">
<textarea name="content"></textarea><br>
<input type="submit" name="submit" value="Submit">
<p><%= session.getAttribute("message") %></p>
</form>
<br><a href="messages.jsp">Show all messages >></a>
<%@ include file="footer.jsp" %>
</body>
</html>