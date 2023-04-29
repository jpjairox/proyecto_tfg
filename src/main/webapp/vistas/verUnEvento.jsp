<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="index.jsp"></jsp:include>
	<h1>Datos Evento </h1>
	
	<p>${evento.idEvento }</p>
	<p>${evento.nombreE }</p>
	<p>${evento.descripcionE }</p>
	<p>${evento.precioDecimal }</p>


</body>
</html>