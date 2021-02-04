<%@page import="org.upf.gestion_Stagiaire.Entity.Utilisateur"%>
<%@page import="org.upf.gestion_Stagiaire.Entity.DemandeStage"%>
<%@page import="gestion_stages_bean.BeanDemandeStage"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
	if(session.getAttribute("erdemande")=="er"){%>
		<div class="alert alert-danger text-center" role="alert">
		 <i class="fas fa-times"></i> Vous Avez le Droit de 3 demandes 
		</div>
<% 	}%>

<%
	BeanDemandeStage bean = new BeanDemandeStage() ;
	Utilisateur u = new Utilisateur();
	if(session.getAttribute("beandemandeNoAc") == null){
		bean = new BeanDemandeStage();
	}
	if(session.getAttribute("beandemandeNoAc") != null){
		bean = (BeanDemandeStage) session.getAttribute("beandemandeNoAc");
	}
	if(session.getAttribute("utilisateur") == null){
		 u = new Utilisateur();
	}
	if(session.getAttribute("utilisateur") != null){
		 u =(Utilisateur) session.getAttribute("utilisateur");;
	}
%>

<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><%=u.getEmail() %></title>

<script src="https://kit.fontawesome.com/2da0a9a74b.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>


</head>
<body>


<!-- Modal -->
<div class="modal fade" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><u>N</u>ouveau Demande de Stage </h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	
	<form action="/Gestion_Stagiaire/ServletDemandeStage" method="post">
		<div class="row">
		<center>
		  <div class="col-md-4">
		    <!-- Name input -->
		    <div class="form-outline">
		      <i class="fas fa-user"></i><b> AttarikYoussef</b> 
		    </div>
		  </div>
		  </center>
		</div>
		
		<hr />
		
		<div class="row">
		  <div class="col">
		    <div class="form-outline">
		      <label class="form-label" for="form8Example3"> <i class="far fa-building"></i> <b>Entreprise</b></label>
		    </div>
		  </div>
		</div>
		
		<div class="row">
		  <div class="col">
		    <!-- Name input -->
		    <div class="form-outline">
		      <input type="text" name="NomEntreprise" class="form-control" />
		      <label class="form-label" for="form8Example1"><i class="fas fa-signature"></i> Nom </label>
		    </div>
		    <div class="form-outline">
		      <select class="form-control" name="Secteur">
			      <option>Informatique</option>
			      <option>Industrie</option>
			      <option>Economie</option>
			      <option>Architecture</option>
			      <option>Autre</option>
			    </select>
		      <label class="form-label" for="form8Example1"><i class="fas fa-bezier-curve"></i> Secteur </label>
		    </div>
		  </div>
		  <div class="col">
		    <!-- Email input -->
		    <div class="form-outline">
		      <input type="text" name="Adresse" class="form-control" />
		      <label class="form-label" for="form8Example2"><i class="fas fa-map-marked"></i> Adresse</label>
		    </div>
		    <div class="form-outline">
		      <input type="tel" name="TelEnt" class="form-control" />
		      <label class="form-label" for="form8Example2" ><i class="fas fa-phone-volume"></i> Telephone </label>
		    </div>
		  </div>
		   <div class="col">
		    <!-- Email input -->
		    <div class="form-outline">
		      <input type="email" name="EmailEnt" class="form-control" />
		      <label class="form-label" for="form8Example2"><i class="fas fa-envelope-open-text"></i> Email </label>
		    </div>
		  </div>
		</div>
		
		
		
		<hr />
		
		<div class="row">
		  <div class="col">
		    <div class="form-outline">
		      <label class="form-label" for="form8Example3"> <i class="fas fa-user-tie"></i> <b>Responsable</b></label>
		    </div>
		  </div>
		</div>
		
		<div class="row">
		  <div class="col">
		    <!-- Name input -->
		    <div class="form-outline">
		      <input type="text" name="nomResp" class="form-control" />
		      <label class="form-label" for="form8Example3"><i class="fas fa-signature"></i> Nom complet</label>
		    </div>
		  </div>
		  
		  <div class="col">
		    <!-- Name input -->
		    <div class="form-outline">
		      <input type="email" name="EmailRes" class="form-control" />
		      <label class="form-label" for="form8Example2"><i class="fas fa-envelope-open-text"></i> Email </label>
		    </div>
		  </div>
		  
		  <div class="col">
		    <div class="form-outline">
		      <input type="tel" name="TelRes" class="form-control" />
		      <label class="form-label" for="form8Example2" ><i class="fas fa-phone-volume"></i> Telephone </label>
		    </div>
		  </div>
		  
		</div>
		
		<hr />
		<div class="row">
		  <div class="col">
		    <div class="form-outline">
		      <label class="form-label" for="form8Example3"> <i class="fas fa-file-signature"></i> <b>Fichier de Convention</b></label>
		    </div>
		  </div>
		</div>
		
		<div class="row">
		  <div class="col">
		    <!-- Email input -->
		    <div class="form-outline">
		      <input type="file" name="fichieCon" class="form-control" />
		    </div>
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
					  <%
					  	for(DemandeStage dm : bean.getLst())
					  	{
					  %>
					    <tr>
					      <th scope="row"><%=dm.getIdDemandeStage() %></th>
					      <td><%=dm.getNomEntreprise() %></td>
					      <td><%=dm.getSecteurEntreprise() %></td>
					      <td><a href="mailto:"+<%=dm.getEmailEntreprise() %>+"" style="color:white;"><i class="fas fa-at"></i> <%=dm.getEmailEntreprise() %></a></td>
					      <td style="text-align:center">
					      	<a data-bs-toggle="modal" data-bs-target="#id<%=dm.getIdDemandeStage()%>" class="btn btn-light rounded-pill"><i class="fas fa-search"></i>Voir</a>
					      	
					      	<a class="btn btn-danger rounded-pill" href='http://localhost:8083/Gestion_Stagiaire/WebLayer/CrudJSP/SupprimerDemandeStage.jsp?id=<%= dm.getIdDemandeStage()%>' role="button"><i class="fas fa-trash-alt"></i>Supprimer</a>
					      
					    <div class="modal fade" id="id<%=dm.getIdDemandeStage()%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-dialog-scrollable modal-xl">
							  <div class="modal-content">
								<div class="modal-header">
								  <h5 class="modal-title text-dark" id="exampleModalLabel"><u>I</u>nformation de Votre Demande de Stage </h5>
								  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body">
									 <div class="row">
									  <center>
										<div class="col-md-4">
										  <!-- Name input -->
										  <div class="form-outline text-dark">
											<i class="fas fa-user"></i><b> AttarikYoussef</b> 
										  </div>
										</div>
										</center>
									  </div>
									  
									  <hr class="text-dark" />
									  <div class="row">
									<div class="col">
									  <div class="form-outline text-dark">
										<label class="form-label" for="form8Example3"> <i class="far fa-building"></i> <b>Entreprise</b></label>
									  </div>
									</div>
								  </div>
									<table class="table table-dark table-hover table-bordered">
									    <thead>
									      <tr>
									        <th scope="col"> Nom</th>
									        <th scope="col">Adresse </th>
									        <th scope="col"> Email</th>
									      </tr>
									    </thead>
									    <tbody>
									        <tr>
									            <th ><%=dm.getNomEntreprise() %></th>
									            <td><%=dm.getAdresseEntreprise() %></td>
									            <td><%=dm.getEmailEntreprise() %></td>
									        </tr>
									    </tbody>
									    </table>
    
							  		<table class="table table-dark table-hover table-bordered">
							        <thead>
							          <tr>
							            <th scope="col" > Secteur</th>
							            <th scope="col"> Telephone </th>
							            
							          </tr>
							        </thead>
							        <tbody>
							            <tr>
							                <td ><%=dm.getSecteurEntreprise() %></td>
							                <td><%=dm.getTelephoneEntreprise() %></td>
							            </tr>
							        </tbody>
							    </table>
							    <hr class="text-dark" />
							    <div class="col">
									  <div class="form-outline text-dark">
										<label class="form-label" for="form8Example3"> <i class="far fa-building"></i> <b>Responsable</b></label>
									  </div>
								</div>
								
								<table class="table table-dark table-hover table-bordered">
									    <thead>
									      <tr>
									        <th scope="col">Nom Complet</th>
									        <th scope="col">Email</th>
									        <th scope="col">Telephone</th>
									      </tr>
									    </thead>
									    <tbody>
									        <tr>
									            <th ><%=dm.getNomPrenomResEnt()%></th>
									            <th ><%=dm.getEmailResEnt()%></th>
									            <th ><%=dm.getTelephoneResEnt()%></th>
									        </tr>
									    </tbody>
								</table>
							  </div>
							</div>
						  </div>
						</div>
						</td>
					    </tr>
					   <%
					   } 
					   %>
					   
					  </tbody>
					</table>
					<%= bean.getLst().size() %>
					
					
			  </div>
			</div>
		</div>
	</div>

</body>
</html>