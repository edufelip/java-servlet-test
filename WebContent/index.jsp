<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Page</title>
</head>
<body>
	<h1> Welcome to the Website </h1>
	<form action="/auth" method="GET">
		<input type="text" name="username" placeholder="your username" />
		<input type="password" name="password" placeholder="your password" />
	</form>
</body>
</html>