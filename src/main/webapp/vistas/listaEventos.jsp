<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="index.jsp"></jsp:include>
	
	<div class="container">
	<h1 class="text-primary">Lista de eventos</h1>
	<td><a href="/rest/eventos/alta" class="btn btn-primary btn-sm" >Dar Alta Evento</a></td>
	
	<table class="table table-striped table-sm" >
	<th>Id</th><th>Nombre Evento</th><th>Opciones</th>
	
	<c:forEach var="ele" items="${listaEventos }" >
		<tr>
			<td>${ele.idEvento}</td>
			<td>${ele.nombreE }</td>
			<td><a href="/rest/eventos/verUno/${ele.idEvento}" class="btn btn-success btn-sm">Ver detalle</a>
			 
			<a href="/rest/eventos/modificar/${ele.idEvento}" class="btn btn-success btn-sm">Modificar</a> 
			<a href="/rest/eventos/eliminar/${ele.idEvento}" class="btn btn-danger btn-sm">Eliminar</a></td>
			
		</tr>
	</c:forEach>

	
	</table>
	<td><a href="/rest/eventos/destacados" class="btn btn-primary btn-sm" >Ver solo destacados</a></td></br>
	<td><a href="/rest/eventos/activos" class="btn btn-primary btn-sm" >Ver solo activos</a></td>
	</div>
	</body>
</html>