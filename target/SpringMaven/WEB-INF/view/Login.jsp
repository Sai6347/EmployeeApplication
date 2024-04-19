
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
	.ip
	{
		padding:10px;
		
	}
	#btn
	{
		border:2px solid;
		padding:5px;
	}
</style>
</head>
<body>
	<center>
		<form action="loginUser" modelAttribute="user" method="POST">
			<h3>User Login</h3>
			<input name="mobile" placeholder="Enter Your Mobile" class="ip" required="required"/> <br><br>
			<input type="password" name="password" placeholder="Enter Your Password" class="ip" required="required"/> <br><br>
			<input type="submit" value="LOGIN" id="btn"> 
		</form>
	</center>
</body>
</html>