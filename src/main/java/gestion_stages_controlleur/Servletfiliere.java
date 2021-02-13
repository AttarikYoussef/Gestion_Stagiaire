package gestion_stages_controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.upf.gestion_Stagiaire.Entity.Filiere;

import gestion_stages_DAO.FiliereDAO;
import gestion_stages_bean.Beanfiliere;

/**
 * Servlet implementation class Servletfiliere
 */
@WebServlet("/Servletfiliere")
public class Servletfiliere extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servletfiliere() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		Beanfiliere bb = new Beanfiliere();
		FiliereDAO fl = new FiliereDAO();
		bb.setArl(fl.findAll());
		HttpSession session = request.getSession();
		session.setAttribute("bean", bb);
		String vue="/WebLayer/Jspform/filiere.jsp";
		response.sendRedirect(request.getContextPath()+vue);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String vue="";
		
		String id_filiere = request.getParameter("id_filiere");
		String description = request.getParameter("description");
		
		if (id_filiere ==null) {
			
			vue="/weblayer/Jspform/filiere.jsp";
		}
		else {
			if (id_filiere.equals("") ) {
				vue="/weblayer/vue/Erreur.jsp";
			}
			else {
				
				Beanfiliere bn = new Beanfiliere();
				
				bn.setId_filiere(id_filiere);
				bn.setDescription(description);
				
				
				FiliereDAO fl = new FiliereDAO() ; 
				
				Filiere ff = new  Filiere();	
				ff.setIdFiliere(bn.getId_filiere());
				ff.setDescription(bn.getDescription());
				fl.ajouter(ff);
				response.sendRedirect(request.getContextPath()+"/weblayer/Jspform/filiere.jsp");
					
			}
			
			}
		
	
	}

}
