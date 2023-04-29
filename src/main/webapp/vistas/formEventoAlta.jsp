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

	<h1>FORMULARIO DE AlTA DE EVENTO</h1>
	<form action="/rest/eventos/alta" method="post">
	
		<p><input type="text" name="nombreE" >Nombre</p>
		<p><input type="text" name="descripcionE" >Descripcion</p>
		<p><input type="text" name="precioDecimal" >Precio-pesona</p>
		<p><input type="text" name="tipo">Tipo</p>
		
		
		<p><input type="submit" value="Enviar"></p>
		
	
	</form>
</body>
</html>