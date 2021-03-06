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
<jsp:include page="menu.jsp" />

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
                    <p></p>
                    <div class="alert alert-danger" role="alert">
                        Niepoprawny login lub hasło
                    </div>
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
<%--<pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 10px;right:10px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:180px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo&nbsp;&nbsp;
    <img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16">
</pingendo>--%>
</body>

</html>