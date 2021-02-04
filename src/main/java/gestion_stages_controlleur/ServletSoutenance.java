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
import org.upf.gestion_Stagiaire.Entity.Stage;

import gestion_stages_DAO.DemandeSoutenanceDAO;
import gestion_stages_DAO.SoutenanceDAO;
import gestion_stages_bean.BeanDemandeSoutenance;

/**
 * Servlet implementation class ServletSoutenance
 */
@WebServlet("/ServletSoutenance")
public class ServletSoutenance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSoutenance() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BeanDemandeSoutenance beandem = new BeanDemandeSoutenance();
		DemandeSoutenanceDAO utidao = new DemandeSoutenanceDAO();
		beandem.setArl(utidao.findallWithgerant(""));
		HttpSession session = request.getSession();
		session.setAttribute("beandem", beandem);
		String vue="/WebLayer/Jspform/ValideDemandeSoutenance.jsp";
		response.sendRedirect(request.getContextPath()+vue);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		String vue="";
		String id = request.getParameter("id");
		String datedem = request.getParameter("date_pro");
		String heure = request.getParameter("heure");
		String comm = request.getParameter("comm");
		
		//System.out.println(id+" "+datedem+" "+heure+" "+comm);
				
			int idd= Integer.parseInt(id);
			
			SoutenanceDAO st = new SoutenanceDAO();
			
			DemandeSoutenance dm = new DemandeSoutenance();
			
			dm.setIdDemandeSoutenance(idd);
			Soutenance s = new Soutenance();
			s.setDemandeSoutenance(dm);
			try {
				Date dt  = new SimpleDateFormat("yyyy-MM-dd").parse(datedem);
				java.sql.Date sqlDate = new java.sql.Date(dt.getTime()); 
				s.setDateSoutenance(sqlDate);
				
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			s.setHeureSoutenance(heure);
			s.setCommentaire(comm);
			st.ajouter(s);
			
			if (st.ajouter(s)==true) {
				System.out.println("ajout avec succées");
				vue="/WebLayer/Jspform/ValideDemandeSoutenance.jsp";
				
			}
			else {
				System.out.println("erreur");
			}
			
			response.sendRedirect(request.getContextPath()+vue);	
	}
	
			
	}


