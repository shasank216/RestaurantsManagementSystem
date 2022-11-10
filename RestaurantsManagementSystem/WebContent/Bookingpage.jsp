<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking page</title>
<style type="text/css">
h1
{
	text-align: center;
	text-decoration: inherit;
	color: #f2f2f2;
	size: 40px;
	width: 25%;
	border-radius: 10px;
	margin-left: 40%;
	border:2px solid #3366ff;
	background: rgba(0,0,0,0.5);
}


body
 {
 	background-image: url("background2.jpg");
 	background-repeat: no-repeat;
 	background-size: cover;
 }
 
 .loginBox
{
	position: absolute;
	top: 50%;
	left: 53%;
	transform: translate(-50%,-50%);
	padding:80px 40px;
	width: 350px;
	height: 350px;
	box-sizing: border-box;
	background: rgba(0,0,0,0.5);
	border: solid #eee;
	border-radius: 10px;
}
.loginBox p
{
	color: white;
	padding: 0;
	margin: 0;
	font:bold;
	font-size: 20px;
}
.loginBox input[type="number"]
{
	width: 100%;
	margin-bottom: 20px;
	border:none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}
.loginBox select
{
		border-bottom:2px solid #99b3ff;
		height: 40px;
		width: 100%;
		font-size: 16px;
		border-radius:5px; 
}
.loginBox input[type="submit"]
{
	margin-left:35%;
	height: 40px;
	width:40%;
	color: #fff;
	font-weight:bold;
	font-size: 16px;
	background: #0039e6;
	border-radius: 10px;
}

 
 </style>
</head>
<body>
	<h1>Book here......</h1>
	
	<div class="loginBox">
		<form action="bookingconfirm.jsp">
			
								
<%
		
		int tableNumber = Integer.parseInt(request.getParameter("table_number"));
	
	/* Jdbc code to fetch user data */
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant_db?user=nithesh&password=1234");

		pstmt = con.prepareStatement("select table_size from tables_info where table_number = ?");
		
		pstmt.setInt(1, tableNumber);
		
		rs = pstmt.executeQuery();
		
		if(rs.next())
		{
			int size  = rs.getInt(1);
			
			int lower = 0, upper = 0;
			
			if(size > 0 && size <= 2  )
			{
				lower = 0;
				upper = 2;
			}
			else if(size > 2 && size <= 4  )
			{
				lower = 2;
				upper = 4;
			}
			else if(size >=4 && size <= 6  )
			{
				lower = 4;
				upper = 6;
			}
			else
			{
				lower = 6;
				upper = 8;
			}
%>
		<p>No. of Person's</p>
			<input min="<%= lower %>" max="<%= upper %>" type="number"><br><br>
<% 
		}
		pstmt = con.prepareStatement("select * from timing_table where table_number = ? and status = 1");
		
		pstmt.setInt(1, tableNumber);
		
		rs = pstmt.executeQuery();
		
		int count = 0;
		
		while(rs.next())
			count++;
	
%>
			<p>Time  </p><select name="time">

<%
		if(count != 0)
		{
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
			
				int timing = rs.getInt(2);
			
				if(timing == 4)
				{
%>
					<option value="1">4:00 to 8:00</option>
<%
				}
				else
				{
%>
					<option value="2">8:00 to 12:00</option>
<%
				}
			}
		}
		else
		{
%>
		<option selected disabled >All Slots Booked</option>
<% 
		}
	}
	catch(ClassNotFoundException | SQLException e)
	{
		e.printStackTrace();
	}
%>							
							</select><br><br>
			<input type="number" name="table_number" value="<%= tableNumber %>" hidden="hidden">
			<input type="submit" value="Book now">
		</form>
	</div>
	
	<h1><%= request.getParameter("description") %></h1>
</body>
</html>