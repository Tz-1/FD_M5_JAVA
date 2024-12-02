<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro - Horóscopo Chino</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <%@ include file="extra/navbar.jsp" %>
    <div class="container d-flex justify-content-center align-items-center">
        <div class="text-center">
            <h1 class="m-3">Registro</h1>
            <form action="${pageContext.request.contextPath}/register" method="post" class="row g-3 needs-validation" novalidate>
                <div class="col-12 mb-3">
                    <label for="nombre" class="form-label">Nombre:</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" required>
                </div>
                <div class="col-12 mb-3">
                    <label for="username" class="form-label">Username:</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="col-12 mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="col-12 mb-3">
                    <label for="clave" class="form-label">Contraseña:</label>
                    <input type="password" class="form-control" id="clave" name="clave" required>
                </div>
                <div class="col-12 mb-3">
                    <label for="confirmclave" class="form-label">Confirmar Contraseña:</label>
                    <input type="password" class="form-control" id="confirmclave" name="confirmclave" required>
                </div>
                <div class="col-12 mb-3">
                    <label for="birthdate" class="form-label">Fecha de Nacimiento:</label>
                    <input type="date" class="form-control" id="fecha_nacimiento" name="fecha_nacimiento" required>
                </div>
                <div class="col-12">
                    <button class="btn btn-primary" type="submit">Registrar</button>
                </div>
            </form>
            <c:if test="${not empty errorMessage}">
                <div class="alert alert-danger m-2">${errorMessage}</div>
            </c:if>
            <div class="m-3">
                <p>Ya tienes una cuenta? <a href="login.jsp" class="text-primary">Inicia sesión aquí</a></p>
            </div>
        </div>
    </div>
    <%@ include file="extra/footer.jsp" %>
    <script>
        (() => {
            'use strict'
            const forms = document.querySelectorAll('.needs-validation')
            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }
                    form.classList.add('was-validated')
                }, false)
            })
        })()
    </script>
</body>
</html>