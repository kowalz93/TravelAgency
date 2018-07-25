<%--
  Created by IntelliJ IDEA.
  User: Marcin
  Date: 17.04.2018
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
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
                    <a class="nav-link" href="/album1">
                        <b class="text-dark">
                            <b class="text-dark">
                                <span style="font-weight: normal;">Oferta</span>
                            </b>
                        </b>
                    </a>
                </li>
                <li class="nav-item m-1 text-dark">
                    <a class="nav-link text-dark" href="#">
                        <b class="text-dark">
                            <b class="text-dark">
                                <span style="font-weight: normal;">Last Minute</span>
                            </b>
                        </b>
                    </a>
                </li>
                <li class="nav-item m-1 text-dark">
                    <a class="nav-link text-white" href="#">
                        <b>
                            <b class="text-dark">
                                <span style="font-weight: normal;">O nas</span>
                            </b>
                        </b>
                    </a>
                </li>
                <li class="nav-item m-1 text-uppercase">
                    <a class="nav-link" href="#">
                        <b class="text-dark">
                            <b class="text-dark">
                                <span style="font-weight: normal;">Opinie</span>
                            </b>
                        </b>
                    </a>
                </li>
                <li class="nav-item m-1 text-uppercase">
                    <a class="nav-link" href="#">
                        <b class="text-dark">
                            <b class="text-dark">
                                <span style="font-weight: normal;">Kontakt</span>
                            </b>
                        </b>
                    </a>
                </li>
            </ul>
            <a class="btn btn-default navbar-btn btn-sm m-1 btn-warning" href="/login" >
                <b>
                    <b>Logowanie</b>
                </b>
            </a>
            <a class="btn btn-default navbar-btn m-1 btn-warning btn-sm" href="/register">
                <b class="text-dark">
                    <b>Rejstracja</b>
                </b>
            </a>
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
<div class="">
    <div class="container p-2 w-100">
        <div class="row">
            <div class="text-center col-md-6 p-1">
                <h2 class="text-left">
                    <b>&nbsp;Logowanie</b>
                </h2>
            </div>
        </div>
    </div>
</div>
<div class="bg-light">
    <div class="container p-2 w-100">
        <div class="row">
            <div class="order-md-1 col-md-6 p-1">
                <form class="needs-validation p-1 bg-light border border-primary" novalidate="" action="login" method="POST">
                    <div class="mb-3">
                        <label for="login" class="text-left">Login</label>
                        <div class="input-group">
                            <div class="invalid-feedback" style="width: 100%;"> Your username is required. </div>
                        </div>
                        <input type="text" class="form-control" id="login" required="" placeholder="Login" name="username"> </div>
                    <div class="mb-3">
                        <label for="password">Hasło</label>
                        <input type="password" class="form-control" id="password" required="" placeholder="Hasło" name = "password" >
                        <div class="invalid-feedback"> Please enter your password. </div>
                    </div>
                    <div class="mb-3">
                        <label for="remember-me">Zapamiętaj</label>
                        <input type="checkbox" id="remember-me" name="remember-me" />
                    </div>
                    <button class="btn btn-primary btn-sm" type="submit" data-toggle="modal">Zaloguj</button>
                </form>
                <c:if test="${not empty param['error']}">
                    <p class="klasa_css">Niepoprawny login lub hasło</p>
                </c:if>
            </div>
        </div>
    </div>
</div>
<div class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="my-5 py-3"></div>
            </div>
        </div>
    </div>
</div>
<div class="text-muted text-center py-1">
    <div class="container">
        <div class="row">
            <div class="col-md-12 my-4">
                <p class="mb-1">© 2018-2019 Viaggo</p>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 10px;right:10px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:180px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo&nbsp;&nbsp;
    <img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16">
</pingendo>
</body>

</html>