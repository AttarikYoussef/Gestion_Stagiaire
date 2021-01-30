<%@page import="org.upf.gestion_Stagiaire.Entity.DemandeSoutenance"%>
<%@page import="gestion_stages_bean.BeanDemandeSoutenance"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Validation des Demandes de soutanance</title>

<script src="https://kit.fontawesome.com/2da0a9a74b.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>


</head>

   <%  
         BeanDemandeSoutenance beandem ;

         if (session.getAttribute("beandem")==null) {
        	 beandem  = new BeanDemandeSoutenance();
         %>
         <%
         }
         else {
        	 beandem = (BeanDemandeSoutenance)session.getAttribute("beandem");
         }

         %>
         
<body>


<!-- Modal -->
<div class="modal fade" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><u>N</u>ouveau Demande de Soutenance</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	
	<form action="/Gestion_Stagiaire/ServletDemandeSoutenance" method="post">
		<div class="row">
		<center>
		  <div class="col-md-4">
		    <!-- Name input -->
		    <div class="form-outline">
		      <i class="fas fa-user"></i><b> El malki nassim</b> 
		    </div>
		  </div>
		  </center>
		</div>
		
		<hr />
		
		<div class="row">
		  <div class="col">
		    <div class="form-outline">
		      <label class="form-label" for="form8Example3"> <i class="fas fa-file-signature"></i> <b>Fichier demandé</b></label>
		    </div>
		  </div>
		</div>
		
		
		
		<div class="row">
		  <div class="col">
		    <!-- Email input -->
		    <div class="form-outline">
		    <center>
		     <label >
    				Fiche d'evaluation
  					</label> </center>
		      <input type="file" name="fiche_eva" class="form-control" />
		    </div>
		  </div>
		</div>
		
		
		<div class="row">
		  <div class="col">
		    <!-- Email input -->
		    <div class="form-outline">
		      <center>
		     <label >
    				Rapport de stage
  					</label> </center>
		      <input type="file" name="rapp_st" class="form-control" />
		    </div>
		  </div>
		</div>
		
		
		
		<div class="row">
		  <div class="col">
		    <!-- Email input -->
		    <div class="form-outline">
		     <center>
		     <label >
    				Rapport de stage
  					</label> </center>
		      <input type="file" name="att_st" class="form-control" />
		    </div>
		  </div>
		</div>
		
		<br>
		
		<div class="row">
		  <div class="col">
		    <div class="form-outline">
		      <label class="form-label" for="form8Example3"> <i class="far fa-building"></i> <b>Information du stage</b></label>
		    </div>
		  </div>
		</div>
		
		<div class="row">
		  <div class="col">
		    <!-- Name input -->
		    <div class="form-outline">
		      <input type="text" name="id_st" class="form-control"/>
		      <label class="form-label" for="form8Example1"><i class="fas fa-ankh"></i>  Stage id</label>
		    </div>
		    
		    
		    
		  </div>
		  
		  
		  
		  <div class="col">
		    <!-- Email input -->
		    <div class="form-outline">
		      <input type="date"  class="form-control" name="date_pro" required pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" />
		      <label class="form-label" for="form8Example2"><i class="far fa-calendar-plus"></i> Date</label>
		    </div>
		    
		    
		    <div class="form-outline">
		      <input type="time" class="form-control"  name="heure" min="09:00" max="18:00" required/>
		      <label class="form-label" for="form8Example2" ><i class="far fa-clock"></i> Heure </label>
		    </div>
		  </div>
		  
		  
		  
		  
		  
		  
		  </div>
		   <div class="col">
		    <!-- Email input -->
		    <div class="form-outline">
		      <input type="email" name="EmailEnt" class="form-control" />
		      <label class="form-label" for="form8Example2"> Commantaire </label>
		    </div>
		</div>
		
		
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger rounded-pill" data-bs-dismiss="modal"><i class="far fa-times-circle"></i> Abandoner</button>
        <button type="submit" class="btn btn-success rounded-pill" data-confirm="modal"><i class="fas fa-check-circle"></i> Mettre</button>
      </div>
      </form>
    </div>
  </div>
</div>




<!-- Modal2 -->
<div class="modal fade" id="oo" tabindex="-1"  aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><u>N</u>ouveau Demande de Soutenance</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	
	<form action="/Gestion_Stagiaire/ServletDemandeSoutenance" method="post">
		<div class="row">
		<center>
		  <div class="col-md-4">
		    <!-- Name input -->
		    <div class="form-outline">
		      <i class="fas fa-user"></i><b> El malki nassim</b> 
		    </div>
		  </div>
		  </center>
		</div>
		
		<hr />
		

		<br>
		
		<div class="row">
		  <div class="col">
		    <div class="form-outline">
		      <label class="form-label" for="form8Example3"> <i class="far fa-building"></i> <b>Information du stage</b></label>
		    </div>
		  </div>
		</div>
		
		<div class="row">
		  <div class="col">
		    <!-- Name input -->
		    <div class="form-outline">
		      <input type="text" name="id_st" class="form-control"/>
		      <label class="form-label" for="form8Example1"><i class="fas fa-ankh"></i>Soutenance id</label>
		    </div>
		    
		    
		    
		  </div>
		  
		  
		  
		  <div class="col">
		    <!-- Email input -->
		    <div class="form-outline">
		      <input type="date"  class="form-control" name="date_pro" required pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" />
		      <label class="form-label" for="form8Example2"><i class="far fa-calendar-plus"></i> Date</label>
		    </div>
		    
		    
		    <div class="form-outline">
		      <input type="time" class="form-control"  name="heure" min="09:00" max="18:00" required/>
		      <label class="form-label" for="form8Example2" ><i class="far fa-clock"></i> Heure </label>
		    </div>
		  </div>
		  
		  
		  
		  
		  
		  
		  </div>
		   <div class="col">
		    <!-- Email input -->
		    <div class="form-outline">
		      <input type="email" name="EmailEnt" class="form-control" />
		      <label class="form-label" for="form8Example2"> Commantaire </label>
		    </div>
		</div>
		
		
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger rounded-pill" data-bs-dismiss="modal"><i class="far fa-times-circle"></i> Abandoner</button>
        <button type="submit" class="btn btn-success rounded-pill" data-confirm="modal"><i class="fas fa-check-circle"></i> Mettre</button>
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
			  		<h3><u>V</u>alidation des demandes de Soutenance</h3>
			  </div>
			  <div class="card-body">
			    <h5 class="card-title"><i class="fas fa-chevron-down"></i>Demande De soutenance proposé : </h5> 
			    	<div class="row" style="float: right;">
				    	<div class="col-md-12 ">
				    		<button class="btn btn-success rounded-pill" data-bs-toggle="modal" data-bs-target="#add"><i class="fas fa-plus-circle"></i> Nouvelle Demande</button><br>
				    		
				    	</div>
				    	
				    </div>
			    	<br>
			    	<br>
			    	<form method='GET'  action='/Gestion_Stagiaire/ServletDemandeSoutenance'>
				    <table class="table table-dark table-hover table-bordered">
					  <thead>
					    <tr>
					      <th scope="col" style="width:12%">Id demande</th>
					      <th scope="col">Stage numéro</th>
					      <th scope="col">Fichier d'evaluation</th>
					      <th scope="col">Rapport de stage</th>
					       <th scope="col">Attestation de stage</th>
					        <th scope="col">date proposé</th>
					         <th scope="col">heure proposé</th>
					          <th scope="col">commentaire</th>
					      <th scope="col" style="width:30%" class="text-center"><i class="fas fa-wrench"></i> Action</th>
					    </tr>
					  </thead>
					  <tbody>
	 <%
					  	for(DemandeSoutenance dm : beandem.getArl())
					  	{
					  %>
					    <tr>
					      <th scope="row"><%=dm.getIdDemandeSoutenance() %></th>
					      <td><%=dm.getStage().getIdStage() %></td>
					      <td><%=dm.getFileEvaluation() %></td>
					      <td><%=dm.getFileRapportStage() %></td>
					      <td><%=dm.getFileAttestationStage() %></td>
					      <td><%=dm.getDateProposeSout() %></td>
					      <td><%=dm.getHeureProposeSout() %></td>
					      <td><%=dm.getCommentaire() %></td>
					      <td style="text-align:center">
					      <a href='delete.jsp?dd=<%=dm.getIdDemandeSoutenance()%>' class="btn btn-danger rounded-pill"><i class="fas fa-trash-alt"></i>delete</a>
					       <a data-bs-toggle="modal" data-bs-target="#id<%=dm.getIdDemandeSoutenance()%>" class="btn btn-success"><i class="far fa-check-circle"></i>Valider</a>

					      </td>
					    </tr>
					    </form>
					    <div class="modal fade" id="id<%=dm.getIdDemandeSoutenance()%>" tabindex="-1"  aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><u>N</u>ouveau Demande de Soutenance</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	
	<form action="/Gestion_Stagiaire/ServletSoutenance" method="post">
		<div class="row">
		<center>
		  <div class="col-md-4">
		    <!-- Name input -->
		    <div class="form-outline">
		      <i class="fas fa-user"></i><b> El malki nassim</b> 
		    </div>
		  </div>
		  </center>
		</div>
		
		<hr />
		

		<br>
		
		<div class="row">
		  <div class="col">
		    <div class="form-outline">
		      <label class="form-label" for="form8Example3"> <i class="far fa-building"></i> <b>Information du stage</b></label>
		    </div>
		  </div>
		</div>
		
		<div class="row">
		  <div class="col">
		    <!-- Name input -->
		    <div class="form-outline">
		      <input type="text" name="id" class="form-control" value="<%=dm.getIdDemandeSoutenance()%>"/>
		      <label class="form-label" for="form8Example1"><i class="fas fa-ankh"></i>Soutenance id</label>
		    </div>
		    
		    
		    
		  </div>
		  
		  
		  
		  <div class="col">
		    <!-- Email input -->
		    <div class="form-outline">
		      <input type="date"  class="form-control" name="date_pro" required pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" />
		      <label class="form-label" for="form8Example2"><i class="far fa-calendar-plus"></i> Date</label>
		    </div>
		    
		    
		    <div class="form-outline">
		      <input type="time" class="form-control"  name="heure" min="09:00" max="18:00" required/>
		      <label class="form-label" for="form8Example2" ><i class="far fa-clock"></i> Heure </label>
		    </div>
		  </div>
		  
		  
		  
		  
		  
		  
		  </div>
		   <div class="col">
		    <!-- Email input -->
		    <div class="form-outline">
		      <input type="email" name="comm" class="form-control" />
		      <label class="form-label" for="form8Example2"> Commantaire </label>
		    </div>
		</div>
		
		
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger rounded-pill" data-bs-dismiss="modal"><i class="far fa-times-circle"></i> Abandoner</button>
        <button type="submit" class="btn btn-success rounded-pill"><i class="fas fa-check-circle"></i> Mettre</button>
      </div>
      </form>
    </div>
  </div>
</div>
		
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