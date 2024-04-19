<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
	body
	{
		background: linear-gradient(to left,skyblue,white);
		margin:0px;
	}
	#h2
	{
		font-style:arial;
		text-align:center;
		position:relative;
		top:-60px;
	}
	table,td,th
	{
		border-collapse:collapse;
	}
	.btn
	{
		padding:10px;
		margin:20px;
		font-weight:bold;
	}
	.btn:hover
	{
		background-color: indigo;
		color:white;
		border:2px solid indigo;
		box-shadow:3px 3px 3px black;
	}
	input
	{
		border-radius:5px;
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
	#art
	{
		width:40%;
		height:250px;
		position:fixed;
		top:60%;
		left:57%;
	}
	footer
	{
		align:center;
		position:fixed;
		left:45%;
		bottom:0px;
	}
</style>
</head>
<script type="text/javascript">
	function register()
	{	 
		console.log("hii");
		var xhttp =  new XMLHttpRequest();
		xhttp.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status === 200) 
			{
				document.getElementById("sample").innerHTML = xhttp.responseText;
			}
		};
		
		xhttp.open("GET","http://localhost:8080/SpringMaven/register");
		
		xhttp.send();
	}
	function viewUser()
	{	 
		console.log("hii");
		var xhttp =  new XMLHttpRequest();
		xhttp.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status === 200) 
			{
				document.getElementById("sample").innerHTML = xhttp.responseText;
			}
		};
		
		xhttp.open("GET","http://localhost:8080/SpringMaven/viewUser");
		
		xhttp.send();
	}
	function login()
	{	 
		console.log("hii");
		var xhttp =  new XMLHttpRequest();
		xhttp.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status === 200) 
			{
				document.getElementById("sample").innerHTML = xhttp.responseText;
			}
		};
		
		xhttp.open("GET","http://localhost:8080/SpringMaven/login");
		
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
	
</script>
<body>
	<header>
		<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7Eq5eetCPgo4hDHvHFBWKy9uikDj94xWXnQXNyjvQPPAJD9k4EbdgCvQ95j99CEcU0Ro&usqp=CAU">
		<h2 id="h2">Home</h2>	
	</header>
	<center>
		
			
			<input type="submit" onclick=register() value="Register User" class="btn"> 
		
			<input type="submit" onclick=viewUser() value="View Users" class="btn"> 

			<input type="submit" onclick=login() value="Login User" class="btn"> 
		</form>
	</center>
	
	<div id="sample"></div>
	<img src="https://static.vecteezy.com/system/resources/previews/001/191/178/non_2x/flower-floral-png.png" id="art">
	<footer>
		Copyright &copy all rights reserved 2023
	</footer>
</body>
</html>