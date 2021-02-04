<%@page import="org.upf.gestion_Stagiaire.Entity.DemandeStage"%>
<%@page import="gestion_stages_bean.BeanGerant"%>
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
        <h5 class="modal-title m" id="exampleModalLabel"><u>N</u>ouvelle Promotion </h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	
	
		
		
		
<form action="/Gestion_Stagiaire/ServletEncadrant" method="POST">
  <div class="mb-3">
    <label  class="form-label">Enseignant</label>
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



<%  
         BeanGerant beandem ;

         if (session.getAttribute("bean")==null) {
        	 beandem  = new BeanGerant();
         %>
         <%
         }
         else {
        	 beandem = (BeanGerant)session.getAttribute("bean");
         }

         %>
         


<div class="modal fade" id="adc" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content ">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><u>N</u>ouveau Demande   </h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class=".modal-xl" >
      				    <table class="table table-dark table-hover table-bordered">
					  <thead>
					    <tr>
					      <th scope="col">ID</th>
					      <th scope="col">Documents </th>
					      <th scope="col"> Entreprise</th>
					      <th scope="col"> Secteur</th>
					      <th scope="col"> Adresse</th>
					      <th scope="col"> Telephone</th>
					      <th scope="col"> Email</th>
					      <th scope="col">Encadrant</th>
					      <th scope="col"> Tel-Encadrant</th>
					      <th scope="col"> @-Encadrantl</th>
					      <th scope="col" class="text-center"> Action</th>
					    </tr>
					  </thead>
					  <tbody>
					  
					    <tr>
					      <th scope="row"></th>
					      <td></td>
					      <td></td>
					       <td></td>
					       <td><a style="color:white;"><i class="fas fa-at"></i> </a></td>
					        <td></td>
					         <td></td>
					          <td></td>
					          <td></td>
					          <td></td>
					      
					      <td style="text-align:center">
					      	
					      	<button type="button" class="btn btn-outline-danger">Refuser</button>
							<button type="button" class="btn btn-outline-success">Accepter</button>
					      </td>
					    </tr>
					 
					   
					  </tbody>
					</table>
       	
		
		
        	
        	
        	
      </div>
      <div class="modal-footer">
        
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
			  		<h3><u>G</u>estion des Gérant</h3>
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
					     <th scope="col">ID</th>
					      <th scope="col">Documents </th>
					      <th scope="col"> Entreprise</th>
					      <th scope="col"> Secteur</th>
					      <th scope="col"> Adresse</th>
					      <th scope="col"> Telephone</th>
					      <th scope="col"> Email</th>
					      <th scope="col">Encadrant</th>
					      <th scope="col"> Tel-Encadrant</th>
					      <th scope="col"> @-Encadrantl</th>
					      <th scope="col" class="text-center"> Action</th>
					    </tr>
					  </thead>
					  <tbody>
					  	<%
					  	for(DemandeStage dm : beandem.getArl()) {
					  	
					  %>
					    <tr>
					    
					      <td><%=dm.getIdDemandeStage() %></td>
					      <td><%=dm.getFile_Convention() %></td>
					      <td><%=dm.getNomEntreprise() %></td>
					      <td><%=dm.getSecteurEntreprise() %></td>
					      <td><%=dm.getAdresseEntreprise() %></td>
					      <td><%=dm.getTelephoneEntreprise() %></td>
					      <td><%=dm.getEmailEntreprise()%></td>
					      <td><%=dm.getNomPrenomResEnt() %></td>
					      <td><%=dm.getTelephoneResEnt() %></td>
					      <td><%=dm.getEmailResEnt() %></td>
					      <td style="text-align:center">
					      	<button  href='deleteDemandeSoutenance.jsp?dd=<%=dm.getIdDemandeStage()%>' type="button" class="btn btn-outline-danger">Refuser</button>
							<button href='ValidationStage.jsp?dd=<%=dm.getIdDemandeStage()%>' type="button" class="btn btn-outline-success">Accepter</button>
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