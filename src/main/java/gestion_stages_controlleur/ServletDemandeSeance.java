package gestion_stages_controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gestion_stages_DAO.DemandeSeanceDAO;
import gestion_stages_bean.BeanDemandeSeance;

/**
 * Servlet implementation class ServletDemandeSeance
 */
@WebServlet("/ServletDemandeSeance")
public class ServletDemandeSeance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletDemandeSeance() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BeanDemandeSeance beandem = new BeanDemandeSeance();
		DemandeSeanceDAO utidao = new DemandeSeanceDAO();
		beandem.setArl2(utidao.findAll());
		HttpSession session = request.getSession();
		session.setAttribute("beandem", beandem);
		String vue="/WebLayer/Jspform/ValidationDemandeSeance.jsp";
		response.sendRedirect(request.getContextPath()+vue);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
