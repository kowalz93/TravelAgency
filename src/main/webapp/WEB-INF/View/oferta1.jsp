<%--
  Created by IntelliJ IDEA.
  User: Marcin
  Date: 14.06.2018
  Time: 19:04
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
    <!-- PAGE settings -->
    <link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
    <title>Album</title>
    <meta name="description" content="Wireframe design of an album page by Pingendo">
    <meta name="keywords" content="Pingendo bootstrap example template wireframe album ">
    <meta name="author" content="Pingendo">
    <!-- CSS dependencies -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css">

<body>
<div class="collapse bg-dark" id="navbarHeader">
    <div class="container">
        <div class="row">
            <div class="col-md-7 py-4">
                <h4>About</h4>
                <p class="text-info">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
            <div class="col-md-3 offset-md-1 py-4">
                <h4>Contact</h4>
                <ul class="list-unstyled">
                    <li>
                        <a href="#" class="text-secondary">Follow on Twitter</a>
                    </li>
                    <li>
                        <a href="#" class="text-secondary">Like on Facebook</a>
                    </li>
                    <li>
                        <a href="#" class="text-secondary">Email me</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<jsp:include page="menu.jsp" />
${ofertaAtrr.opis}
<div class="">
    <div class="container-fluid">
        <div class="row bg-light">
            <div class="col-md-12 bg-light">
                <h1 class="display-1">Słoneczna Korsyka</h1>
                <div class="row">
                    <div class="col-md-8">
                        <div id="carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="../../Photos/barcelona.jpg"> </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100 img-fluid" src="../../Photos/beach.jpg">
                                    <div class="carousel-caption">
                                        <h3>Second slide label</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="img-fluid" src="../../Photos/Tunezja2.jpg">
                                    <div class="carousel-caption">
                                        <h2>Title</h2>
                                        <p>Description</p>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="../../Photos/Tunezja1.jpg" role="button" data-slide="prev" target="_blank">
                                <span class="carousel-control-prev-icon"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 py-4">
                        <ul class="">
                            <li>One</li>
                            <li>Two</li>
                            <li>Three</li>
                        </ul>
                        <a href="#" class="btn btn-outline-primary ml-auto">Rezerwacja</a>
                        <a href="#" class="btn btn-outline-primary text-center mr-auto">&nbsp; &nbsp; Zakup &nbsp; &nbsp;</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="">
    <div class="container-fluid">
        <div class="row py-5 bg-info">
            <div class="col-md-3 col-6">
                <a href="stories.html">
                    <img src="https://pingendo.github.io/templates/sections/assets/stories_6.jpg" class="img-fluid"> </a>
            </div>
            <div class="col-md-3 col-6">
                <a href="stories.html">
                    <img src="https://pingendo.github.io/templates/sections/assets/stories_2.jpg" class="img-fluid"> </a>
            </div>
            <div class="col-md-3 col-6">
                <a href="stories.html">
                    <img src="https://pingendo.github.io/templates/sections/assets/stories_3.jpg" class="img-fluid"> </a>
            </div>
            <div class="col-md-3 col-6">
                <a href="stories.html">
                    <img src="https://pingendo.github.io/templates/sections/assets/stories_1.jpg" class="img-fluid"> </a>
            </div>
        </div>
    </div>
</div>
<div class="bg-info">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-12">
                <h1 class="mb-4 text-primary">Benefits and features</h1>
                <p class="lead">Design unique interfaces by customizing Bootstrap theme with Pingendo.
                    <br>Modify colors, fonts and grid setting without opening any CSS file.</p>
                <div class="row text-left mt-5">
                    <div class="col-md-4 my-3">
                        <div class="row mb-3">
                            <div class="text-center col-2">
                                <i class="d-block mx-auto fa fa-3x fa-mars"></i>
                            </div>
                            <div class="align-self-center col-10">
                                <h5 class="text-secondary">
                                    <b>For him</b>
                                </h5>
                            </div>
                        </div>
                        <p>Based on fluid design principles. Works with screen resolution. &nbsp;In-app chat panel 24/7 active. The support you need, right there.</p>
                    </div>
                    <div class="col-md-4 my-3">
                        <div class="row mb-3">
                            <div class="text-center col-2">
                                <i class="d-block mx-auto fa fa-3x fa-venus"></i>
                            </div>
                            <div class="align-self-center col-10">
                                <h5 class="text-secondary">
                                    <b>For her</b>
                                </h5>
                            </div>
                        </div>
                        <p>Help us spreading the word. Tell your friends with just one-click.&nbsp;Work simultaneously on different panels with the switcher</p>
                    </div>
                    <div class="col-md-4 my-3">
                        <div class="row mb-3">
                            <div class="text-center col-2">
                                <i class="d-block mx-auto fa fa-3x fa-neuter"></i>
                            </div>
                            <div class="align-self-center col-10">
                                <h5 class="text-secondary">
                                    <b>For kids</b>
                                </h5>
                            </div>
                        </div>
                        <p>You are working with plain HTML and SASS files on your computer, so extending and integrating Javascript is a breeze.</p>
                    </div>
                    <div class="col-md-4 my-3">
                        <div class="row mb-3">
                            <div class="text-center col-2">
                                <i class="d-block mx-auto fa fa-3x fa-mars-stroke"></i>
                            </div>
                            <div class="align-self-center col-10">
                                <h5 class="text-secondary">
                                    <b>For anyone</b>
                                </h5>
                            </div>
                        </div>
                        <p>Based on fluid design principles. Works with screen resolution.&nbsp;Choose settings depending on the criteria you value the most.</p>
                    </div>
                    <div class="col-md-4 my-3">
                        <div class="row mb-3">
                            <div class="text-center col-2">
                                <i class="d-block mx-auto fa fa-3x fa-mars-double"></i>
                            </div>
                            <div class="align-self-center col-10">
                                <h5 class="text-secondary">
                                    <b>Even couples</b>
                                </h5>
                            </div>
                        </div>
                        <p>In-app chat panel 24/7 active. The support you need, right there. Pingendo enhance the battery duration and the quality of your life.&nbsp;</p>
                    </div>
                    <div class="col-md-4 my-3">
                        <div class="row mb-3">
                            <div class="text-center col-2">
                                <i class="d-block mx-auto fa fa-3x fa-genderless"></i>
                            </div>
                            <div class="align-self-center col-10">
                                <h5 class="text-secondary">
                                    <b>Any other?</b>
                                </h5>
                            </div>
                        </div>
                        <p>Help us spreading the word. Tell your friends with just one-click.&nbsp;Work simultaneously on different panels. Share the work with teammates.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="">Szczegóły oferty</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <p class="">Paragraph. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6"></div>
            <div class="col-md-6"></div>
        </div>
    </div>
</div>
<div class="">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <img class="d-block img-fluid"> </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 10px;right:10px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:250px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;
    <img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16">
</pingendo>
</body>

</html>