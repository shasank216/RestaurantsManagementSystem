<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="Register.css"/>
</head>
<body >
	<h1>Please fill up the Details</h1>
	
	<nav>
   		<hr>
   			<a href="Homepage.jsp">Home</a>
   			<a href="Login.jsp">Login</a>
   			<a href="Register.jsp">Register</a>
   		<hr>
   	</nav>
	
	<div class="loginBox">
		<img alt="" src="User.png" class="user">
		<form action="signup.jsp">
			<p>First Name</p>
			<input type="text" placeholder="firstname" name="fname" required/>
			<p>Last Name</p>
			<input type="text" placeholder="lastname" name="lname" required/>
			<p>phone Number</p>
			<input type="text" placeholder="phone number" name="phoneNo" required/>
			<p>User Name</p>
			<input type="text" placeholder="username" name="user" required/>
			<p>Password</p>
			<input type="password" placeholder="password" name="pswd" required/>
			<input type="submit" value="Register"/>
			
		</form>
	</div>

</body>
</html>