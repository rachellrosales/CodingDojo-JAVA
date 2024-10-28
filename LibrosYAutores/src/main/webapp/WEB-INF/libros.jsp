<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Todos los Libros</title>
	<link href="/css/styles.css" rel="stylesheet">
</head>
<body>
	<h1>Lista de todos los libros:</h1>
	<ul>
        <c:forEach var="libro" items="${listaLibros}">
            <li><a href="/libros/${libro}">${libro}</a></li>
        </c:forEach>
    </ul>
    <a href="/libros/formulario" class="btn">Agregar un nuevo libro</a>
</body>
</html>