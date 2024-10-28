<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Detalle de libro</title>
	<link href="/css/styles.css" rel="stylesheet">
</head>
<body>
	<h2>Detalle del Libro</h2>
    <c:choose>
        <c:when test="${not empty nombreLibro}">
            <p>Libro: ${nombreLibro}</p>
            <p>Autor: ${nombreAutor}</p>
        </c:when>
        <c:otherwise>
            <p>${mensaje}</p>
        </c:otherwise>
    </c:choose>
    <a href="/libros" class="btn">Volver a la lista de libros</a>
</body>
</html>