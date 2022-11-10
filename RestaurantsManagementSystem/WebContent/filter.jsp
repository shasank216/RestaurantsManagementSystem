<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Login.css" />
<style type="text/css">
.loginBox select 
{
	width: 100%;
	margin-bottom: 20px;
	height: 40px;
	border: none;
	border-bottom: 1px solid #eee;
	color: #fff;
	background: rgba(0,0,0,0.5);	
}	
</style>
</head>
<body>

	<h1>Welcome</h1>
	<h3>Book Table</h3>

	<nav>
		<hr>
		<a href="Homepage.jsp">Home</a> <a href="Login.jsp">Logout</a>
		<hr>
	</nav>

	<div class="loginBox">
		<form action="BookTable.jsp">

			<input type="text" name="rating" placeholder="enter the rating">

			<select name="size">
				<option selected disabled>Size</option>
				<option value="1">0 - 2</option>
				<option value="2">3 - 4</option>
				<option value="3">4 - 6</option>
				<option value="4">> 6</option>
			</select><br>
			<br> <input type="submit" value="Submit">
	</div>



	</form>

</body>
</html>