<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Formulario Libros</title>
	<link href="/css/styles.css" rel="stylesheet">
</head>
<body>
	<h2>Formulario para agregar un nuevo libro</h2>
    <form action="/procesa/libro" method="POST">
        <label for="nombreLibro">Nombre del Libro:</label>
        <input type="text" name="nombreLibro" required><br>

        <label for="nombreAutor">Autor:</label>
        <input type="text" name="nombreAutor" required><br>

        <button type="submit" class="btn btnSuccess">Agregar libro</button>
    </form>
    <a href="/libros" class="btn">Volver a la lista de libros</a>
</body>
</html>