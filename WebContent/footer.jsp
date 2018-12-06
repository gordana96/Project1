
<footer style="padding: 20px; background-color: gray; width: 100%; font-size: 15px; color: white; text-align: center;">
<p>User: <%=  ((model.User)session.getAttribute("user")).getUsername()%></p>
<p>Date: <%= new java.util.Date() %></p>
</footer>