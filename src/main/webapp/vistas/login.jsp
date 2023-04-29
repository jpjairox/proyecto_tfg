<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Iniciar sesión</title>
</head>
<body>
	<h1>Iniciar Sesión</h1>
	<form action="/usuario/login" method="post">
	
		<p>Username <input type="text" name="nombre" ></p>
		<p>Password <input type="text" name="password" ></p>
		<p>${requestScope.mensaje}</p> <!-- Mensaje al hacer login, indica correcto o incorrecto -->
		<p><input type="submit" value="Log In" ></p>
		
	</form>
</body>
</html>