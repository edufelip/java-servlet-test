<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Page</title>
</head>
<body>

<%	if(session.getAttribute("username")!=null) { %>
	<h1>Welcome, ${username}</h1>
	<p> Click <a href="profile">here</a> to see your tasks </p>
	<form action="/logout" method="GET">
		<input type="button" value="logout"/>
	</form>
		
<%	} else { %>
	<h1> Welcome to the website </h1>
	<p> Please sign in to see your tasks </p>
	<form action="/auth" method="GET">
		<input type="text" name="username" placeholder="your username" />
		<input type="password" name="password" placeholder="your password" />
		<button>Login</button>
	</form>
	<p>don't have an account? click <a href="/register">here</a> to create one</p>
<%	} %>
</body>
</html>