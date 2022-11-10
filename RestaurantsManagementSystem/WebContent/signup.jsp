<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	String username = request.getParameter("user");
	String password= request.getParameter("pswd");
	String FirstName = request.getParameter("fname");
	String lastName = request.getParameter("lname");
	String phoneNo = request.getParameter("phoneNo");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant_db?user=nithesh&password=1234");
		
		pstmt = con.prepareStatement("insert into user_info values(?,?,?,?,?)");
		
		pstmt.setString(1, username);
		pstmt.setString(2, password);
		pstmt.setString(3, FirstName);
		pstmt.setString(4, lastName);
		pstmt.setString(5, phoneNo);
		
		if(pstmt.executeUpdate() > 0)
		{
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
	}
	catch(ClassNotFoundException | SQLException e)
	{
		e.printStackTrace();
		
		request.getRequestDispatcher("Register.jsp").forward(request, response);
	}
%>
</body>
</html>