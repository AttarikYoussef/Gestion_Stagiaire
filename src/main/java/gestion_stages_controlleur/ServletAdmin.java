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
import org.upf.gestion_Stagiaire.Entity.Utilisateur;

import gestion_stages_DAO.EnseignantDAO;
import gestion_stages_DAO.FiliereDAO;
import gestion_stages_DAO.SoutenanceDAO;
import gestion_stages_bean.BeanEnseignant;

/**
 * Servlet implementation class ServletAdmin
 */
@WebServlet("/ServletAdmin")
public class ServletAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		BeanEnseignant beandem = new BeanEnseignant();
		
		FiliereDAO ff = new FiliereDAO();
		SoutenanceDAO ss = new SoutenanceDAO();
		
		beandem.setArl(ff.findAll());
		beandem.setArl2(ss.findAll());
		
		HttpSession session = request.getSession();
		session.setAttribute("beandem", beandem);
		
		String vue="/WebLayer/Jspform/Admin.jsp";
		response.sendRedirect(request.getContextPath()+vue);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		

		String vue="";
		
		String ens = request.getParameter("ger");
		String fil = request.getParameter("fil");
	
		
		if (ens ==null) {
			
			vue="/WebLayer/Jspform/Admin.jsp";
		}
		else {
			if (ens.equals("") ) {
				vue="/weblayer/vue/Erreur.jsp";
			}
			else {
				
				
				
				EnseignantDAO en = new EnseignantDAO();
				Gerant gg = new Gerant();
				gg.setIdEnseigGerant(ens);
				Filiere f = new Filiere();
				f.setIdFiliere(fil);
				gg.setFiliere(f);
				
				en.ajouterGerant(gg);
				response.sendRedirect(request.getContextPath()+"/WebLayer/Jspform/Admin.jsp");
					
			}
			
			}
		
	}

}
