<%@page import="gestion_stages_DAO.DemandeStageDao"%>
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
	DemandeStageDao dao = new DemandeStageDao();
	String idemande = request.getParameter("id");
	dao.remove(idemande);
	response.sendRedirect(request.getContextPath() + "/ServletDemandeStage");
%>

</body>
</html>