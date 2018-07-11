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
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css">

    <style type="text/css">
        .klasa_css{
            color: red;
        }
    </style>
</head>

<body class="bg-info">
<nav class="navbar navbar-expand-md navbar-dark bg-primary">
    <div class="container">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav text-uppercase mr-auto">
                <li class="nav-item text-dark m-1">
                    <a class="nav-link" href="/album">
                        <b class="text-dark">
                            <b class="text-dark">
                                <span style="font-weight: normal;">Oferta</span>
                            </b>
                        </b>
                    </a>
                </li>
                <li class="nav-item m-1 text-dark">
                    <a class="nav-link text-dark" href="/last_minute">
                        <b class="text-dark">
                            <b class="text-dark">
                                <span style="font-weight: normal;">Last Minute</span>
                            </b>
                        </b>
                    </a>
                </li>
                <li class="nav-item m-1 text-dark">
                    <a class="nav-link text-white" href="/about">
                        <b>
                            <b class="text-dark">
                                <span style="font-weight: normal;">O nas</span>
                            </b>
                        </b>
                    </a>
                </li>
                <li class="nav-item m-1 text-uppercase">
                    <a class="nav-link" href="/opinions">
                        <b class="text-dark">
                            <b class="text-dark">
                                <span style="font-weight: normal;">Opinie</span>
                            </b>
                        </b>
                    </a>
                </li>
                <li class="nav-item m-1 text-uppercase">
                    <a class="nav-link" href="/contact">
                        <b class="text-dark">
                            <b class="text-dark">
                                <span style="font-weight: normal;">Kontakt</span>
                            </b>
                        </b>
                    </a>
                </li>
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                <li class="nav-item m-1 text-uppercase">
                    <a class="nav-link" href="/user_profile">
                        <b class="text-dark">
                            <b class="text-dark">
                                <span style="font-weight: normal;">Profil Uzytkownika</span>
                            </b>
                        </b>
                    </a>
                </li>
                </c:if>
            </ul>

            <c:if test="${pageContext.request.userPrincipal.name == null}">
                <a class="btn btn-default navbar-btn btn-sm m-1 btn-warning" href="/login">
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
    <span class="navbar-text">
      <p class="mb-0 text-dark text-left">
        <u>pon-pt</u> &nbsp;
        <b>9:00 - 21:00</b>&nbsp;
        <br>
        <u>sb-nd</u> &nbsp;
        <b>10:00 - 16:00</b>&nbsp;
        <br>
        <u>Infolinia</u>
        <b> +48 45 858 85 85</b>
        <br>
      </p>
    </span>
</nav>


        </div>
    </div>
</nav>
</body>
</html>
