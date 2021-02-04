<%@page import="org.upf.gestion_Stagiaire.Entity.DemandeSeance"%>
<%@page import="gestion_stages_bean.BeanDemandeSeance"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>


<style type="text/css">


.hh{

margin-left: 50px;


}

</style>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Demande de seance</title>

<script src="https://kit.fontawesome.com/2da0a9a74b.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>


</head>
<body>

 <%  
         BeanDemandeSeance beandem ;

         if (session.getAttribute("beandem")==null) {
        	 beandem  = new BeanDemandeSeance();
         %>
         <%
         }
         else {
        	 beandem = (BeanDemandeSeance)session.getAttribute("beandem");
         }

         %>

<!-- Modal -->
												 		<div class="modal fade" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  			<div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel"><u>N</u>ouveau Demande de Seance</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			       	
				<form action="/Gestion_Stagiaire/ServletDemandeSeance" method="post">
					<div class="row">
					<center>
					  <div class="col-md-4">
					    <!-- Name input -->
					    <div class="form-outline">
					      <i class="fas fa-user"></i><b> Doukali omar</b> 
					    </div>
					  </div>
					  </center>
					</div>
			
				<hr />
				
				<div class="row">
				  <div class="col">
				    <!-- Name input -->
				    <div class="form-outline">
				      <input type="text" name="id_st" class="form-control" value=""/>
				      <label class="form-label" for="form8Example1">Stage id</label>
				    </div>
				  </div>
		  
				  <div class="col">
				    <!-- Email input -->
				    <div class="form-outline">
				      <input type="date"  class="form-control" name="date_pro" required pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" />
				      <label class="form-label" for="form8Example2"> nouvelle date</label>
				    </div>
				    
				    
				    <div class="form-outline">
				      <input type="time" class="form-control"  name="heure" min="09:00" max="18:00" required/>
				      <label class="form-label" for="form8Example2" > nouvelle Heure </label>
				    </div>
				  </div>
		  
		  
				  </div>
				   <div class="col">
				    <!-- Email input -->
				    <div class="form-outline">
				      <input type="email" name="EmailEnt" class="form-control" />
				      <label class="form-label" for="form8Example2">Id demande Seance </label>
				    </div>
				</div>
				
		
      </div>
      <div class="modal-footer">
      <div class = "d-grid gap-2 d-md-block mx-auto">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal"> Abandoner</button>
        <button type="submit" class="btn btn-success" data-confirm="modal"> Mettre</button>
        </div>
      </div>
      </form>
    </div>
  </div>
</div>  


<!-- Modal -->
<div class="modal fade" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title m" id="exampleModalLabel"><u>N</u>ouvelle Filiere </h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	
	
		
		
		
<form action="/Gestion_Stagiaire/Servletfiliere" method="POST">
  <div class="mb-3">
    <label  class="form-label">ID_Filiere</label>
    <input type="text" class="form-control" name="id_filiere">
 
  </div>
  <div class="mb-3">
    <label  class="form-label">Description</label>
    <input type="text" class="form-control" name="description">
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



		
		<hr />
		

		<br>
		




<br>
	<div class="container">
		<div class="jumbotron">
			<div class="card">
			  <div class="card-header text-white text-center" style="background-color: #25383C;">
			  		<h3>Demande de Seance</h3>
			  </div>
			  <div class="card-body">
			    <h5 class="card-title"><i class="fas fa-chevron-down"></i> Vos Demandes De Seance : </h5> 
			    	<div class="row" style="float: right;">
				    	<div class="col-md-12 ">
				    		<br>
				    		
				    	</div>
				    	
				    </div>
			    	<br>
			    	<br>
			    	<form method='GET'  action='/Gestion_Stagiaire/ServletDemandeSeance'>
				    <table class="table table-dark table-hover table-bordered">
					  <thead>
					    <tr>
					    
					      <th scope="col" >id_demande_seance</th>
					      <th scope="col">date_propose_seance</th>
					      <th scope="col">heure_propose_seance </th>
					      <th scope="col">id_stage </th>
					      <th scope="col" > Action</th>
					    </tr>
					  </thead>
					  <tbody>
					   <%
					  	for(DemandeSeance dm : beandem.getArl2())
					  	{
					  %>
					  <tr>
					    
					      		  <th scope="col"><%=dm.getIdDemandeSeance() %></th>
							       <th scope="col"><%=dm.getDateProposeSeance()%></th>
							       <th scope="col"><%=dm.getHeureProposeSeance() %></th>
							       <th scope="col"><%=dm.getStage().getIdStage() %></th>
							      <th scope="col">
							      <div>
							      <a href='deleteDemandeSeance.jsp?dd<%=dm.getIdDemandeSeance() %>=' class="btn btn-outline-danger hh">delete</a>
							      <a  class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#add">Accepter</a>
							      </div>
					   
					    </tr>
					                
  
					  
					  </tbody>
					</table>
					
					</form>
					
												 		<div class="modal fade" id="idd<%=dm.getIdDemandeSeance() %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  			<div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel"><u>N</u>ouveau Demande de Seance</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			       	
				<form action="/Gestion_Stagiaire/ServletDemandeSeance" method="post">
					<div class="row">
					<center>
					  <div class="col-md-4">
					    <!-- Name input -->
					    <div class="form-outline">
					      <i class="fas fa-user"></i><b> Doukali omar</b> 
					    </div>
					  </div>
					  </center>
					</div>
			
				<hr />
				
				<div class="row">
				  <div class="col">
				    <!-- Name input -->
				    <div class="form-outline">
				      <input type="text" name="id_st" class="form-control" value="<%=dm.getStage().getIdStage() %>"/>
				      <label class="form-label" for="form8Example1">Stage id</label>
				    </div>
				  </div>
		  
				  <div class="col">
				    <!-- Email input -->
				    <div class="form-outline">
				      <input type="date"  class="form-control" name="date_pro" required pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" />
				      <label class="form-label" for="form8Example2"> nouvelle date</label>
				    </div>
				    
				    
				    <div class="form-outline">
				      <input type="time" class="form-control"  name="heure" min="09:00" max="18:00" required/>
				      <label class="form-label" for="form8Example2" > nouvelle Heure </label>
				    </div>
				  </div>
		  
		  
				  </div>
				   <div class="col">
				    <!-- Email input -->
				    <div class="form-outline">
				      <input type="text" name="EmailEnt" class="form-control" value="" />
				      <label class="form-label" for="form8Example2">Id demande Seance </label>
				    </div>
				</div>
				
		
      </div>
      <div class="modal-footer">
      <div class = "d-grid gap-2 d-md-block mx-auto">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal"> Abandoner</button>
        <button type="submit" class="btn btn-success" data-confirm="modal"> Mettre</button>
        </div>
      </div>
      </form>
    </div>
  </div>
</div>  


					      <%
					      
					  	}
					      %>

			  </div>
			</div>
		</div>
	</div>
	</div>
	



</body>
</html>