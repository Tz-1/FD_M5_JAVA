<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<%@ include file="extra/navbar.jsp" %>
    <div class="container full-height d-flex flex-column justify-content-center align-items-center">
        <h1 class="text-center m-4">Editar Datos</h1>
        <c:if test="${not empty error}">
			    <div class="alert alert-danger m-3" role="alert">
			        ${error}
			    </div>
		</c:if>
        <form action="${pageContext.request.contextPath}/edit" method="post" class="w-50">
            <!-- Hidden field for user ID -->
            <input type="hidden" name="id" value="${u.id}">
 
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" id="nombre" name="nombre" class="form-control" value="${u.nombre}" />
            </div>

            <div class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <input type="text" id="username" name="username" class="form-control" value="${u.user}"/>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" id="email" name="email" class="form-control" value="${u.email}" />
            </div>

            <div class="mb-3">
                <label for="fecha_nacimiento" class="form-label">Fecha de Nacimiento:</label>
                <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" class="form-control" value="${u.fecha_nacimiento}" />
            </div>
			<!-- Requerido para evitar que quede null en la base y no poder accesar a esa cuenta -->
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="text" id="password" name="password" class="form-control" value="${u.pass}" required/>
            </div>

            <input type="hidden" name="id" value="${u.animal}">

            <button type="submit" class="btn btn-primary">Update</button>
            <a class="btn btn-warning" href="index.jsp" role="button">Atras</a>
            
        </form>
    </div>
    <%@ include file="extra/footer.jsp" %>
</body>
</html>