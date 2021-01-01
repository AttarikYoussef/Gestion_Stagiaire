<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WebLayer/Menu/Navbarauth.jsp"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
 <script type="text/javascript">
        $('.carousel').carousel({
            interval: 2000
        })
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <link href="acc.css" rel="stylesheet" type="text/css">
    <link href="auth.css" rel="stylesheet" type="text/css">
<body>

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="http://upf.ac.ma/wp-content/uploads/2020/03/Scan_0006-2-05.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="http://upf.ac.ma/wp-content/uploads/2020/04/Ramadan-UPF-01.jpg" style=" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="http://upf.ac.ma/wp-content/uploads/2019/03/GLOBAL-01.jpg" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        </div>
        <br>
        <div class="container text-center">
            <h3>� PROPOS DE NOUS</h3><br>
        </div>
        <div class="container-fluid">
            <center>
                <p>L'Universit� Priv�e de F�s offre un programme de formation adapt� aux besoins �conomiques et conjoncturels, et forme des cadres qualifi�s poss�dant des comp�tences in�gal�es, dans les domaines d'ing�nieur, de management, du tourisme, et des sciences juridiques et sociales.
                    Les �tudiants sont �galement choy�s dans un campus qui s'aligne aux standards internationaux des prestigieuses universit�s.</p>
            </center>
        </div>
        <br>

        <div class="jumbotron">
            <center>
                <h1 class="display-4">Benificier Des Cours De Tutorat!</h1>
                <p class="lead">Le site Officiel des Cours de soutien Tutorat de L'univ�rsit� priv�e de F�s.</p>
                <hr class="my-4">
                <p>Vous avez un manque  dans certaines mati�res et vous avez besoin de plus de soutien. Ce site est con�u pour vous. Pour b�n�ficier des cours de soutien, veuillez cliquer sur le bouton ci-dessous..</p>
                <p class="lead">
                    <a class="btn btn-primary btn-lg" href="#" role="button">B�nificier</a>
                </p>
            </center>
            <center>
        </div>
        <br>


</body>
</html>