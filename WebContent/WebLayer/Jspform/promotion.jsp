<%@page import="org.upf.gestion_Stagiaire.Entity.Promotion"%>
<%@page import="gestion_stages_bean.BeanPromotion"%>
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
<title>Gestion filiere</title>

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
         BeanPromotion beandem ;

         if (session.getAttribute("bean")==null) {
        	 beandem  = new BeanPromotion();
         %>
         <%
         }
         else {
        	 beandem = (BeanPromotion)session.getAttribute("bean");
         }

         %>
         

<!-- Modal -->
<div class="modal fade" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title m" id="exampleModalLabel"><u>N</u>ouvelle Promotion </h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	
	
		
		
		
<form action="/Gestion_Stagiaire/ServletPromotion" method="POST">
  <div class="mb-3">
    <label  class="form-label">ID_promo</label>
    <input type="text" class="form-control" name="id_promo">
 
  </div>
  <div class="mb-3">
    <label  class="form-label">Description</label>
    <input type="text" class="form-control" name="description">
  </div>
  
   <div class="mb-3">
    <label  class="form-label">filiere</label>
    <input type="text" class="form-control" name="id_f">
  </div>
   <div class="mb-3">
    <label  class="form-label">niveau</label>
    <input type="text" class="form-control" name="niv">
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
			  		<h3><u>P</u>romotion</h3>
			  </div>
			  <div class="card-body">
			    <h5 class="card-title"><i class="fas fa-chevron-down"></i> Promotion: </h5> 
			    	<div class="row" style="float: right;">
				    	<div class="col-md-12 ">
				    	<cennter>
				    		<button class="btn btn-success rounded-pill" data-bs-toggle="modal" data-bs-target="#add"><i class="fas fa-plus-circle"></i> Ajout promotion</button><br>
				    		</cennter>
				    	</div>
				    </div>
			    	<br>
			    	<br>
				    <table class="table table-dark table-hover table-bordered">
					  <thead>
					    <tr>
					      <th scope="col" style="width:12%"><i class="fas fa-list-ol"></i> id_promo</th>
					      <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> Description</th>
					      <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> filiére</th>
					      <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> niveau</th>
					      <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> Action</th>
					    </tr>
					  </thead>
					  
					  <tbody>
				 
					  	<%
					  	for(Promotion dm : beandem.getArl()) {
					  	
					  %>
					    <tr>
					     <td><%=dm.getIdPromo()%></td>
					   <td><%=dm.getDescription()%></td>
					      <td><%=dm.getIdFiliere()%></td>
					        <td><%=dm.getNiveau()%></td>
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