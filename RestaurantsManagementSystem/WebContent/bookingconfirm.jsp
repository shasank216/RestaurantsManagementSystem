<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	int tableNumber = Integer.parseInt(request.getParameter("table_number"));

	int slot = Integer.parseInt(request.getParameter("time"));
	
	/* Jdbc code to fetch user data */
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant_db?user=nithesh&password=1234");

		pstmt = con.prepareStatement("update timing_table set status = 0 where table_number = ? and timing = ?");
		
		pstmt.setInt(1, tableNumber);
		
		if(slot == 1)
			pstmt.setInt(2, 4);
		else
			pstmt.setInt(2, 8);
		
		if(pstmt.executeUpdate() > 0)
		{
			request.setAttribute("table_number", tableNumber);
			request.getRequestDispatcher("success.jsp").forward(request, response);
		}
		
	}
	catch(ClassNotFoundException | SQLException e)
	{
		e.printStackTrace();
	}

%>
</body>
</html>