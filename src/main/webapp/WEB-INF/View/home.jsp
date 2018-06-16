<%--
  Created by IntelliJ IDEA.
  User: Marcin
  Date: 13.03.2018
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css">
</head>

<body class="">
<jsp:include page="menu.jsp" />
<div class="d-flex align-items-center bg-info h-50" style="background-image: url(&quot;../Picture/beach.jpg&quot;); background-size:cover; background-position: center center;">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="display-1 text-center text-warning">
                    <b>
                        <i>Viaggo</i>
                    </b>
                </h1>
            </div>
        </div>
    </div>
</div>
<div class="p-4 bg-info">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img" src="resources/photos/Greece.jpg" alt="Card image">
                    <div class="card-body">
                        <h4 id="Grecja" class="text-dark">
                            <b>Grecja - Santorini</b>
                        </h4>
                        <p class="card-text p-y-1">Tu narodził się teatr. Tu narodziła się filozofia. Tu z morskiej piany wyszła Afrodyta. Tu mieści się pępek świata. Po prostu Grecja.</p>
                        <a href="#" class="card-link">Sprawdź</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img" src="/resources/beach.jpg" alt="Card image">
                    <div class="card-body">
                        <h4 class="card-title">
                            <b class="text-dark">Hiszpania - Barcelona</b>
                        </h4>
                        <p class="card-text p-y-1">Tętniąca życiem, zbudowana z rozmachem Barcelona, stolica Katalonii. Wiecznie otwarte kluby tworzą niepowtarzalną atmosferę</p>
                        <a href="#" class="card-link">Sprawdź</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img" src="../małe obrazki/pexels-photo-10922.jpeg" alt="Card image">
                    <div class="card-body">
                        <h4 class="card-title text-dark">
                            <b>Włochy - Rzym</b>
                        </h4>
                        <p class="card-text p-y-1">Wspaniała architektura, tradycja, krajobrazy, piaszczyste plaże, a także znakomita kuchnia, przyciągają turystów na półwysep Apeniński.</p>
                        <a href="#" class="card-link">Sprawdź</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="h-50 bg-gradient py-4">
    <div class="container">
        <div class="row">
            <div class="p-4 col-lg-12">
                <h4 class="mb-3 text-dark">
                    <b>Opinie naszych klientów są najlepszym dowodem naszej profesjonalnej obsługi.</b>
                </h4>
                <div class="blockquote text-dark">
                    <p class="mb-0 text-dark">
                        <i>Kolejna wycieczka tylko z Viaggo!!! Zawsze pozytywne doświadczenia, nowe miejsca nowe znajomości. Wszystko jest zawsze bardzo profesjonalnie zaplanowane. Oferta katalogowa jest zgoda z opisem, a na miejscu jest zawsze odpowiednia osoba.
                            Pozdrowienia dla Pana Janka dziękujemy za wszysko.</i>
                    </p>
                    <div class="blockquote-footer text-warning">Jan Nowak</div>
                </div>
                <a class="btn btn-warning" href="#" contenteditable="true">Więcej opinie użytkowników naszego biura</a>
            </div>
        </div>
    </div>
</div>
<div class="py-5 bg-info">
    <div class="container bg-light">
        <div class="row mb-3">
            <div class="text-center mx-auto p-4 bg-secondary col-lg-6 col-md-10">
                <h2 class="text-white">Heading 2</h2>
                <p class="text-light">Paragraph - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>
                <a href="#" class="card-link">Sprawdź</a>
            </div>
        </div>
        <div class="row">
            <div class="p-4 col-lg-4">
                <h4 class="mb-3">
                    <b>Tunezja - atuty oferty</b>
                </h4>
                <ul class="">
                    <li class="my-1">Hotel bezpośrednio przy plaży</li>
                    <li class="my-1">Bogata oferta sportowa</li>
                    <li class="my-1">Atrakcje dla dzieci</li>
                    <li class="my-1">Wyśmienita architektura pobliskich atrakcji turystycznych</li>
                </ul>
            </div>
            <div class="p-md-4 col-lg-8">
                <div class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner bg-light" role="listbox">
                        <div class="carousel-item active">
                            <img class="d-block img-fluid mx-auto" src="../małe obrazki/Tunezja1.jpg" data-holder-rendered="true"> </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid mx-auto" src="../małe obrazki/Tunezja2.jpg" data-holder-rendered="true"> </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid mx-auto" src="../małe obrazki/Tunezja3.jpg" data-holder-rendered="true"> </div>
                        <div class="carousel-item">
                            <img class="img-fluid" src="../małe obrazki/Tunezja4.jpg"> </div>
                    </div>
                    <a class="carousel-control-prev" href="blank.html" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="bg-light p-4">
    <div class="container">
        <div class="row">
            <div class="p-0 col-lg-4 col-md-6 bg-light">
                <img class="img-fluid rounded"> </div>
            <div class="col-md-5 align-self-center p-4 offset-md-1">
                <h4 class="">
                    <b>Kontakt</b>
                </h4>
                <p class="mb-4">Przykładowy Adres który zostanie użyty w tym miejscu</p>
                <div class="row text-center">
                    <div class="col-md-2 col-3">
                        <a href="https://pl-pl.facebook.com/" target="_blank">
                            <i class="fa fa-facebook text-primary fa-2x"></i>
                        </a>
                    </div>
                    <div class="col-md-2 col-3">
                        <a href="https://twitter.com/" target="_blank">
                            <i class="fa fa-twitter text-primary fa-2x"></i>
                        </a>
                    </div>
                    <div class="col-md-2 col-3">
                        <a target="_blank" href="https://www.instagram.com/?hl=pl">
                            <i class="fa fa-instagram text-primary fa-2x"></i>
                        </a>
                    </div>
                    <div class="col-md-2 col-3">
                        <a href="https://pl.pinterest.com/" target="_blank">
                            <i class="fa text-primary fa-2x fa-pinterest-p"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="bg-dark py-3 bg-gradient">
    <div class="container">
        <div class="row d-flex justify-content-between">
            <div class="col-lg-4 col-md-6">
                <p class="mb-0 text-dark">Copyright &amp; All Rights Reserved</p>
            </div>
            <div class="col-lg-4 col-md-6">
                <p class="mb-0 text-dark">2018 - Viaggio</p>
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