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

<%--<div class="bg-light">--%>
    <%--<div class="container">--%>
        <%--<div class="row">--%>
            <%--<div class="col-md-12 my-4">--%>
                <%--<div class="my-5 py-3"></div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<div class="bg-light p-2" >
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped table-bordered my-2">
                    <thead>
                    <tr class="text-dark">
                        <th class="text-center">Nr zamówienia</th>
                        <th class="text-center">Data rezerwacji</th>
                        <th class="text-center">Data anulowania</th>
                        <th class="text-center">Termin płatności</th>
                        <th class="text-center">Termin rozpoczęcia oferty</th>
                        <th class="text-center">Data zakupu</th>
                        <th class="text-center">Status</th>
                        <th class="text-center">Cena</th>
                    </tr>
                    </thead>
                    <tbody>

                        <c:forEach items="${rezerwacje}" var="item">
                            <%--brak relazji w bazie dnaych--%>
                            <tr class="">
                                <td class="border border-info" >${item.nr_zamowienia}</td>
                                <td class="border-info border" style="text-align: center">${item.data_rezerwacji}</td>
                                <td class="border border-info" style="text-align: center">${item.data_anulowania}</td>
                                <td class="border border-info" style="text-align: center">${item.termin_platnosci}</td>
                                <td class="border border-info" style="text-align: center">${item.data_od}</td>
                                <td class="border border-info" style="text-align: center">${item.data_zakupu}</td>
                                <td class="border border-info">${item.status}</td>
                                <td class="border border-info" style="text-align: right">${item.cena}</td>
                            </tr>
                        </c:forEach>


                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-12 my-4">
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