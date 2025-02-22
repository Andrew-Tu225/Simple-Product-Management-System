<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="loginContainer">
        <h2>Login</h2>
        <form action="Login" method="post">
            <input type="text" name="email" placeholder="Enter your email" required>
            <input type="password" name="password" placeholder="Enter your password" required>
            <input type="submit" class="btn" value="Login">
        </form>
        <div class="signup">
            <p>Don't have an account? <a href="signup.jsp">Sign Up</a></p>
        </div>
    </div>
<%
String message = request.getParameter("msg");
if("invalid".equals(message))
{
%>
<p>Email or password is wrong, please try again</p>
<%} %>
</body>
</html>