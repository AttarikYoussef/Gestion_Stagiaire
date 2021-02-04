<%@page import="gestion_stages_DAO.DemandeStageDAO"%>
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
DemandeStageDAO dd = new DemandeStageDAO();
boolean aa = dd.removee(numi);
if (aa=true){
	response.sendRedirect(request.getContextPath()+"/Gestion_Stagiaire/ServletEncadrant");
}
%>
</body>
</html>