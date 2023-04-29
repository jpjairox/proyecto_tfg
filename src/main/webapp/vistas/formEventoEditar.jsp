<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="index.jsp"></jsp:include>

	<h1>FORMULARIO EDITAR EVENTO</h1>
	<form action="/rest/eventos/modificar" method="post">
		<p><input type="text" name="codigo" value="${evento.idEvento }">Codigo</p>
		<p><input type="text" name="nombreE" value="${evento.nombreE }">Nombre</p>
		<p><input type="text" name="descripcionE" value="${evento.descripcionE }">Descripcion</p>
		<p><input type="text" name="precioDecimal" value="${evento.precioDecimal }">Precio</p>
		<p><input type="text" name="tipo" value="${evento.tipo }">Tipo</p>
		
		
		<p><input type="submit" value="Guardar"></p>
		
	
	</form>
</body>
</html>