<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
<link rel="stylesheet" type="text/css" href="Login.css"/>
</head>
<body>
<h1>Welcome</h1>
<nav>
   		<hr>
   			<a href="Homepage.jsp">Home</a>
   			<a href="Login.jsp">Logout</a>
   		<hr>
   	</nav>
<h1>Table booking Confirmed</h1>
<%
	int tableNumber = (Integer) request.getAttribute("table_number");
%>

<h2>Table Booked with Table Number <%= tableNumber %></h2>
</body>
</html>