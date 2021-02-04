<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>gestion gerant</title>

<script src="https://kit.fontawesome.com/2da0a9a74b.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<style type="text/css">
.modal-xl{
  width:2000px;
}

.sl{

padding-left: 10px;padding-right: 10px;


}



</style>
</head>
<body>

<!-- Modal -->
<div class="modal fade" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><u>N</u>ouveau Encadrant </h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	
	<form action="/Gestion_Stagiaire/ServletDemandeStage" method="post">

		
	 <div class="form-group">
    <label for="formGroupExampleInput">ID Enseignant</label>
    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="">
  </div>
  <div class="form-outline">
		      <select class="form-control" name="Secteur">
			      <option>Informatique</option>
			      <option>Industrie</option>
			      <option>Economie</option>
			      <option>Architecture</option>
			      <option>Autre</option>
			    </select>
		      <label class="form-label" for="form8Example1"><i class="fas fa-puzzle-piece"></i>  Filiere </label>
		    </div>
		
		
		
        	
        	
        	
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger rounded-pill" data-bs-dismiss="modal"><i class="far fa-times-circle"></i> Abandoner</button>
        <button type="submit" class="btn btn-success rounded-pill" data-confirm="modal"><i class="fas fa-check-circle"></i> Ajouter</button>
      </div>
      </form>
    </div>
  </div>
</div>







<br>

	<div class="container">
		<div class="jumbotron">
			<div class="card">
			  <div class="card-header text-white text-center" style="background-color: #25383C;">
			  		<h3><u>G</u>estion des Encadrants</h3>
			  </div>
			  
			  <div class="card-body">
			  
			   
			    	<div class="row" style="float: right;">
				    	<div class="col-md-12 ">
				    		<button class="btn btn-success rounded-pill" data-bs-toggle="modal" data-bs-target="#add"><i class="fas fa-plus-circle"></i> Ajouter Encadrant </button><br>
				    	</div>
				    	</div>
				    	
				    	
				    
				    
			    	<br>
			    	<br>
				    <table class="table table-dark table-hover table-bordered">
					  <thead>
					    <tr>
					      <th scope="col" style="width:12%"><i class="fas fa-list-ol"></i> ID</th>
					      <th scope="col"><i class="fas fa-chalkboard-teacher"></i> Nom </th>
					      <th scope="col"><i class="fas fa-chalkboard-teacher"></i> Prenom</th>
					      <th scope="col"><i class="fas fa-puzzle-piece"></i> Filier</th>
					      <th scope="col"><i class="far fa-envelope"></i> Email</th>
					      <th scope="col"><i class="fas fa-mobile-alt"></i> Telephone</th>
					      <th scope="col"><i class="far fa-address-card"></i> Adresse</th>
					      <th scope="col"><i class="far fa-building"></i> Ville</th>
					      <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> Action</th>
					    </tr>
					  </thead>
					  <tbody>
					  
					    <tr>
					      <th scope="row">test</th>
					      <td>test</td>
					      <td>test</td>
					       <td>test</td>
					       <td><a href="mailto:Alten.fes@alten.fr" style="color:white;"><i class="fas fa-at"></i> </a></td>
					        <td>test</td>
					         <td>test</td>
					          <td>test</td>
					      
					      <td style="text-align:center">
					      	
					      	<button type="button" class="btn btn-danger rounded-pill"><i class="fas fa-trash-alt"></i> Supprimer</button>
					      </td>
					    </tr>
					 
					   
					  </tbody>
					</table>
				
			  </div>
			</div>
		</div>
	</div>
</body>
</html>