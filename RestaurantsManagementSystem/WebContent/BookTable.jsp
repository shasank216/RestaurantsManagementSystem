<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Table</title>
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

.header
 {
   text-align:center;
   padding:20px;
 }
body
 {
 	background-image: url("background2.jpg");
 	background-repeat: no-repeat;
 	background-size: cover;
 }
 
 .tables
 {
 	float: left;
 	border: solid 1px;
 	width: 30%;
 	height: 50%;
 	margin: 1.33%;
 	background: url("Table.png") no-repeat rgba(0,0,0,.75);
 	background-size: contain;
 	opacity: 0.85;
 }
 
 .tables h3
 {
 	width:50%;
	margin: 32% 40%;
	color: #fff;
 }
 
 .tables font
 {
 	color: #fff;
 	font-size: 25px;
 }
 
 .tables a
 {
 	color: #27e83a;
 	text-align: center;
 }

</style>
</head>
<body>


	<div class="header">
		<h1>Book Table</h1>
   	</div>
 
 <%
 
 	double rating = Double.parseDouble(request.getParameter("rating"));
 	int size = Integer.parseInt(request.getParameter("size"));
 	
 	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant_db?user=nithesh&password=1234");
		
		pstmt = con.prepareStatement("select * from tables_info where rating >= ? and table_size between ? and ?");
		
		pstmt.setDouble(1, rating);
		
		if(size == 1)
		{
			pstmt.setInt(2, 0);
			pstmt.setInt(3, 2);
		}
		else if(size == 2)
		{
			pstmt.setInt(2, 3);
			pstmt.setInt(3, 4);
		}
		else if(size == 3)
		{
			pstmt.setInt(2, 4);
			pstmt.setInt(3, 6);
		}
		else
		{
			pstmt.setInt(2, 6);
			pstmt.setInt(3, 10);
		}
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			
			pstmt = con.prepareStatement("select * from timing_table where table_number = ?");
			
			pstmt.setInt(1, rs.getInt(1));
%>

		<div class="tables">
			<h3>Table No <%= rs.getInt(1) %></h3>
			
			<a href="Bookingpage.jsp?description=<%=rs.getString(3) %>&table_number=<%=rs.getString(1) %>" >Book Now!!!</a>
			<font id="book">Check Booking</font>
		</div>

<%
		}
	}
	catch(ClassNotFoundException | SQLException e)
	{
		e.printStackTrace();
	}
 %>
   	
   	
	<!-- <div class="tables">
		<h3>Table No 2</h3>
		<a href="Bookingpage.jsp" >Book Now!!!</a>
		<font id="book" >Booked</font>
	</div>
	
	<div class="tables">
		<h3>Table No 3</h3>
		<a href="Bookingpage.jsp" >Book Now!!!</a>
		<font id="book" >Booked</font>
	</div>

	<div class="tables">
		<h3>Table No 4</h3>
		<a href="Bookingpage.jsp" >Book Now!!!</a>
		<font id="book" >Booked</font>
	</div>
	
	
	<div class="tables">
		<h3>Table No 5</h3>
		<a href="Bookingpage.jsp" >Book Now!!!</a>
		<font id="book"  >Booked</font>
	</div>
	
	<div class="tables">
		<h3>Table No 6</h3>
		<a href="Bookingpage.jsp" >Book Now!!!</a>
		<font id="book" >Booked</font>
	</div>
	
	<div class="tables">
		<h3>Table No 7</h3>
		<a href="Bookingpage.jsp" >Book Now!!!</a>
		<font id="book" >Booked</font>
	</div>
	
	
	<div class="tables">
		<h3>Table No 8</h3>
		<a href="Bookingpage.jsp" >Book Now!!!</a>
		<font id="book">Booked</font>
	</div>
	
	<div class="tables">
		<h3>Table No 9</h3>
		<a href="Bookingpage.jsp" >Book Now!!!</a>
		<font id="book" >Booked</font>
	</div>
	 -->


</body>
</html>