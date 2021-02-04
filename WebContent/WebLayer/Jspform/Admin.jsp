<%@page import="org.upf.gestion_Stagiaire.Entity.Soutenance"%>
<%@page import="org.upf.gestion_Stagiaire.Entity.Filiere"%>
<%@page import="gestion_stages_bean.BeanEnseignant"%>
<%@page import="org.upf.gestion_Stagiaire.Entity.DemandeSoutenance"%>
<%@page import="gestion_stages_bean.BeanDemandeSoutenance"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin</title>


<script src="https://kit.fontawesome.com/2da0a9a74b.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>


</head>

   
         
<body>
		<%
		
         BeanEnseignant beandem ;

         if (session.getAttribute("beandem")==null) {
        	 beandem  = new BeanEnseignant();
         %>
         <%
         }
         else {
        	 beandem = (BeanEnseignant)session.getAttribute("beandem");
         }

         %>
         
         
<!-- Modal -->
<div class="modal fade" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title m" id="exampleModalLabel"><u>N</u>ouveau Gérant </h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	
	
		
		
		
<form action="/Gestion_Stagiaire/ServletAdmin" method="POST">
  <div class="mb-3">
    <label  class="form-label">Enseignant</label>
    <input type="text" class="form-control" name="ger">
 
  </div>
    <center>
<select class="custom-select my-1 mr-sm-2" name="fil" id="cars">
 <%
for (Filiere te : beandem.getArl()) {
	%>
	<option value="<%=te.getIdFiliere()%>"><%=te.getDescription()%></option>
<% 
} 
%>
 </select>
</center>
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




<!-- Modal2 -->
<div class="modal fade" id="oo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title m" id="exampleModalLabel"><u>N</u>ouvelle Promotion </h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	
	
		
		
		
<form action="/Gestion_Stagiaire/ServletUtiEnse" method="POST">
  <div class="mb-3">
    <label  class="form-label">Utilisateur</label>
    <input type="text" class="form-control" name="ens">
 
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
			  		<h3><u>A</u>dmin</h3>
			  </div>
			  <div class="card-body">
			    <h5 class="card-title"><i class="fas fa-chevron-down"></i> Listes des soutenances : </h5> 
			    	<div class="row" style="float: right;">
				    	<div class="col-md-12 ">
				    		<button class="btn btn-success rounded-pill" data-bs-toggle="modal" data-bs-target="#add"><i class="fas fa-plus-circle"></i> Nouveau Gerant</button>
				    		<button class="btn btn-success rounded-pill" data-bs-toggle="modal" data-bs-target="#oo"><i class="fas fa-plus-circle"></i> Nouveau Enseignant</button><br>
				    		
				    	</div>
				    	
				    </div>
			    	<br>
			    	<br>
			    	<form method='GET'  action='/Gestion_Stagiaire/ServletDemandeSoutenance'>
				    <table class="table table-dark table-hover table-bordered">
					  <thead>
					    <tr>
					      <th scope="col" style="width:12%">Id Soutenance</th>
					      <th scope="col">Date de Soutenance</th>
					      <th scope="col">Heure Soutenance</th>
					      <th scope="col">Commentaire</th>
					      <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> Action</th>
					    </tr>
					  </thead>
					  <tbody>
					  <%
					  	for(Soutenance dm : beandem.getArl2())
					  	{
					  %>
					    <tr>
					      <th scope="row"><%=dm.getIdSoutenance() %></th>
					      <td><%=dm.getDateSoutenance() %></td>
					      <td><%=dm.getHeureSoutenance() %></td>
					      <td><%=dm.getCommentaire() %></td>
					      <td style="text-align:center">
					      <a class="btn btn-light">Infos</a>
					      </td>
					    </tr>
					    </form>
		
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