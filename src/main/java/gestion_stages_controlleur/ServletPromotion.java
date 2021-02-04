package gestion_stages_controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.upf.gestion_Stagiaire.Entity.Filiere;
import org.upf.gestion_Stagiaire.Entity.Promotion;

import gestion_stages_DAO.FiliereDAO;
import gestion_stages_DAO.PromotionDAO;
import gestion_stages_bean.BeanPromotion;
import gestion_stages_bean.Beanfiliere;

/**
 * Servlet implementation class ServletPromotion
 */
@WebServlet("/ServletPromotion")
public class ServletPromotion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPromotion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BeanPromotion bb = new BeanPromotion();
		PromotionDAO fl = new PromotionDAO();
		bb.setArl(fl.findAll());
		HttpSession session = request.getSession();
		session.setAttribute("bean", bb);
		String vue="/WebLayer/Jspform/promotion.jsp";
		response.sendRedirect(request.getContextPath()+vue);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



		String vue="";
		
		String id_promo = request.getParameter("id_promo");
		String description = request.getParameter("description");
		String if_f = request.getParameter("id_f");
		String niv = request.getParameter("niv");
		
		
		
		if (id_promo ==null) {
			
			vue="/weblayer/Jspform/filiere.jsp";
		}
		else {
			if (id_promo.equals("") ) {
				vue="/weblayer/vue/Erreur.jsp";
			}
			else {
				
				BeanPromotion bn = new BeanPromotion();
				
				bn.setIdPromo(id_promo);
				bn.setDescription(description);
				
				Filiere ff = new Filiere();
				ff.setIdFiliere(if_f);
				bn.setIdFiliere(ff);
				bn.setNiveau(Integer.parseInt(niv));
				
				
				PromotionDAO fl = new PromotionDAO() ; 
				
				Promotion ffl = new  Promotion();	
				ffl.setIdPromo(bn.getIdPromo());
				ffl.setDescription(bn.getDescription());
				ffl.setIdFiliere(ff.getIdFiliere());
				ffl.setNiveau(bn.getNiveau());
				fl.ajouter(ffl);
				response.sendRedirect(request.getContextPath()+"/ServletPromotion");
					
			}
			
			}
		
	
	}
	
	}


