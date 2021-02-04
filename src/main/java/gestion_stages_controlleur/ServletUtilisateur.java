package gestion_stages_controlleur;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.upf.gestion_Stagiaire.Entity.Utilisateur;

import gestion_stages_DAO.FiliereDAO;
import gestion_stages_DAO.UtilisateurDAO;
import gestion_stages_bean.BeanUtilisateur;
import gestion_stages_bean.Beanfiliere;


/**
 * Servlet implementation class ServletUtilisateur
 */
@WebServlet("/ServletUtilisateur")
public class ServletUtilisateur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletUtilisateur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BeanUtilisateur bb = new BeanUtilisateur();
		UtilisateurDAO fl = new UtilisateurDAO();
		bb.setArl(fl.findAll());
		HttpSession session = request.getSession();
		session.setAttribute("bean", bb);
		String vue="/WebLayer/Jspform/user.jsp";
		response.sendRedirect(request.getContextPath()+vue);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String vue="";
		String id_uti = request.getParameter("id_uti");
		String adresse = request.getParameter("adresse");
		String email = request.getParameter("email");
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String tele = request.getParameter("tele");
		String ville = request.getParameter("ville");
		
		if (id_uti ==null) {
			
			vue="/weblayer/vue/user.jsp";
		}
		else {
			if (id_uti.equals("") ) {
				vue="/weblayer/vue/Erreur.jsp";
			}
			else {
				
				BeanUtilisateur beanuti = new BeanUtilisateur();
				beanuti.setIdUtilisateur(id_uti);
				beanuti.setAdresse(adresse);
				beanuti.setEmail(email);
				beanuti.setNom(nom);
				beanuti.setPrenom(prenom);
				beanuti.setTelephone(tele);
				beanuti.setVille(ville);
				
				
				
				UtilisateurDAO utidao = new UtilisateurDAO();
				Utilisateur uti = new Utilisateur(beanuti.getIdUtilisateur(), beanuti.getAdresse(), beanuti.getEmail(), beanuti.getNom(), beanuti.getPrenom(), beanuti.getTelephone(), beanuti.getVille());
				utidao.ajouter(uti);
				
				if(utidao.ajouter(uti)==true) {
					System.out.println("ajout avec succées");
					response.sendRedirect(request.getContextPath()+"/ServletUtilisateur");
					//RequestDispatcher dispatcher = request.getRequestDispatcher("/weblayer/Jspform/AjoutUtilisateur.jsp");
					//dispatcher.forward(request, response);
					//response.sendRedirect(request.getContextPath()+"/weblayer/Jspform/AjoutUtilisateur.jsp");
				}
			
				
				
			
			}
		}
		
		//request.getRequestDispatcher(vue).forward(request, response);
		//this.getServletContext().getRequestDispatcher(vue).forward(request, response);
		//RequestDispatcher dispatcher = request.getRequestDispatcher(vue);
		//dispatcher.forward(request, response);
		
		
	}

}
