<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous"> 
	
	<link href="auth.css" rel="stylesheet" type="text/css">
		
	<nav class="navbar navbar-expand-lg navbar-custom">
    <script src="https://kit.fontawesome.com/2da0a9a74b.js" crossorigin="anonymous"></script>
    <a class="navbar-brand" title="Université Privée de Fès" href="http://upf.ac.ma/" target="_blank" ><i class="fas fa-university"></i>Univérsité privée de Fés</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
        </ul>

<div style="display:flex; justify-content:flex-end; width:100%; padding:0;">
        <form class="form-inline my-2 my-lg-0" action="http://127.0.0.1:8000/SeConnecter">
            <button class="btn btn-outline-success my-2 my-sm-0" onclick="window.location.href='http://127.0.0.1:8000/SeConnecter';" type="submit"><i class="fas fa-sign-out-alt"></i>Se Connecter</button>
        </form>
        </div>
    </div>
</nav>
