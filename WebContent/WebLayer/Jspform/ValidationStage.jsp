<%@page import="org.upf.gestion_Stagiaire.Entity.DemandeStage"%>
<%@page import="org.upf.gestion_Stagiaire.Entity.Stage"%>
<%@page import="gestion_stages_DAO.StageDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String num = request.getParameter("dd");
int numi = Integer.parseInt(num);
StageDao dd = new StageDao();
DemandeStage ss = new DemandeStage();
ss.setIdDemandeStage(numi);
Stage st = new Stage();
st.setDemandeStage(ss);
boolean aa = dd.ajouter(st);
if (aa=true){
	response.sendRedirect(request.getContextPath()+"/Gestion_Stagiaire/ServletEncadrant");
}
%>
</body>
</html>