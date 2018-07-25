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

<div class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-12 my-1">
                <div class="my-1 py-1">
                    <p class="lead" >
                    <p>
                        <a href="tel:+246 - 542 550 5462" class="text-black">
                            <i class="fa d-inline mr-3 text-secondary fa-phone"></i>+246 - 542 550 5462</a>
                    </p>
                    <p>
                        <a href="mailto:info@pingendo.com" class="text-black">
                            <i class="fa d-inline mr-3 text-secondary fa-envelope-o"></i>viaggo@viaggo.com</a>
                    </p>
                    <p>
                        <a href="https://www.google.pl/maps/place/Politechnika+Wroc%C5%82awska/@51.1073907,17.0597825,17z/data=!3m1!4b1!4m5!3m4!1s0x470fe82a7836289b:0xb8f93f04c5c8d70f!8m2!3d51.1073907!4d17.0619712?hl=pl " class="text-black" target="_blank">
                            <i class="fa d-inline mr-3 fa-map-marker text-secondary"></i>wybrzeże Stanisława Wyspiańskiego 27, 50-370 Wrocław</a>
                    </p>
                    </p>

                    <div class="bg-light"></div>
                    <div class="text-center bg-dark" style="background-image: url(&quot;none&quot;);" >
                        <div class="container-fluid">
                            <div class="row">
                                <div class="py-5 col-3" style="background-color:#3b5998">
                                    <a href="https://www.facebook.com/" target="_blank">
                                        <i class="fa fa-fw fa-facebook fa-3x text-white"></i>
                                    </a>
                                </div>
                                <div class="py-5 col-3" style="background-color:#00b2ff">
                                    <a href="https://twitter.com/" target="_blank">
                                        <i class="fa fa-fw fa-twitter fa-3x text-white"></i>
                                    </a>
                                </div>
                                <div class="py-5 col-3" style="background-color:#C92228">
                                    <a href="https://pinterest.com/" target="_blank">
                                        <i class="fa fa-fw fa-3x text-white fa-pinterest"></i>
                                    </a>
                                </div>
                                <div class="py-5 col-3" style="background-color:#4c68d7">
                                    <a href="https://www.instagram.com/" target="_blank">
                                        <i class="fa fa-fw fa-instagram fa-3x text-white"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-12 my-5">
                <div class="my-1 py-1"></div>
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
</body>

</html>