<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Agregar cancion</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
		<link href="/css/styles.css" rel="stylesheet"/>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<h1>Agregar nueva canción</h1>
			</div>
			<div class="row">
				<form:form action="/canciones/procesa/agregar" method="POST" modelAttribute="cancion">
					<div>
						<form:label path="titulo">Título: </form:label>
						<form:input path="titulo" />
						<form:errors path="titulo" />
					</div>
					<div>
						<form:label path="artista">Artista: </form:label>
						<form:input path="artista" />
						<form:errors path="artista" />
					</div>
					<div>
						<form:label path="album">Álbum: </form:label>
						<form:input path="album" />
						<form:errors path="album" />
					</div>
					<div>
						<form:label path="genero">Género: </form:label>
						<form:input path="genero" />
						<form:errors path="genero" />
					</div>
					<div>
						<form:label path="idioma">Idioma: </form:label>
						<form:input path="idioma" />
						<form:errors path="idioma" />
					</div>
					<button class= "btn btn-primary">
						Agregar
					</button>
				</form:form>
			</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	</body>
</html>