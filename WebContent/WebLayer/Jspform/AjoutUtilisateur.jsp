<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label {

	font-style: Fantasy;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>

<center>
<h3>Formulaire ajout d'un nouveau utilisateur</h3>
</center>

<div>
  <form action ="/Gestion_Stagiaire/ServletUtilisateur" method="POST">
  	<center>
    <label for="fname">Id utilisateur</label>
    <input type="text" id="fname" name="id_uti" >
    </center>

    <center>
    <label for="lname">Adresse</label>
    <input type="text" id="lname" name="adresse"  >
    </center>

    <center>
 	<label for="lname">Email</label>
    <input type="text" id="lname" name="email" >
    </center>
    
     <center>
 	<label for="lname">Nom</label>
    <input type="text" id="lname" name="nom" >
    </center>
    
     <center>
 	<label for="lname">Prenom</label>
    <input type="text" id="lname" name="prenom" >
    </center>
    
     <center>
 	<label for="lname">Telephone</label>
    <input type="text" id="lname" name="tele" value="00000" >
    </center>
    
     <center>
 	<label for="lname">ville</label>
    <input type="text" id="lname" name="ville" >
    </center>
  
    <input type="submit" value="Ajouter">
    <a href="http://localhost:8080/Gestion_Stagiaire/WebLayer/Jspform/ValideDemandeSoutenance.jsp">Tbag</a>
  </form>
</div>

</body>
</html>
