<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import = "jakarta.servlet.http.HttpSession" %>
<header>
  <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.jsp">Horoscopo Chino</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <!-- Left-aligned menu items -->
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <c:if test="${not empty sessionScope.userObj}">
            <li class="nav-item">
              <span class="nav-link">User: ${userObj.nombre}</span>
            </li>
          </c:if>
          <c:if test="${empty sessionScope.userObj}">
            <li class="nav-item">
              <a class="nav-link" href="login.jsp">Login</a>
            </li>
          </c:if>
          <c:if test="${empty sessionScope.userObj}">
            <li class="nav-item">
              <a class="nav-link" href="registro.jsp">Registro</a>
            </li>
          </c:if>
        </ul>
        <ul class="navbar-nav mb-2 mb-lg-0">
          <c:if test="${not empty sessionScope.userObj}">
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/logout">
                Cerrar sesión
              </a>
            </li>
          </c:if>
        </ul>
      </div>
    </div>
  </nav>
</header>
