<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Demande Stage</title>

<script src="https://kit.fontawesome.com/2da0a9a74b.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

</head>
<body>


<!-- Modal -->
<div class="modal fade" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><u>N</u>ouveau Demande de Stage</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        	
        <form class="row g-3">
		  <div class="col-md-6">
		    <label for="inputEmail4" class="form-label">Email</label>
		    <input type="email" class="form-control" id="inputEmail4">
		  </div>
		  <div class="col-md-6">
		    <label for="inputPassword4" class="form-label">Password</label>
		    <input type="password" class="form-control" id="inputPassword4">
		  </div>
		  <div class="col-12">
		    <label for="inputAddress" class="form-label">Address</label>
		    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
		  </div>
		  <div class="col-12">
		    <label for="inputAddress2" class="form-label">Address 2</label>
		    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
		  </div>
		  <div class="col-md-6">
		    <label for="inputCity" class="form-label">City</label>
		    <input type="text" class="form-control" id="inputCity">
		  </div>
		  <div class="col-md-4">
		    <label for="inputState" class="form-label">State</label>
		    <select id="inputState" class="form-select">
		      <option selected>Choose...</option>
		      <option>...</option>
		    </select>
		  </div>
		  <div class="col-md-2">
		    <label for="inputZip" class="form-label">Zip</label>
		    <input type="text" class="form-control" id="inputZip">
		  </div>
		  <div class="col-12">
		    <div class="form-check">
		      <input class="form-check-input" type="checkbox" id="gridCheck">
		      <label class="form-check-label" for="gridCheck">
		        Check me out
		      </label>
		    </div>
		  </div>
		  <div class="col-12">
		    <button type="submit" class="btn btn-primary">Sign in</button>
		  </div>
		</form>
        	
        	
        	
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger rounded-pill" data-bs-dismiss="modal"><i class="far fa-times-circle"></i> Abandoner</button>
        <button type="button" class="btn btn-success rounded-pill"><i class="fas fa-check-circle"></i> Mettre</button>
      </div>
    </div>
  </div>
</div>




<br>
	<div class="container">
		<div class="jumbotron">
			<div class="card">
			  <div class="card-header" style=" text-align: center;">
			  	
			  		<h3><u>D</u>emande de Stage</h3>
			    
			  </div>
			  <div class="card-body">
			    <h5 class="card-title"><i class="fas fa-chevron-down"></i> Vos Demandes Du Stages : </h5> 
			    	<div class="row" style="float: right;">
				    	<div class="col-md-12 ">
				    		<button class="btn btn-success rounded-pill" data-bs-toggle="modal" data-bs-target="#add"><i class="fas fa-plus-circle"></i> Nouvelle Demande</button><br>
				    	</div>
				    </div>
			    	<br>
			    	<br>
				    <table class="table table-dark table-hover table-bordered">
					  <thead>
					    <tr>
					      <th scope="col" style="width:12%"><i class="fas fa-list-ol"></i> Demande</th>
					      <th scope="col"><i class="far fa-building"></i> Entreprise </th>
					      <th scope="col"><i class="fas fa-vector-square"></i> Secteur</th>
					      <th scope="col"><i class="fas fa-envelope-open-text"></i> Email</th>
					      <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> Action</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">1</th>
					      <td>Alten</td>
					      <td>Informatique</td>
					      <td>Alten.fes@alten.fr</td>
					      <td style="text-align:center">
					      	<button type="button" class="btn btn-light rounded-pill"><i class="fas fa-search"></i> Voir</button>
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