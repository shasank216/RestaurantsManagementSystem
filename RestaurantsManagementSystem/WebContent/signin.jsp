<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

	String user =request.getParameter("user");
	String password = request.getParameter("pswd");

	/* Jdbc code to fetch user data */
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant_db?user=nithesh&password=1234");
		
		pstmt = con.prepareStatement("select * from user_info where username = ? and password = ?");
		
		pstmt.setString(1, user);
		pstmt.setString(2, password);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			
			request.setAttribute("username", rs.getString(1));
			session.setAttribute("sessionObj", session);
			request.getRequestDispatcher("select.jsp").forward(request, response);
		}
		else
			response.sendRedirect("Login.jsp");
	}
	catch(ClassNotFoundException | SQLException e)
	{
		e.printStackTrace();
	}
%>

</body>
</html>