<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>

	<div align="center">
		<form action="validate.app">
			User name:<input type="text" required="required" name="username">
			Log in:<input type="text" required="required" name="password">
			<input type="submit" value="Login">
		</form>
	</div>
</body>
</html>