<%@page import="org.upf.gestion_Stagiaire.Entity.Utilisateur"%>
<%@page import="gestion_stages_bean.BeanUtilisateur"%>
<%@page import="org.upf.gestion_Stagiaire.Entity.Filiere"%>
<%@page import="gestion_stages_bean.Beanfiliere"%>
<%@page import="org.upf.gestion_Stagiaire.Entity.DemandeStage"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gestion d'utilisateur</title>

<script src="https://kit.fontawesome.com/2da0a9a74b.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

<style type="text/css">

.m
{
    background-color: #FFFFFF;
}

</style>
</head>
<body>

 <%  
         BeanUtilisateur beandem ;

         if (session.getAttribute("bean")==null) {
        	 beandem  = new BeanUtilisateur();
         %>
         <%
         }
         else {
        	 beandem = (BeanUtilisateur)session.getAttribute("bean");
         }

         %>
         

<!-- Modal -->
<div class="modal fade" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title m" id="exampleModalLabel"><u>N</u>ouvelle Filiere </h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	
	
		
		
		
<form action="/Gestion_Stagiaire/ServletUtilisateur" method="POST">
  <div class="mb-3">
    <label  class="form-label">ID_Utilisateur</label>
    <input type="text" class="form-control" name="id_uti">
 
  </div>
  <div class="mb-3">
    <label  class="form-label">adresse</label>
    <input type="text" class="form-control" name="adresse">
  </div>
  <div class="mb-3">
    <label  class="form-label">email</label>
    <input type="text" class="form-control" name="email">
  </div>
  <div class="mb-3">
    <label  class="form-label">nom</label>
    <input type="text" class="form-control" name="nom">
  </div>
  <div class="mb-3">
    <label  class="form-label">prenom</label>
    <input type="text" class="form-control" name="prenom">
  </div>
  <div class="mb-3">
    <label  class="form-label">tele</label>
    <input type="text" class="form-control" name="tele">
  </div>
   <div class="mb-3">
    <label  class="form-label">ville</label>
    <input type="text" class="form-control" name="ville">
  </div>
  <div class="d-grid gap-2 col-6 mx-auto">
        <button type="submit" class="btn btn-outline-success"">Ajouter</button>
      	</div>
</form>
		
        	
        	
        	
      </div>
      <div class="modal-footer ">
      	
      </div>
     
    </div>
  </div>
</div>




<br>
	<div class="container">
		<div class="jumbotron">
			<div class="card">
			  <div class="card-header text-white text-center" style="background-color: #25383C;">
			  		<h3><u>U</u>tilisateur</h3>
			  </div>
			  <div class="card-body">
			    <h5 class="card-title"><i class="fas fa-chevron-down"></i> Utilisateur :  </h5> 
			    	<div class="row" style="float: right;">
				    	<div class="col-md-12 ">
				    	<cennter>
				    		<button class="btn btn-success rounded-pill" data-bs-toggle="modal" data-bs-target="#add"><i class="fas fa-plus-circle"></i> Ajout Utilisateur</button><br>
				    		</cennter>
				    	</div>
				    </div>
			    	<br>
			    	<br>
				    <table class="table table-dark table-hover table-bordered">
					  <thead>
					    <tr>
					      <th scope="col" style="width:12%"><i class="fas fa-list-ol"></i> Id_Utilisateur</th>
					      <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> email</th>
					      <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> nom</th>
					         <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> prenom</th>
					            <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> tele</th>
					               <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> ville</th>
										<th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> adresse</th>
					      <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> Action</th>
					    </tr>
					  </thead>
					  
					  <tbody>
				 
					  	<%
					  	for(Utilisateur dm : beandem.getArl()) {
					  	
					  %>
					    <tr>
					  
					      <td><%=dm.getIdUtilisateur()%></td>
					        <td><%=dm.getEmail()%></td>
					        <td><%=dm.getNom()%></td>
					        <td><%=dm.getPrenom()%></td>
					        <td><%=dm.getTelephone()%></td>
					        <td><%=dm.getVille()%></td>
					        <td><%=dm.getAdresse()%></td>
					        <td>
					        <center>
					        <button type="button" class="btn btn-outline-warning"><i class="far fa-edit"></i> modifier</button>
					        </center>
					        </td>
					    </tr>
				<%
					  	}
				%>
					   
					  </tbody>
					</table>
					
			  </div>
			</div>
		</div>
	</div>
</body>
</html>