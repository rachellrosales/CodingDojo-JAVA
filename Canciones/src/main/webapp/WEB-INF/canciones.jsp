<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Aplicacion de Canciones</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
		<link href="/css/styles.css" rel="stylesheet"/>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<h1> Canciones </h1>
			</div>
			<div class="row">
				<c:forEach items="${canciones}" var="cancion">
					<div class="col-3 tarjeta-cancion">
						<h3>${cancion.titulo}</h3>
						<p>Autor: ${cancion.artista.nombre} ${cancion.artista.apellido}</p>
						<form action="/canciones/detalle/${cancion.id}" method="GET">
							<button class= "btn btn-success">
								Detalle
							</button>
						</form>
					</div>
				</c:forEach>
			</div>
			<div class="row">
				<a class= "btn btn-primary" href="/canciones/formulario/agregar">Agregar canción</a>
				<a class="btn btn-secondary" href="/artistas">Ver artistas</a>
			</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	</body>
</html>