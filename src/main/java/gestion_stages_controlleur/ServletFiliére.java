package gestion_stages_controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.upf.gestion_Stagiaire.Entity.Filiere;

import gestion_stages_DAO.FiliereDAO;
import gestion_stages_bean.Beanfiliere;

/**
 * Servlet implementation class ServletFiliére
 */
@WebServlet("/ServletFiliére")
public class ServletFiliére extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletFiliére() {
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
					
			}
			
			vue="/weblayer/Jspform/filiere.jsp"; /// pour faire un rafrachirement de la page ou cas l utulisateur veux ajouter une autre fois 
			
			
			}
this.getServletContext().getRequestDispatcher(vue).forward(request, response);
	
		
	
	}

}
