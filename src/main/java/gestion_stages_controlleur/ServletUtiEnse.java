package gestion_stages_controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.upf.gestion_Stagiaire.Entity.Enseignant;
import org.upf.gestion_Stagiaire.Entity.Filiere;
import org.upf.gestion_Stagiaire.Entity.Gerant;

import gestion_stages_DAO.EnseignantDAO;

/**
 * Servlet implementation class ServletUtiEnse
 */
@WebServlet("/ServletUtiEnse")
public class ServletUtiEnse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletUtiEnse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String vue="";
		

		String ens = request.getParameter("ens");
	
	
		
		if (ens ==null) {
			
			vue="/WebLayer/Jspform/Admin.jsp";
		}
		else {
			if (ens.equals("") ) {
				vue="/weblayer/vue/Erreur.jsp";
			}
			else {
				
				
				EnseignantDAO en = new EnseignantDAO();
				Enseignant uti = new Enseignant();
				uti.setIdUtiliEnsei(ens);
				en.ajouter(uti);
				response.sendRedirect(request.getContextPath()+"/WebLayer/Jspform/Admin.jsp");
				
					
			}
			
			}
		
	}

}
