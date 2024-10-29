<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Detalle de cancion</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
		<link href="/css/styles.css" rel="stylesheet"/>
	</head>
	<body>
		<div class="container">
				<div class="row">
					<h1>Detalle de la cancion: ${cancion.titulo}</h1>
				</div>
				<div class="row tarjeta-cancion">
				    <p>Artista: ${cancion.artista}</p>
				    <p>Álbum: ${cancion.album}</p>
				    <p>Género: ${cancion.genero}</p>
				    <p>Idioma: ${cancion.idioma}</p>
				</div>
				<div class="row mt-2">
					<form class= "col-2" action="/canciones" method="GET">
						<button class= "btn btn-secondary">
							Volver
						</button>
					</form>
					<form class= "col-5" action="/canciones/eliminar/${cancion.id}" method="POST">
						<input type="hidden" name="_method" value="DELETE"/>
						<button class= "btn btn-danger">
							Eliminar canción
						</button>
					</form>
					<form class= "col-5" action="/canciones/formulario/editar/${cancion.id}">
						<button class= "btn btn-info">
							Editar canción
						</button>
					</form>
				</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	</body>
</html>