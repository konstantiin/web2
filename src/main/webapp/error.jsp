<%--
  Created by IntelliJ IDEA.
  User: Kinstintin
  Date: 09.01.2024
  Time: 1:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>LAB2-WEB</title>
  <link rel="stylesheet" href="">
</head>
<body>
<br>
<br>
<p> WRONG DATA </p>
<br>
<p> <%= request.getAttribute("error_message") %></p>
<br>
<div class="form">
  <form method="get" action="main.jsp">
    <input type="submit" value='Go back' >
  </form>
</div>
</body>
</html>
