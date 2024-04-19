<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
<style>
	.input
	{
		padding:5px;
	}
</style>
</head>
<body>
	<center>
		<h2>Update User</h2>
		<form:form action="updateUserData" modelAttribute="user" method="POST">
			<form:input path="name" placeholder="Enter Your Name" class="input" required="required"/> <br> <br>
			<form:input path="mobile" placeholder="Enter Your Mobile" class="input" required="required"/> <br> <br>
			<form:input path="email" placeholder="Enter Your Email" class="input" required="required"/> <br> <br>
			<form:input type="password" path="password" placeholder="Enter Your Password" class="input" required="required"/> <br> <br>
			<form:input type="password" path="cPassword" placeholder="Confirm Your Password" class="input"/> <br> <br>
			<input type="submit" value="UPDATE">
		</form:form>
	</center>
</body>
</html>