<%--
  Created by IntelliJ IDEA.
  User: Marcin
  Date: 02.06.2018
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-primary bg-gradient">
    <div class="container">

        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto text-uppercase">
                <li class="nav-item text-dark m-1">
                    <a class="nav-link" href="/oferta1">
                        <b class="text-dark">
                            <b class="text-dark">Oferta</b>
                        </b>
                    </a>
                </li>
                <li class="nav-item m-1 text-dark">
                    <a class="nav-link text-dark" href="#">
                        <b class="text-dark">
                            <b class="text-dark">Last Minute</b>
                        </b>
                    </a>
                </li>
                <li class="nav-item m-1">
                    <a class="nav-link" href="#">
                        <b class="text-warning">
                            <b class="text-dark">Nowości</b>
                        </b>
                    </a>
                </li>
                <li class="nav-item m-1 text-dark">
                    <a class="nav-link text-white" href="#">
                        <b>
                            <b class="text-dark">Rezerwuj</b>
                        </b>
                    </a>
                </li>
                <li class="nav-item m-1 text-dark">
                    <a class="nav-link" href="blank.html">
                        <b>
                            <b class="text-dark">O nas</b>
                        </b>
                    </a>
                </li>
                <li class="nav-item m-1 text-uppercase">
                    <a class="nav-link" href="#">
                        <b class="text-dark">
                            <b class="text-dark">Kontakt</b>
                        </b>
                    </a>
                </li>
            </ul>

            <c:if test="${pageContext.request.userPrincipal.name == null}">
                <a class="btn btn-default navbar-btn text-dark btn-warning btn-sm m-1" href="/login">
                    <b>
                        <b>Logowanie</b>
                    </b>
                </a>
                <a class="btn btn-default navbar-btn m-1 btn-warning btn-sm" href="/register">
                    <b class="text-dark">
                        <b >Rejestracja</b>
                    </b>
                </a>
            </c:if>

            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <b class="text-dark">
                    Witaj ${pageContext.request.userPrincipal.principal.user.imie} <%--${pageContext.request.userPrincipal.principal.user.nazwisko} --%> &nbsp;&nbsp;&nbsp;

                </b>
                <a class="btn btn-default navbar-btn m-1 btn-warning btn-sm" href="/logout">
                    <b class="text-dark">
                        <b >Wyloguj</b>
                    </b>
                </a>
            </c:if>



        </div>
    </div>
</nav>
</body>
</html>
