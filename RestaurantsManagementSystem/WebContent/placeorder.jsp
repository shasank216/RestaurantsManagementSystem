<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>confirmed</title>
<link rel="stylesheet" type="text/css" href="Login.css"/>
<style type="text/css">
	.loginBox
	{
		background: none;
	}
	table
	{
		color: #fff;
		border-collapse: collapse;
		border: 2px solid;
		text-align: center;
		width: 80%;
		margin: 50px auto 0px;
		background: rgba(0,0,0,0.5);
		font-family: sans-serif;
		border-radius: 10px;	
	}
	table th
	{
		height: 50px;
		font-size: 22px;
		font-weight: bolder;
		color: #000;
		background: rgba(255,255,255,0.75);
	}
	table td
	{
		height: 30px;
		font-size: 18px;
	}
</style>
</head>
<body>
	
	<div class="header">
		<h1>Confirmed Orders</h1>
   	</div>
   	 <nav>
   		<hr>
   			<a href="Homepage.jsp">Home</a>
   			<a href="Login.jsp">Logout</a>
   		<hr>
   	</nav>
	<table border="3">
	
	<tr>
	
		<th>Item Name</th>
		<th>Item Quantity</th>
		<th>Item Price</th>
		<th>Total Item Price</th>
	</tr>
<%

	String[] getItemList = request.getParameterValues("item");
	
	String[] getItemName = request.getParameterValues("name");
	
	String[] getItemPrice = request.getParameterValues("price");
	
	HashMap<String,Integer> hm = new HashMap<String,Integer>();
	
	HashMap<String,Integer> price = new HashMap<String,Integer>();
		
	for(int i = 0 ; i < getItemList.length && i < getItemName.length ; i++)
		hm.put(getItemName[i], Integer.parseInt(getItemList[i]));
	
	for(int i = 0 ; i < getItemList.length && i < getItemPrice.length ; i++)
		price.put(getItemName[i], Integer.parseInt(getItemPrice[i]));
	
	for(Map.Entry<String,Integer> entry : hm.entrySet())
	{
		if(entry.getValue() != 0)
		{
			int cost =  price.get(entry.getKey()) ;
			int totalCost = entry.getValue() * cost;
%>

		<tr>
			<td><%= entry.getKey() %></td>
			<td><%= entry.getValue() %></td>
			<td><%= cost %></td>
			<td><%= totalCost %></td>
		</tr>
<% 		
		}
	}
%>
	</table>
</body>
</html>