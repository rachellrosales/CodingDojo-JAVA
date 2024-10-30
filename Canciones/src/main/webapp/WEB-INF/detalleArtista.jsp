<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Detalle de artista</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
		<link href="/css/styles.css" rel="stylesheet"/>
	</head>
	<body>
		<div class="container">
				<div class="row">
					<h1>Detalle del artista: ${artista.nombre} ${artista.apellido}</h1>
				</div>
				<div class="row tarjeta-cancion">
				    <p>Biografía: ${artista.biografia}</p>
					<h5>Canciones</h2>
					<ul>
					    <c:forEach items="${artista.canciones}" var="cancion">
					        <li>${cancion.titulo}</li>
					    </c:forEach>
					</ul>
				</div>
				<div class="row mt-2">
					<form class= "col-2" action="/artistas" method="GET">
						<button class= "btn btn-secondary">
							Volver
						</button>
					</form>
				</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	</body>
</html>