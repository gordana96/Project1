<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="messages" class="model.MessageController" scope="application"></jsp:useBean>
<jsp:useBean id="user" class="model.User" scope="session"></jsp:useBean>

<%
if (!user.isLoggedIn()) {
	response.sendRedirect("login.jsp");
}
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<% if (messages.getMessages().size() == 0) {
	response.getWriter().print("No messages.");
} else {
%>
<table border=1>
<tr>
<td>Name</td>
<td>Date</td>
<td>Address</td>
<td>Content</td>
</tr>
<%for (model.Message message : messages.getMessages()){ %>
<tr>
<td><%=message.getName() %></td>
<td><%=message.getDate() %></td>
<td><%=message.getAddress() %></td>
<td><%=message.getContent() %></td>
</tr>
<%} %>
</table>
<%} %>
<br><a href="newMessage.jsp">Add new message >></a>
<%@ include file="footer.jsp" %>
</body>
</html>