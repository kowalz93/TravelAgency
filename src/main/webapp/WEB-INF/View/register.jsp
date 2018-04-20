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
    <link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css"> </head>

<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#"><i class="fa d-inline fa-lg fa-bullseye text-warning"></i></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
        <div class="collapse navbar-collapse text-center justify-content-between" id="navbar2SupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item text-warning">
                    <a class="nav-link mx-2 text-warning" href="#"><b>Promocje</b></a>
                </li>
                <li class="nav-item text-warning">
                    <a class="nav-link mx-2 text-warning" href="#"><b>Nowości</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link mx-2 text-warning" href="#"><b>Rezerwuj</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-warning" href="#"><b>O nas</b></a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control" type="text">
                <button class="btn btn-link my-2 my-sm-0" type="submit"><i class="fa d-inline fa-lg fa-search text-warning"></i></button>
            </form>
            <a class="btn btn-default navbar-btn text-warning" href="/login"><b>Logowanie</b></a>
            <a class="btn btn-default navbar-btn text-warning" href="rejstracja.html"><b>Rejstracja</b></a>
        </div>
    </div>
</nav>
<div class="p-1">
    <div class="container">
        <div class="row">
            <div class="text-center col-md-10 mx-auto">
                <h2>Formularz rejstracji</h2>
                <p class="lead">Dane przekazane w niniejszym formularzu zostaną przetworzone wyłącznie do celów rejstracji w serwisie Viaggio.&nbsp;
                    <br>Jednocześnie oświadczam, iż posiadam informacje, że przysługuje mi prawo wglądu i możliwość poprawienia oraz usunięcia moich danych osobowych.</p>
            </div>
        </div>
    </div>
</div>
<div class="">
    <div class="container">
        <div class="row">
            <div class="order-md-1 text-left mx-auto col-md-10">
                <h4 class="mb-3">Formularz</h4>
                <form:form  action="/register" modelAttribute="form" class="needs-validation" method="post">
                    <div class="row">
                        <div class="col-md-6 mb-3"> <label for="firstName">Imie</label>
                            <form:input path="imie" type="text" class="form-control" id="imie" placeholder="" value="" required=""></form:input>
                            <div class="invalid-feedback"> Valid first name is required. </div>
                        </div>
                        <div class="col-md-6 mb-3"> <label for="lastName">Nazwisko</label>
                            <form:input path="nazwisko" type="text" class="form-control" id="nazwisko" placeholder="" value="" required=""></form:input>
                            <div class="invalid-feedback"> Valid last name is required. </div>
                        </div>
                    </div>
                    <div class="mb-3"> <label for="email"><span class="text-muted"><font color="#333333">Pesel</font>(Opcjonalnie)</span></label>
                        <form:input path="pesel" type="number" class="form-control" id="pesel"></form:input>
                        <div class="invalid-feedback"> Please enter a valid email address for shipping updates. </div>
                    </div>
                    <div class="mb-3"> <label for="username">Login</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="username" placeholder="Username" required="">
                            <div class="invalid-feedback" style="width: 100%;"> Your username is required. </div>
                        </div>
                    </div>
                    <div class="mb-3"> <label for="email">Hasło<span class="text-muted"></span></label>
                        <input type="text" class="form-control" id="halo">
                        <div class="invalid-feedback"> Please enter a valid email address for shipping updates. </div>
                    </div>
                    <div class="mb-3"> <label for="email">Email <span class="text-muted">(Opcjonalnie)</span></label>
                        <input type="email" class="form-control" id="email" placeholder="you@example.com">
                        <div class="invalid-feedback"> Please enter a valid email address for shipping updates. </div>
                    </div>
                    <div class="mb-3"> <label for="username">Numer kontaktowy</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="Numer kontaktowy" required="">
                            <div class="invalid-feedback" style="width: 100%;"> Your username is required. </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3"> <label for="firstName">Miejscowość</label>
                            <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
                            <div class="invalid-feedback"> Valid first name is required. </div>
                        </div>
                        <div class="col-md-6 mb-3"> <label for="lastName">Kod pocztowy</label>
                            <input type="text" class="form-control" id="lastName" placeholder="" value="" required="">
                            <div class="invalid-feedback"> Valid last name is required. </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3"> <label for="firstName">Ulica</label>
                            <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
                            <div class="invalid-feedback"> Valid first name is required. </div>
                        </div>
                        <div class="col-md-6 mb-3"> <label for="lastName">Numer domu/mieszkania</label>
                            <input type="text" class="form-control" id="lastName" placeholder="" value="" required="">
                            <div class="invalid-feedback"> Valid last name is required. </div>
                        </div>
                    </div>
                    <button class="btn btn-primary btn-lg btn-block" type="submit">Zarejstruj</button>
                </form:form>
            </div>
        </div>
    </div>
</div>
<div class="py-5 text-muted text-center">
    <div class="container">
        <div class="row">
            <div class="col-md-12 my-4">
                <p class="mb-1">© 2017-2018 Company Name</p>
                <ul class="list-inline">
                    <li class="list-inline-item">
                        <a href="#">Privacy</a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#">Terms</a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#">Support</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>

</html>e
