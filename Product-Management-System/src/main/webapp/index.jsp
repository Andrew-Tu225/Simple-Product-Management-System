<!DOCTYPE html>
<html>
<head>
    <title>Product Management System</title>
    <link rel="stylesheet" type="text/css" href="/css/styles.css">
</head>
<body>
<div class="header">
	<nav>
		<ul>
			<li><a href="/">Profile</a></li>
			<li><a href="/">Recent change</a></li>
			<%if((String)(session.getAttribute("email")) != null)
			{
			%>
			<li><a href="/">Logout</a></li>
			<%}
			else
			{%>
			<li><a href="login.jsp?msg=none">Login</a></li>
			<%}%>
		</ul>
	</nav>
	<h1>Product management System</h1>
</div>
<%
String email = (String)session.getAttribute("email");

if (email != null)
{ %>
<h5>In alien mode</h5>
<%} %>
</body>
</html>

