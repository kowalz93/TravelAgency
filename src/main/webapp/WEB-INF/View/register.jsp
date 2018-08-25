<%--
  Created by IntelliJ IDEA.
  User: Marcin
  Date: 17.04.2018
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css">
<style type="text/css">
    .error{
        color: red;
    }
</style>
</head>

<body class="bg-info">
<%--<nav class="navbar navbar-expand-md navbar-dark bg-primary">--%>
    <%--<div class="container">--%>
        <%--<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
            <%--<span class="navbar-toggler-icon"></span>--%>
        <%--</button>--%>
        <%--<div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
            <%--<ul class="navbar-nav text-uppercase mr-auto">--%>
                <%--<li class="nav-item text-dark m-1">--%>
                    <%--<a class="nav-link" href="/album1">--%>
                        <%--<b class="text-dark">--%>
                            <%--<b class="text-dark">--%>
                                <%--<span style="font-weight: normal;">Oferta</span>--%>
                            <%--</b>--%>
                        <%--</b>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="nav-item m-1 text-dark">--%>
                    <%--<a class="nav-link text-dark" href="#">--%>
                        <%--<b class="text-dark">--%>
                            <%--<b class="text-dark">--%>
                                <%--<span style="font-weight: normal;">Last Minute</span>--%>
                            <%--</b>--%>
                        <%--</b>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="nav-item m-1 text-dark">--%>
                    <%--<a class="nav-link text-white" href="#">--%>
                        <%--<b>--%>
                            <%--<b class="text-dark">--%>
                                <%--<span style="font-weight: normal;">O nas</span>--%>
                            <%--</b>--%>
                        <%--</b>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="nav-item m-1 text-uppercase">--%>
                    <%--<a class="nav-link" href="#">--%>
                        <%--<b class="text-dark">--%>
                            <%--<b class="text-dark">--%>
                                <%--<span style="font-weight: normal;">Opinie</span>--%>
                            <%--</b>--%>
                        <%--</b>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="nav-item m-1 text-uppercase">--%>
                    <%--<a class="nav-link" href="#">--%>
                        <%--<b class="text-dark">--%>
                            <%--<b class="text-dark">--%>
                                <%--<span style="font-weight: normal;">Kontakt</span>--%>
                            <%--</b>--%>
                        <%--</b>--%>
                    <%--</a>--%>
                <%--</li>--%>
            <%--</ul>--%>
            <%--<a class="btn btn-default navbar-btn btn-sm m-1 btn-warning text-dark" href="/login">--%>
                <%--<b>--%>
                    <%--<b>Logowanie</b>--%>
                <%--</b>--%>
            <%--</a>--%>
            <%--<a class="btn btn-default navbar-btn m-1 btn-warning btn-sm" href="/register">--%>
                <%--<b class="text-dark">--%>
                    <%--<b>Rejstracja</b>--%>
                <%--</b>--%>
            <%--</a>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<span class="navbar-text">--%>
      <%--<p class="mb-0 text-dark text-left">--%>
        <%--<u>pon-pt</u> &nbsp;--%>
        <%--<b>9:00 - 21:00</b>&nbsp;--%>
        <%--<br>--%>
        <%--<u>sb-nd</u> &nbsp;--%>
        <%--<b>10:00 - 16:00</b>&nbsp;--%>
        <%--<br>--%>
        <%--<u>Infolinia</u>--%>
        <%--<b> +48 45 858 85 85</b>--%>
        <%--<br>--%>
      <%--</p>--%>
    <%--</span>--%>
<%--</nav>--%>

<jsp:include page="menu.jsp" />
<div class="p-3"></div>
<div class="bg-light">
    <div class="container bg-light">
        <div class="row bg-light text-uppercase mx-auto w-75 p-2">
            <div class="order-md-1 text-left col-md-12 ml-auto border border-primary">
                <h3 class="mb-3 py-2">Formularz REJSTRACJI</h3>
                <form:form action="/register" class="needs-validation" modelAttribute="form" metod="post">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="firstName">Imie</label>
                            <form:input path="imie" type="text" class="form-control" id="firstName" placeholder="" value=""/>
                            <div class="invalid-feedback"> Valid first name is required. </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="lastName">Nazwisko</label>
                            <form:input path="nazwisko" type="text" class="form-control" id="lastName" placeholder="" value=""/>
                            <div class="invalid-feedback"> Valid last name is required. </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="email">
                <span class="text-muted">
                  <font color="#333333">Pesel</font>(Opcjonalnie)</span>
                        </label>
                        <form:input path="pesel" type="" class="form-control" id="pesel"/>
                        <form:errors path="pesel" cssClass="error"/>
                        <div class="invalid-feedback"> Please enter pesel. </div>
                    </div>
                    <div class="mb-3">
                        <label for="username">Login</label>
                        <div class="input-group">
                            <form:input path="login" type="text" class="form-control" id="username" placeholder="Username" required=""/>
                            <div class="invalid-feedback" style="width: 100%;"> Your username is required. </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="password">Hasło
                            <span class="text-muted"></span>
                        </label>
                        <form:input path="haslo" type="password" class="form-control" id="password"/>
                        <div class="invalid-feedback"> Please enter a password. </div>
                    </div>
                    <div class="mb-3">
                        <label for="email">Email
                            <span class="text-muted">(Opcjonalnie)</span>
                        </label>
                        <form:input path="e_mail" type="email" class="form-control" id="email" placeholder="you@example.com"/>
                        <div class="invalid-feedback"> Please enter a valid email address. </div>
                    </div>
                    <div class="mb-3">
                        <label for="Numer kontaktowy">Numer kontaktowy</label>
                        <div class="input-group">
                            <form:input path="nr_kontaktowy" type="" class="form-control" id="Numer kontaktowy" required=""/>
                            <div class="invalid-feedback" style="width: 100%;"> Your phone number is required. </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="City">Miejscowość</label>
                            <form:input path="miejscowosc" type="text" class="form-control" id="City" placeholder="" value="" required=""/>
                            <div class="invalid-feedback"> Valid city is required. </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="postcode">Kod pocztowy</label>
                            <form:input path="kod_pocztowy" type="text" class="form-control" id="postcode" placeholder="" value="" required=""/>
                            <div class="invalid-feedback"> Valid post code  is required. </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="street">Ulica</label>
                            <form:input path="ulica" type="text" class="form-control" id="street" placeholder="" value="" required=""/>
                            <div class="invalid-feedback"> Valid name of street is required. </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="house number">Numer domu/mieszkania</label>
                            <form:input path="nr_domu_mieszkania" type="text" class="form-control" id="house number" placeholder="" value="" required=""/>
                            <div class="invalid-feedback"> Valid number of house is required. </div>
                        </div>
                    </div>
                    <button class="btn btn-primary btn-block btn-lg text-uppercase py-2 my-2" type="submit">Zarejstruj</button>
                </form:form>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p class="text-center">Dane przekazane w niniejszym formularzu zostaną przetworzone wyłącznie do celów rejstracji w serwisie Viaggio.&nbsp; Jednocześnie oświadczam, iż posiadam informacje, że przysługuje mi prawo wglądu i możliwość poprawienia oraz usunięcia moich
                    danych osobowych.</p>
            </div>
        </div>
    </div>
</div>
<div class="">
    <div class="container">
        <div class="row">
            <div class="text-center col-md-11 mx-auto" style="transition: all 0.25s;"> </div>
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