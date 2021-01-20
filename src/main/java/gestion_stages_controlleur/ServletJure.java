package gestion_stages_controlleur;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.upf.gestion_Stagiaire.Entity.DemandeSoutenance;
import org.upf.gestion_Stagiaire.Entity.Soutenance;

import gestion_stages_DAO.DemandeSoutenanceDAO;
import gestion_stages_DAO.EnseignantDAO;
import gestion_stages_DAO.SoutenanceDAO;
import gestion_stages_bean.BeanDemandeSoutenance;
import gestion_stages_bean.BeanJure;

/**
 * Servlet implementation class ServletJure
 */
@WebServlet("/ServletJure")
public class ServletJure extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletJure() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		EnseignantDAO dao = new EnseignantDAO();
		BeanJure beandem = new BeanJure();
		
		beandem.setArl(dao.findByFil());
		SoutenanceDAO dd = new SoutenanceDAO();
		beandem.setArl2(dd.findallWithgerant(""));
		
		
		HttpSession session = request.getSession();
		session.setAttribute("beandem", beandem);
		String vue="/WebLayer/Jspform/Validationjure.jsp";
		response.sendRedirect(request.getContextPath()+vue);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String vue="";
		String id = request.getParameter("id");
		String ens1 = request.getParameter("ens1");
		String ens2 = request.getParameter("ens2");
		String ens3 = request.getParameter("ens3");
		
		//System.out.println(id+" "+datedem+" "+heure+" "+comm);
				
			int idd= Integer.parseInt(id);
			
		
			response.sendRedirect(request.getContextPath()+vue);	
		
		
	}

}
