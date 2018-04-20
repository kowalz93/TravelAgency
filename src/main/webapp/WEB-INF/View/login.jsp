<%--
  Created by IntelliJ IDEA.
  User: Marcin
  Date: 17.04.2018
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css"> </head>

<body class="text-left">
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
            <a class="btn btn-default navbar-btn text-warning" href="logowanie.html"><b>Logowanie</b></a>
            <a class="btn btn-default navbar-btn text-warning" href="rejstracja.html"><b>Rejstracja</b></a>
        </div>
    </div>
</nav>
<div class="">
    <div class="container p-2 w-100">
        <div class="row">
            <div class="text-center col-md-6 p-1">
                <h2 class="text-left"><b>Logowanie</b></h2>
            </div>
        </div>
    </div>
</div>
<div class="">
    <div class="container p-2 h-50 w-100">
        <div class="row">
            <div class="order-md-1 col-md-6 bg-dark p-1 ">
                <form class="needs-validation p-1" novalidate="" action="">
                    <div class="mb-3"> <label for="login" class="text-left">Login</label>
                        <div class="input-group">
                            <div class="invalid-feedback" style="width: 100%;"> Your username is required. </div>
                        </div>
                        <input type="text" class="form-control" id="Hasło" required="" placeholder="Login"> </div>
                    <div class="mb-3"> <label for="password">Hasło</label>
                        <input type="password" class="form-control" id="Hasło" required="" placeholder="Hasło">
                        <div class="invalid-feedback"> Please enter your password. </div>
                    </div>
                    <button class="btn btn-primary btn-sm" type="submit" data-toggle="modal">Zaloguj</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>

</html>