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
	}
	h2
	{
		font-style:arial;
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
	<center>
		<h2>Welcome</h2>
		
		
			<input type="submit" onclick=register() value="Register User"> <br> <br>
		
			<input type="submit" onclick=viewUser() value="View Users"> <br> <br>

			<input type="submit" onclick=login() value="Login User"> 
		</form>
	</center>
	
	<div id="sample"></div>
</body>
</html>