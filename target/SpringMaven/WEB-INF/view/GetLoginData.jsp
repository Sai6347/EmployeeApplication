<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Data</title>
</head>
<body>
${user}
	<center>
		<table border="">
			<tr>
				<th>Name</th>
				<th>Mobile</th>
				<th>Email</th>
				<th>Password</th>
			</tr>
			
		<c:forEach  items="${user}" var="user" >
			<tr>
				<td>${user.name}</td>
				<td>${user.mobile}</td>
				<td>${user.email}</td>
				<td>${user.password}</td>
			</tr>
		</c:forEach>
		</table>
	</center>
</body>
</html>