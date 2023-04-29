<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Hola</h1>
	<h3>${mensaje }</h3>
	<form action="/usuario/registro/tarjeta" method="post">
		<input type="number" name="id" placeholder="idTarjeta"></br>
		<input type="number" name="numeroTarjeta" placeholder="numeroTarjeta"></br>
		<input type="text" name="nombreTitular" placeholder="nombreTitular"></br>
		<input type="date" name="fechaCaducidad" placeholder="fechaCaducidad">Fecha Caducidad</br>
		<input type="number" name="cvv" placeholder="cvv"></br>
		<input type="submit" value="Registrar">


	</form>
</body>
</html>