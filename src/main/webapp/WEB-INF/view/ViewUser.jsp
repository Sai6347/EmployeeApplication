<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View User</title>
<style>
	tr,td
	{
		padding:8px;
	}
	a
	{
		color:black;
		text-decoration:none;
	}
	#demo
	{
		position:absolute;
		left:70%;
		top:10%;
	}
	table,td,th
	{
		border-collapse:collapse;
	}
</style>
</head>
<script type="text/javascript">
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
	function register()
	{	 
		
		var xhttp =  new XMLHttpRequest();
		xhttp.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status === 200) 
			{
				document.getElementById("demo").innerHTML = xhttp.responseText;
			}
		};
		
		xhttp.open("GET","http://localhost:8080/SpringMaven/register");
		
		xhttp.send();
	}
</script>
<body>
	
	<!--
		<h3>Home Page</h3>
		
		<input type="button" onclick="location.href='view/Login.jsp'" value="LOGIN" id="btn">
		
		<a href="">Register</a> <br>
		
	 	${users} -->
	
	
	
	<center>
		<h2>User Details here</h2>
		  
		<table border="1">
		<tr>
			<th>Name</th>
			<th>Mobile</th>
			<th>Email</th>
		<!--<th>Password</th> -->
		<!--	<th>Action</th>-->
		</tr>
		
		 <c:forEach var="us" items="${users}" >  
		 <tr>
         	<td>${us.name}</td>
            <td>${us.mobile}</td>
            <td>${us.email}</td>
        <!--<td>${us.password}</td>   -->
        <!--<td><a href="updateUser?mobile=${us.mobile}">Update</a></td>  -->
        <!--	<td onclick="update(${us.mobile})">Update</td>-->
           </tr>    
         </c:forEach>
		</table>
		<br> <br>
		
		<!--	<input type="submit" onclick="register()" value="New User">-->
		
	</center>
	<div id="demo"></div>
</body>
</html>