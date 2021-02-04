package gestion_stages_controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.upf.gestion_Stagiaire.Entity.Encadrant;
import org.upf.gestion_Stagiaire.Entity.Enseignant;
import org.upf.gestion_Stagiaire.Entity.Filiere;
import org.upf.gestion_Stagiaire.Entity.Gerant;

import gestion_stages_DAO.DemandeStageDAO;
import gestion_stages_DAO.EnseignantDAO;
import gestion_stages_DAO.FiliereDAO;
import gestion_stages_bean.BeanGerant;
import gestion_stages_bean.Beanfiliere;

/**
 * Servlet implementation class ServletEncadrant
 */
@WebServlet("/ServletEncadrant")
public class ServletEncadrant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEncadrant() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BeanGerant bb = new BeanGerant();
		DemandeStageDAO fl = new DemandeStageDAO();
		bb.setArl(fl.findAll());
		HttpSession session = request.getSession();
		session.setAttribute("bean", bb);
		String vue="/WebLayer/Jspform/gerant.jsp";
		response.sendRedirect(request.getContextPath()+vue);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String vue="";
		
		String ens = request.getParameter("ens");
	
		
		if (ens ==null) {
			
			vue="/WebLayer/Jspform/gerant.jsp";
		}
		else {
			if (ens.equals("") ) {
				vue="/weblayer/vue/Erreur.jsp";
			}
			else {
				
				
				
				EnseignantDAO fl = new EnseignantDAO() ; 
				
				Encadrant en = new Encadrant();
				en.setIdEnseigEncad(ens);
				fl.ajouterEncadrant(en);
				response.sendRedirect(request.getContextPath()+"/WebLayer/Jspform/gerant.jsp");
					
			}
			
			}
	}

}

