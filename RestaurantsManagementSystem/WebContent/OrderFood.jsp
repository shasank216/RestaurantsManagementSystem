<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Food</title>

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
.head
{
	position: absolute;
	text-align:center;
	border:2px solid #3366ff;
	float:left;
	top: 50%;
	left: 13%; 
	transform: translate(-50%,-50%);
	padding-top:50px;
	padding-bottom:35px;
	width: 22%;
	height: 38%;
	border-radius: 10px;
	background: rgba(0,0,0,0.5); 
}

.buttons
{
	height: 40px;
	width: 200px;
	background-color: #3366ff;
	border-radius:10px;
	box-shadow:black;
	text-align: center;
}

p
{
	color: #ffffff;
	font-size:small;
	font-weight: bolder;
	font-family:inherit;
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
  
.column
{
	width: 15%;
	height: 50px;
	margin-left:10%;
	margin: 10px;
	padding-left: 20px;
}

.row
{
	width: 20%;
	background: rgba(0,0,0,.5);
	border: 2px solid #3366ff;
	border-radius: 20px;
	display: block;
	clear: both;
	float: left;
}

.foodItems
{
	width: 25%;
	height: auto;
	font-size: 25px;
	font-family: sans-serif;
	background: rgba(0,0,0,.5);
	border: 2px solid #3366ff;
	border-radius: 20px;
	text-align: center;
	float: right;
	padding-bottom: 15px;
	margin-right: 15%;
	display: none;
}
.foodItems input[type=number]
{
	width: 90%;
	height: 25px;
	font-size: 18px;
	border: 2px solid #3366ff;
	border-radius: 5px;
	padding-left: 5px;
}

.foodItems input[type=submit]
{
	height: 40px;
	width: 200px;
	margin-top: 15px;
	color: #fff;
	font-weight: bolder;
	background-color: #3366ff;
	border-radius:10px;
	box-shadow:black;
	text-align: center;
}
</style>


</head>
<body>


	<div class="header">
		<h1>Order Food</h1>
   	</div>	

	
	<div class="row">
		<div class="column">
			<button class="buttons" onclick="chooseFood1()" value="1"><p>BreakFast</p></button>
		</div>
		
		<div class="column">
			<button class="buttons" value="3" onclick="chooseFood3()"><p>Indian</p></button>
		</div>
		
		<div class="column">
			<button class="buttons" value="4" onclick="chooseFood4()"><p>Chinese</p></button>
		</div>
		
		<div class="column">
			<button class="buttons" value="5" onclick="chooseFood5()"><p>Beverage</p></button>
		</div>
		
		<div class="column">
			<button class="buttons" value="6" onclick="confirm()"><p>Confirm</p></button>
		</div>
		
	</div>

<form action="placeorder.jsp" method="post">
	
	<div class="foodItems" id="BreakFast">
		<p>Idli</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Idli"><input type="text" name="price" hidden="hidden" value="10">
		<p>Upma</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Upma"><input type="text" name="price" hidden="hidden" value="12">
		<p>Chappatti</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Chappatti"><input type="text" name="price" hidden="hidden" value="32">
		<p>Poori</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Poori"><input type="text" name="price" hidden="hidden" value="21">
		<p>Parotta</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Parotta"><input type="text" name="price" hidden="hidden" value="42">
		<p>Pongal</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Pongal"><input type="text" name="price" hidden="hidden" value="54">
		<p>Akki Roti</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Akki Roti"><input type="text" name="price" hidden="hidden" value="31">
		<p>Chow Chow Bath</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Chow Chow Bath"><input type="text" name="price" hidden="hidden" value="54">
		<p>Rice bath</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Rice bath"><input type="text" name="price" hidden="hidden" value="20">
	</div>
	
	<div class="foodItems" id="Indian">
		<p>Veg Thali</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Veg Thali"><input type="text" name="price" hidden="hidden" value="70">
		<p>Non-Veg Thali</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Non-Veg Thali"><input type="text" name="price" hidden="hidden" value="90">
		<p>Rice Sambar</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Rice Sambar"><input type="text" name="price" hidden="hidden" value="30">
		<p>Roti Curry</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Roti Curry"><input type="text" name="price" hidden="hidden" value="40">
		<p>Chana Kulcha</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Chana Kulcha"><input type="text" name="price" hidden="hidden" value="50">
		<p>Gujarati Kadhi</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Gujarati Kadhi"><input type="text" name="price" hidden="hidden" value="57">
		<p>Allahabad Ki Tehri</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Allahabad Ki Tehri"><input type="text" name="price" hidden="hidden" value="70">
		<p>Kolhapuri Vegetables</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Kolhapuri Vegetables"><input type="text" name="price" hidden="hidden" value="50">
		<p>Paneer Achaari</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Paneer Achaari"><input type="text" name="price" hidden="hidden" value="43">
	</div>
	
	<div class="foodItems" id="Chinese">
		<p>Veg Fired Rice</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Veg Fired Rice"><input type="text" name="price" hidden="hidden" value="54">
		<p>Noodles</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Noodles"><input type="text" name="price" hidden="hidden" value="43">
		<p>Gobi</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Gobi"><input type="text" name="price" hidden="hidden" value="54">
		<p>Sezwan Rice</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Sezwan Rice"><input type="text" name="price" hidden="hidden" value="65">
		<p>Jeera Rice</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Jeera Rice"><input type="text" name="price" hidden="hidden" value="76">
		<p>Panner Rice</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Panner Rice"><input type="text" name="price" hidden="hidden" value="47">
		<p>Chicken Fired Rice</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Chicken Fired Rice"><input type="text" name="price" hidden="hidden" value="67">
		<p>Egg Fried Rice</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Egg Fired Rice"><input type="text" name="price" hidden="hidden" value="87">
		<p>Omlet</p><input type="number" name="item" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Omlet"><input type="text" name="price" hidden="hidden" value="32">
	</div>
	
	<div class="foodItems" id="Beverage">
		<p>Coffee</p><input type="number" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Coffee"><input type="text" name="price" hidden="hidden" value="10">
		<p>Tea</p><input type="number" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Tea"><input type="text" name="price" hidden="hidden" value="10">
		<p>Badam Milk</p><input type="number" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Badam Milk"><input type="text" name="price" hidden="hidden" value="20">
		<p>Apple Juice</p><input type="number" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Apple Juice"><input type="text" name="price" hidden="hidden" value="60">
		<p>Mango Juice</p><input type="number" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Mango Juice"><input type="text" name="price" hidden="hidden" value="35">
		<p>Badam Milk Shake</p><input type="number" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Badam Milk Shake"><input type="text" name="price" hidden="hidden" value="43">
		<p>Banana Milk Shake</p><input type="number" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Banana Milk Shake"><input type="text" name="price" hidden="hidden" value="30">
		<p>Cock</p><input type="number" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Cock"><input type="text" name="price" hidden="hidden" value="15">
		<p>Pepsi</p><input type="number" value="0" min="0" max="15"><input type="text" name="name" hidden="hidden" value="Pepsi"><input type="text" name="price" hidden="hidden" value="15">
	</div>
	
	<div class="foodItems" id="Confirm">
		<input type="submit" value="Place Order">
	</div>
	
</form>

<script type="text/javascript">
	function chooseFood1()
	{
		var val = document.getElementsByClassName("buttons");
		if(val[0].value === 1);
		{
			document.getElementById("BreakFast").style.display = "block";
			document.getElementById("Indian").style.display = "none";
			document.getElementById("Chinese").style.display = "none";
			document.getElementById("Beverage").style.display = "none";
			document.getElementById("Confirm").style.display = "none";
		}
	}
	
	function chooseFood3()
	{
		var val = document.getElementsByClassName("buttons");
		if(val[1].value === 3);
		{
			document.getElementById("BreakFast").style.display = "none";
			document.getElementById("Indian").style.display = "block";
			document.getElementById("Chinese").style.display = "none";
			document.getElementById("Beverage").style.display = "none";
			document.getElementById("Confirm").style.display = "none";
		}
	}
	function chooseFood4()
	{
		var val = document.getElementsByClassName("buttons");
		if(val[2].value === 4);
		{
			document.getElementById("BreakFast").style.display = "none";
			document.getElementById("Indian").style.display = "none";
			document.getElementById("Chinese").style.display = "block";
			document.getElementById("Beverage").style.display = "none";			
			document.getElementById("Confirm").style.display = "none";
		}
	}
	function chooseFood5()
	{
		var val = document.getElementsByClassName("buttons");
		if(val[3].value === 5);
		{
			document.getElementById("BreakFast").style.display = "none";
			document.getElementById("Indian").style.display = "none";
			document.getElementById("Chinese").style.display = "none";
			document.getElementById("Beverage").style.display = "block";
			document.getElementById("Confirm").style.display = "none";
		}
		
	}
	
	function confirm()
	{
		var val = document.getElementsByClassName("buttons");
		if(val[4].value === 6);
		{
			document.getElementById("BreakFast").style.display = "none";
			document.getElementById("Indian").style.display = "none";
			document.getElementById("Chinese").style.display = "none";
			document.getElementById("Beverage").style.display = "none";
			document.getElementById("Confirm").style.display = "block";
		}
		
	}
</script>

</body>
</html>