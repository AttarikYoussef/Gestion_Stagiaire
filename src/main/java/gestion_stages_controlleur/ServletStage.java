package gestion_stages_controlleur;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.upf.gestion_Stagiaire.Entity.Stage;
import org.upf.gestion_Stagiaire.Entity.Stage;

import gestion_stages_DAO.StageDAO;
import gestion_stages_bean.BeanStage;

public class ServletStage extends HttpServlet {

	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletStage() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {/*
	
		

		String vue="";
		
		String id_st = request.getParameter("id_st");
		byte[] fiche_eva = request.getParameter("fiche_eva").getBytes();
		byte[] rapp_st = request.getParameter("rapp_st").getBytes();
		byte[] att_st = request.getParameter("att_st").getBytes();
		 String datedem = request.getParameter("date_pro");
		String heure = request.getParameter("heure");
		String comm = request.getParameter("comm");
		
		
	if (id_st ==null) {
			
			vue="/weblayer/Jspform/Stage.jsp";
		}
		else {
			if (id_st.equals("") ) {
				vue="/weblayer/vue/Erreur.jsp";
			}
			else {
				
				BeanStage beandem = new BeanStage();
				beandem.setId_st(Integer.parseInt(id_st));
				beandem.setFiche_eva(fiche_eva);
				beandem.setRapp_st(rapp_st);
				beandem.setAtt_st(att_st);
				try {
					Date dt  = new SimpleDateFormat("yyyy-MM-dd").parse(datedem);
					java.sql.Date sqlDate = new java.sql.Date(dt.getTime()); 
					beandem.setDate_demande(sqlDate);
					
					
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				beandem.setHeure(heure);
				beandem.setComm(comm);
				
				
				
				StageDAO utidao = new StageDAO();
				
				Stage stage = utidao.findbyIddstage(beandem.getId_st());
				
				
				Stage dem = new Stage(beandem.getComm(),beandem.getDate_demande(),beandem.getAtt_st(),beandem.getFiche_eva(),beandem.getRapp_st(),beandem.getHeure(),stage);
				
				System.out.println(beandem.getComm()+beandem.getDate_demande()+beandem.getAtt_st()+beandem.getFiche_eva()+beandem.getRapp_st()+beandem.getHeure());
				//stage.addStage(dem);
				//System.out.println(dem.getStage().getIdStage()+"hey"+stage.getIdStage());
				//utidao.updatestage(stage);
				utidao.Accepter(dem);
				if(utidao.Accepter(dem)==true) {
					System.out.println("ajout avec succées");
				}
				
				vue="/weblayer/Jspform/Stage.jsp";
				
			
			}
		}
		this.getServletContext().getRequestDispatcher(vue).forward(request, response);
		
	*/}

	
}
