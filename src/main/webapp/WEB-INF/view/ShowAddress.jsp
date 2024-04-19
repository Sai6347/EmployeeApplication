<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Address</title>
</head>
<body>

	<center>
		<h2>User Address</h2>
		<table border="2">
			<tr>
				<th>H No</th>
				<th>Street</th>
				<th>City</th>
				<th>State</th>
				<th>SId</th>
				<th></th>
				
			</tr>
			<c:forEach var="userAdrs" items="${userAdrs}" >
			<tr>
				<td>${userAdrs.houseno}</td>
				<td>${userAdrs.street}</td>
				<td>${userAdrs.city}</td>
				<td>${userAdrs.state}</td>
				<td>${userAdrs.sId}</td>
				<td onclick="update">${userAdrs.mobile}</td>
			</tr>
			</c:forEach>
		</table>
</body>
</html>