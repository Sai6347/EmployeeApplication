<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Address</title>
<style>
	#form1
	{
		padding:20px;
		border: 2px solid;
		width:30%;
		border-radius:15px;
	}
	.ip
	{
		padding:10px;
		width:250px;
		font-size:15px;
		align-items:center;
		border:none;
		border-bottom:2px solid;
	}
	#btn
	{
		padding:5px;
		font-weight:bold;
		border-radius:5px;
		
	}
	
</style>
</head>
<body>
	<center>
		<h2><u>Register Address</u></h2>
		<form action="saveAddress" method="post" id="form1">
		
			<input type="text" name="mobile" value="${mobile}" class="ip"> <br> <br>
			<input type="text" placeholder="Enter Your House No" name="houseno" class="ip"> <br> <br>
			<input type="text" placeholder="Enter Your Street" name="street" class="ip"> <br> <br>
			<input type="text" placeholder="Enter Your City" name="city" class="ip"> <br> <br>
			<input type="text" placeholder="Enter Your District" name="district" class="ip"> <br> <br>
			<input type="text" placeholder="Enter Your State" name="state" class="ip"> <br> <br> 
			<input type="text" placeholder="Enter Your State Id" name="sId" class="ip"> <br> <br> 
			<button id="btn">REGISTER</button>
		</form>
	</center>
</body>
</html>