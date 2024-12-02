<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		<title>Home</title>
		<script>
			function showAlert(message) {
		        if (message) {
		            alert(message);
		        }
		    }
			
			showAlert("${message}");
		</script>
	</head>
	<body>
	<%@ include file="extra/navbar.jsp" %>
	<main class="container mt-3 text-center">
	
		<c:if test="${not empty sessionScope.userObj}">
		    <h1 class="mt-3">Bienvenido, ${userObj.user}</h1>
		    <h4 class="m-4">¿Que desea hacer?</h4>
		    <a class="btn btn-outline-primary btn-lg me-3" href="${pageContext.request.contextPath}/animal" role="button">Animal</a>
			<a class="btn btn-outline-primary btn-lg me-3" href="search?search=" role="button">Buscar</a>
			<a class="btn btn-outline-primary btn-lg me-3" href="edit?id=${userObj.id}" role="button">Modificar</a>
			<a class="btn btn-outline-primary btn-lg" href="${pageContext.request.contextPath}/delete?id=${userObj.id}" role="button">Eliminar</a>
		</c:if>
		<c:if test="${empty sessionScope.userObj}">
		    <h1 class="mt-3">Bienvenido</h1>
		    <p>Por favor <a href="login.jsp">Inicie Sesion</a> o <a href="registro.jsp"> Registrese</a> </p>
		</c:if>
	</main>
	<%@ include file="extra/footer.jsp" %>
	</body>
</html>