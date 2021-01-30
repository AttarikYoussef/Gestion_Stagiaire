<%@page import="org.upf.gestion_Stagiaire.Entity.Enseignant"%>
<%@page import="gestion_stages_bean.BeanJure"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
    <link rel="stylesheet" href="affichage.css">
    
     <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#mydatatable').DataTable();
        } );
    </script>
    
    
    
<meta charset="UTF-8">
<title>Demande de soutenance</title>
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
<form method='GET'  action='/Gestion_Stagiaire/ServletJure'>
<center>
<input type="submit" value="Afficher les demandes">
</center>

<center>
<select name="ens1" id="cars">
 <%
for (Enseignant te : beandem.getArl()) {
	%>
	<option value="<%=te.getIdUtiliEnsei()%>"><%=te.getIdUtiliEnsei()%></option>
<% 
} 
%>
 </select>
</center>
 
</body>
</html>