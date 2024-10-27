<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mi primera página JSP con Spring</title>
</head>
<body>
	<h1>Bienvenidos a la clase de JSP con Spring</h1>
	<h1> Hola mi nombre es <c:out value="${nombre}"/> y tengo ${edad} años.</h1>
	<h2> Y conozco los siguientes lenguajes de programacion</h2>
	<ul>
		<c:forEach items="${lenguajes}" var="lenguaje">
			<li> ${lenguaje}</li>
		</c:forEach>
	</ul>
	<h2>Cuento con el siguiente certificado</h2>
	<p/>${certificadoJava.getNombre()} - ${certificadoJava.institucion}</p>
</body>
</html>