<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>
<style>
	.input
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
		background-color: darkblue;
		color:white;
		border:2px solid darkblue;
	}
</style>
</head>
<body>
	<center>
		<h2>Register User</h2>
		<form:form action="saveUser" modelAttribute="user" method="POST">
			<form:input path="name" placeholder="Enter Your Name" class="input" required="required"/> <br> <br>
			<form:input path="mobile" placeholder="Enter Your Mobile" class="input" required="required"/> <br> <br>
			<form:input path="email" placeholder="Enter Your Email" class="input" required="required"/> <br> <br>
			<form:input type="password" path="password" placeholder="Enter Your Password" class="input" required="required"/> <br> <br>
			<form:input type="password" path="cPassword" placeholder="Confirm Your Password" class="input"/> <br> <br>
			<input type="submit" value="REGISTER" id="btn">
		</form:form>
	</center>
</body>
</html>