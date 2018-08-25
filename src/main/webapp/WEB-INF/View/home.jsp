<%--
  Created by IntelliJ IDEA.
  User: Marcin
  Date: 17.06.2018
  Time: 01:35
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

<div class="d-flex align-items-center bg-info h-50" style="background-image: url('/resources/beach.jpg'); background-size:cover; background-position: center center;">
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

            <c:if test="${not empty listaOfert}">
                <c:forEach items="${listaOfert}" var="item">
                    <div class="col-md-4 p-3">
                        <div class="card box-shadow">
                            <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
                            <div class="card-header">${item.tytul}
                                <br> </div>
                            <div class="card-body">
                                <p class="card-text" style="min-height: 3em; max-height: 3em; overflow: hidden;">${item.opis}</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <a class="btn btn-primary" href="/offer?id=${item.id}">Szczegóły</a>
                                    </div>
                                    <small class="text-muted">9 mins</small>
                                </div>

                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:if>


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
                <a class="btn btn-warning" href="/opinions" >Więcej opinie użytkowników naszego biura</a>
            </div>
        </div>
    </div>
</div>
<div class="py-5 bg-info">
    <div class="container bg-light">
        <div class="row mb-3">
            <div class="text-center mx-auto p-4 bg-secondary col-lg-6 col-md-10">
                <h2 class="text-white">ZAPRASZAMY</h2>
                <p class="text-light">Viaggo zajmuje pozycję niekwestionowanego lidera branży turystycznej.
                    Sukces nie pojawił się nagle. Jest konsekwencją wielu lat pracy, stopniowego i przemyślanego rozwoju firmy.
                    Viaggio powstała z pasji, co pozwoliło nie tylko traktować firmę, jako źródło dochodu, ale także,
                    jako drogę do realizacji marzeń i ambicji.

                </p>
                <a href="#" class="card-link">Sprawdź</a>
            </div>
        </div>
        <div class="row">
            <div class="p-4 col-lg-4">
                <h4 class="mb-3">
                    <b>Viaggo - atuty oferty</b>
                </h4>
                <ul class="">
                    <li class="my-1">Hotele bezpośrednio z widokiem na plaże</li>
                    <li class="my-1">Bogata oferta turystyczna</li>
                    <li class="my-1">Zapewniona opieka polskiego delegata</li>
                    <li class="my-1">Największe kurorty w basenie morza śródziemnego</li>
                </ul>
            </div>
            <div class="p-md-4 col-lg-8">
                <div id="carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <%--<div class="carousel-item active">
                            <img class="img-fluid" src="/resources/Croatia_Dubrovnik.jpg" width="800" height="600"> </div>--%>
                        <div class="carousel-item active">
                            <img class="img-fluid" src="/resources/Rzym.jpg" width="800" height="600">
                        </div>
                        <div class="carousel-item">
                            <img class="img-fluid" src="/resources/Greece.jpg" width="800" height="600">
                        </div>
                        <div class="carousel-item">
                            <img class="img-fluid" src="/resources/Camera.jpg" width="800" height="600" >
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
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
                <img class="img-fluid rounded" src="/resources/mapa.jpg" width="600" height="600" > </div>
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
            <div class="col-lg-4 col-md-4 text-center">
                <p class="mb-0 text-dark">
                    <br>Copyright &amp; All Rights Reserved</p>
            </div>
            <div class="col-lg-4 col-md-4">
                <p class="mb-0 text-dark text-center">
                    <br>© 2018-2019 Viaggo</p>
            </div>
            <div class="col-md-4 text-center">
                <p class="mb-0 text-dark">
                    <u>pon-pt</u>&nbsp; &nbsp;
                    <b>9:00 - 21:00 </b>&nbsp;
                    <br>
                    <u>sb-nd</u>
                    <b>&nbsp; 10:00 - 16:00 &nbsp;</b>
                    <br>
                    <u>Infolinia</u>
                    <b>+48 45 858 85 85</b>
                </p>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>