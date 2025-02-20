<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<form action="Login" method="post">
	<input type="text" name="email" placeholder="Enter your email" required>
	<input type="password" name="password" placeholder="Enter your password" required>
	
	<input type="submit" value="login">
</form>
<%
String message = request.getParameter("msg");
if("invalid".equals(message))
{
%>
<p>Email or password is wrong, please try again</p>
<%} %>
</body>
</html>