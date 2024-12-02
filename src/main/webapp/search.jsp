<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Usuarios Registrados</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<%@ include file="extra/navbar.jsp" %>
    <div class="container full-height d-flex flex-column justify-content-center align-items-center">
        <h1 class="text-center m-4">Usuarios Registrados</h1>

        <form action="search" method="get" class="mb-4">
            <div class="input-group w-60 mx-auto">
                <input type="text" name="search" class="form-control" placeholder="Username o Correo" />
                <button class="btn btn-primary" type="submit">Buscar</button>
            </div>
        </form>

        <div class="table-responsive w-75">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Año de nacimiento</th>
                        <th>Animal</th>
                    </tr>
                </thead>
                <tbody>
                    <c:choose>
                        <c:when test="${not empty usuarios}">
                            <c:forEach var="usuario" items="${usuarios}">
                                <tr>
                                    <td>${usuario.user}</td>
                                    <td>${usuario.email}</td>
                                    <td>${usuario.fecha_nacimiento}</td>
                                    <td>${usuario.animal}</td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="5" class="text-center">No se encontraron usuarios</td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                </tbody>
            </table>
        </div>
        <a class="btn btn-warning" href="index.jsp" role="button">Atras</a>
    </div>
    <%@ include file="extra/footer.jsp" %>
</body>
</html>