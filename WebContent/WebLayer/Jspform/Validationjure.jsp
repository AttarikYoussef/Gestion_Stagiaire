<%@page import="org.upf.gestion_Stagiaire.Entity.Enseignant"%>
<%@page import="gestion_stages_bean.BeanJure"%>
<%@page import="org.upf.gestion_Stagiaire.Entity.Soutenance"%>
<%@page import="org.upf.gestion_Stagiaire.Entity.DemandeSoutenance"%>
<%@page import="gestion_stages_bean.BeanDemandeSoutenance"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Validation de juré</title>

<script src="https://kit.fontawesome.com/2da0a9a74b.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>


</head>

   <%  
         BeanJure beandem ;

         if (session.getAttribute("beandem")==null) {
        	 beandem  = new BeanJure();
         %>
         <%
         }
         else {
        	 beandem = (BeanJure)session.getAttribute("beandem");
        	 
         }

         %>
         
<body>








<br>
	<div class="container">
		<div class="jumbotron">
			<div class="card">
			  <div class="card-header text-white text-center" style="background-color: #25383C;">
			  		<h3><u>V</u>alidation de juré de stage</h3>
			  </div>
			  <div class="card-body">
			    <h5 class="card-title"><i class="fas fa-chevron-down"></i>La liste des soutenance confirmé : </h5> 
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
					      <th scope="col" style="width:12%">Id Soutenance</th>
					      <th scope="col">Id demande sout</th>
					      <th scope="col">date_soutenance</th>
					      <th scope="col">heure_soutenance</th>
					       <th scope="col">Commenatire</th>
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
					      <td><%=dm.getDemandeSoutenance().getIdDemandeSoutenance() %></td>
					      <td><%=dm.getDateSoutenance() %></td>
					      <td><%=dm.getHeureSoutenance() %></td>
					      <td><%=dm.getCommentaire() %></td>
					      <td style="text-align:center">
					       <a data-bs-toggle="modal" data-bs-target="#id<%=dm.getIdSoutenance()%>" class="btn btn-success"><i class="far fa-check-circle"></i>Valider</a>

					      </td>
					    </tr>
					    </form>
					    <div class="modal fade" id="id<%=dm.getIdSoutenance()%>" tabindex="-1"  aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><u>C</u>hoix de Jure pour La soutenance</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	
	<form action="/Gestion_Stagiaire/ServletJure" method="post">
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
		      <label class="form-label" for="form8Example3"> <i class="far fa-building"></i> <b>Soutenance Informations</b></label>
		    </div>
		  </div>
		</div>
		
		<div class="row">
		  <div class="col">
		    <div class="col">
		    <!-- Name input -->
		    <div class="form-outline">
		    <label class="form-label" for="form8Example1">Soutenance id</label>
		      <input type="text" name="id" class="form-control" value="<%=dm.getIdSoutenance()%>"/>
		    </div>
		    <div class="form-outline">
		      <label class="form-label" for="form8Example3"> <i class="far fa-building"></i> <b>Enseignant</b></label>
		    </div>
		    
		    <!-- Name input -->
		  </div>
		  
		  
		 
	<div class="input-group mb-3">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">Enseignant Numéro 1</label>
  </div>
  		     		      <select name="ens1" id="cars">
 <%
for (Enseignant te : beandem.getArl()) {
	%>
	<option value="<%=te.getIdUtiliEnsei()%>"><%=te.getIdUtiliEnsei()%></option>
<% 
} 
%>
 </select>
</div>
	
		    
	
	<div class="input-group mb-3">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">Enseignant Numéro 2</label>
  </div>
  		     		      <select name="ens2" id="cars">
 <%
for (Enseignant te : beandem.getArl()) {
	%>
	<option value="<%=te.getIdUtiliEnsei()%>"><%=te.getIdUtiliEnsei()%></option>
<% 
} 
%>
 </select>
</div>
	
	
	
		  
	<div class="input-group mb-3">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">Enseignant Numéro 3</label>
  </div>
  		     		      <select name="ens3" id="cars">
 <%
for (Enseignant te : beandem.getArl()) {
	%>
	<option value="<%=te.getIdUtiliEnsei()%>"><%=te.getIdUtiliEnsei()%></option>
<% 
} 
%>
 </select>
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