<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hola</h1>
	<h3>${mensaje }</h3>
	<form action="/usuario/registro" method="post">
		<input type="text" name="nombre" placeholder="Nombre"></br>
		<input type="email" name="email" placeholder="Email"></br>
		<input type="text" name="password" placeholder="Password"></br>
		<input type="submit" value="Registrar">

	</form>
	
	<h3><a href="/usuario/registro/tarjeta" class="btn btn-success btn-sm">Registro tarjetas bancarias</a></h3>
	
</body>
</html>