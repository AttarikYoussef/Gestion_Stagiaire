package gestion_stages_controlleur;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.upf.gestion_Stagiaire.Entity.DemandeStage;
import org.upf.gestion_Stagiaire.Entity.Stagiaire;
import org.upf.gestion_Stagiaire.Entity.Utilisateur;

import gestion_stages_DAO.DemandeStageDao;
import gestion_stages_DAO.UtilisateurDAO;
import gestion_stages_bean.BeanDemandeStage;



/**
 * Servlet implementation class ServletDemandeStage
 */
@WebServlet("/ServletDemandeStage")
public class ServletDemandeStage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletDemandeStage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//doPost(request, response);
		HttpSession session = request.getSession();
		DemandeStageDao dao = new  DemandeStageDao();
		List<DemandeStage> lst =  dao.findAllNotAccept();
		BeanDemandeStage bean = new BeanDemandeStage();
		bean.setLst(lst);
		UtilisateurDAO daoUtili = new UtilisateurDAO();
		Utilisateur ut = daoUtili.findByID("AttarikYoussef");
		session.setAttribute("erdemande", "");
		
		System.out.println(bean.getLst());
		session = request.getSession();
		session.setAttribute("beandemandeNoAc", bean);
		session.setAttribute("utilisateur", ut);
		response.sendRedirect(request.getContextPath() + "/WebLayer/Jspform/DemandeStage.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		String vue ="";
		String id_Utili ="";
		String NomEntreprise= request.getParameter("NomEntreprise");
		System.out.println(NomEntreprise);
		String Secteur = request.getParameter("Secteur");
		System.out.println(Secteur);
		String Adresse = request.getParameter("Adresse");
		System.out.println(Adresse);
		String tel = request.getParameter("TelEnt");
		System.out.println(tel);
		String EmailEnt = request.getParameter("EmailEnt");
		System.out.println(EmailEnt);
		String nomResp = request.getParameter("nomResp");
		System.out.println(nomResp);
		String EmailRes = request.getParameter("EmailRes");
		System.out.println(EmailRes);
		String TelRes = request.getParameter("TelRes");
		System.out.println(TelRes);
		byte[] fichieCon = request.getParameter("fichieCon").getBytes();
		System.out.println(fichieCon);

		if(id_Utili == null) {
			System.out.println("Null");
			vue="/weblayer/Jspform/DemandeStage.jsp";
		}
		else {
			/*if(id_Utili == "") {
				vue="/weblayer/Jspform/DemandeStage.jsp";
			}
			else {*/
				System.out.println("ICI");
				DemandeStageDao dao = new  DemandeStageDao();
				DemandeStage dem = new DemandeStage(Adresse, EmailEnt, EmailRes, fichieCon,NomEntreprise, nomResp, Secteur, tel, TelRes, false, new Stagiaire("AttarikYoussef"));
				boolean r = dao.ajouter(dem);
				if(r==false) {
					session.setAttribute("erdemande", "er");
					//doGet(request, response);
				}
				System.out.println("Ajouter Avec Succes");
				
				List<DemandeStage> lst =  dao.findAllNotAccept();
				BeanDemandeStage bean = new BeanDemandeStage();
				bean.setLst(lst);
				
				System.out.println(bean.getLst());
				session = request.getSession();
				session.setAttribute("beandemandeNoAc", bean);
				
				
				vue="/weblayer/Jspform/DemandeStage.jsp";
			//}
				response.sendRedirect(request.getContextPath() + "/WebLayer/Jspform/DemandeStage.jsp");
		}
		
		
		//this.getServletContext().getRequestDispatcher(vue).forward(request, response);
	}

}
