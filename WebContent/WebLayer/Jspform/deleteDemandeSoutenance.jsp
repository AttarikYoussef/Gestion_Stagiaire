<%@page import="gestion_stages_DAO.DemandeSoutenanceDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 

<%
String num = request.getParameter("dd");
int numi = Integer.parseInt(num);
DemandeSoutenanceDAO dao = new DemandeSoutenanceDAO();
boolean aa = dao.removee(numi);
if (aa=true){
	response.sendRedirect(request.getContextPath()+"/Gestion_Stagiaire/teste");
}
%>

<%-- <h2><%
String num = request.getParameter("dd");
out.print(request.getAttribute(num));
%></h2> --%>

