<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lista de Artistas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
        <link href="/css/styles.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1>Lista de Artistas</h1>
            </div>
            <div class="row">
                <c:forEach items="${artistas}" var="artista">
                    <div class="col-3 tarjeta-cancion">
                        <h3>${artista.nombre} ${artista.apellido}</h3>
                        <form action="/artistas/detalle/${artista.id}" method="GET">
                            <button class="btn btn-success">Detalle</button>
                        </form>
                    </div>
                </c:forEach>
            </div>
            <div class="row mt-3">
                <a class="btn btn-secondary" href="/canciones">Ir a Canciones</a>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>