<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Data</title>
<style>
	body
	{
		background:linear-gradient(to right,#b0c4de,#f5f5dc);
		margin:0px;
	}
	#h2
	{
		font-style:arial;
		text-align:center;
		position:relative;
		top:-60px;
	}
	table,th,td
	{
		border-collapse:collapse;
	}
	th,td
	{
		padding:10px;
		
	}
	#btn
	{
		padding:5px;
		font-weight:bold;
		border-radius:5px;
		border:2px solid grey;
		box-shadow:2px 2px 2px black;
	}
	#btn:hover
	{
		background-color: blueviolet;
		color:white;
		border:2px solid blueviolet;
	}
	#logout
	{
		padding:5px;
		font-weight:bold;
		border-radius:5px;
		border:2px solid grey;
		box-shadow:2px 2px 2px black;
		
	}
	#logout:hover
	{
		background-color: red;
		color:white;
		border:2px solid red;
	}
	header
	{
		width:100%;
		height:60px;
		background-color:lightgray;
	}
	img
	{
		height:60px;
		position:relative;
		left:40px;
	}
	#out
	{
		position:fixed;
		top:5px;
		left:80%;
	}
	
</style>
</head>
<script>
	function address(mobile)
	{	 
		console.log(mobile);
		var xhttp =  new XMLHttpRequest();
		xhttp.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status === 200) 
			{
				document.getElementById("demo").innerHTML = xhttp.responseText;
			}
		};
		
		xhttp.open("GET","http://localhost:8080/SpringMaven/getUserAddress?mobile="+mobile);
		
		xhttp.send();
	}
		
	function update(mobile)
	{	 
		console.log(mobile);
		var xhttp =  new XMLHttpRequest();
		xhttp.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status === 200) 
			{
				document.getElementById("demo").innerHTML = xhttp.responseText;
			}
		};
		
		xhttp.open("GET","http://localhost:8080/SpringMaven/updateUser?mobile="+mobile);
		
		xhttp.send();
	}
	
	function register(mobile)
	{	 
		console.log(mobile);
		var xhttp =  new XMLHttpRequest();
		xhttp.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status === 200) 
			{
				document.getElementById("demo").innerHTML = xhttp.responseText;
			}
		};
		
		xhttp.open("GET","http://localhost:8080/SpringMaven/registerAdrs?mobile="+mobile);
		
		xhttp.send();
	}
</script>
<body>
	<header>
		<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7Eq5eetCPgo4hDHvHFBWKy9uikDj94xWXnQXNyjvQPPAJD9k4EbdgCvQ95j99CEcU0Ro&usqp=CAU">
		<div id="out"><a href="http://localhost:8080/SpringMaven/home"><button id="logout">Log Out</button></a></div>	
	</header>
	<!-- ${userInfo} -->
	<center>
		<h2 id="h2">User Details</h2>
		<table border="2">
			<tr>
				<th>Name</th>
				<th>Mobile</th>
				<th>Email</th>
				<th>Password</th>
				<th></th>
			</tr>
			<tr>
				<td>${userInfo.name}</td>
				<td>${userInfo.mobile}</td>
				<td>${userInfo.email}</td>
				<td>${userInfo.password}</td>
				<td onclick="update(${userInfo.mobile})">Update</td>
			</tr>
		</table>
		<table>
				<tr>
					<td><button onclick="address(${userInfo.mobile})" id="btn">Show Address</button></td>
					<td><button onclick="register(${userInfo.mobile})" id="btn">Register Address</button></td>
			<!-- 	<td><button onclick="masterData()" id="btn">Master Data</button></td>  -->
				</tr>
		</table>
	</center>
	<div id="demo"></div>
</body>
</html>