<%@page import="java.util.ArrayList" %>
<%@page import="com.andrew.model.Product" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Management System</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
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
	<hr>
	<h1>Product management System</h1>
</div>
<%
String email = (String)session.getAttribute("email");
ArrayList<Product> userProducts= (ArrayList<Product>)session.getAttribute("productsList");
if (email != null && userProducts != null)
{ %>
<table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Category</th>
                <th>Active</th>
                <th>Edit</th>
            </tr>
        </thead>
        <%for (int i=0;i<userProducts.size();i++){ %>
        <tbody>
            <tr>
                <td><%out.println(userProducts.get(i).getId()); %></td>
                <td><%out.println(userProducts.get(i).getName()); %></td>
                <td>$<%out.println(userProducts.get(i).getPrice()); %></td>
                <td><%out.println(userProducts.get(i).getCategory()); %></td>
                <td><%out.println(userProducts.get(i).getActive()); %></td>
                <td><a href="#">Edit</a></td>
            </tr>
        </tbody>
        <%} %>
    </table>
<%} %>
</body>
</html>

