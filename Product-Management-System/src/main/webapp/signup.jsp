<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="loginContainer">
            <h2>Sign Up</h2>
            <form action="Signup" method="post">
                <input type="text" name="firstName" placeholder="Enter your first name" required>
                <input type="text" name="lastName" placeholder="Enter your last name" required>
                <input type="email" name="email" placeholder="Enter your email" required>
                <input type="password" name="password" placeholder="Enter your password" required>
                <input type="submit" class="btn" value="Sign Up">
            </form>
            <div class="login">
                <p>Already have an account? <a href="login.jsp">Login</a></p>
            </div>
        </div>
</body>
</html>