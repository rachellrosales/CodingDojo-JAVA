<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Detalle Receta</title>
	<link href="/css/styles.css" rel="stylesheet">
</head>
<body>
	<c:choose>
        <c:when test="${not empty ingredientes}">
            <h2>${nombreReceta}</h2>
            <ul>
                <c:forEach var="ingrediente" items="${ingredientes}">
                    <li>${ingrediente}</li>
                </c:forEach>
            </ul>
        </c:when>
        <c:otherwise>
            <p>${mensaje}</p>
        </c:otherwise>
    </c:choose>

    <a href="/recetas" class="btn">Volver a la lista de recetas</a>
</body>
</html>