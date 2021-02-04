package gestion_stage_Teste;

import org.upf.gestion_Stagiaire.Entity.DemandeStage;
import org.upf.gestion_Stagiaire.Entity.Stagiaire;
import org.upf.gestion_Stagiaire.Entity.Utilisateur;

import gestion_stages_DAO.DemandeStageDao;
import gestion_stages_DAO.StagiaireDAO;
import gestion_stages_DAO.UtilisateurDAO;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		
		DemandeStageDao dao = new DemandeStageDao();
		/*DemandeStage dem = new DemandeStage("Fes", "cgi.fes@cgi.com", "OulahyanAyoub@cgi.com", "CGI fes", "Oulahyane Ayoub", "Informatique", "0533000032", "060090900", false, new Stagiaire("AttarikYoussef"));
		if(dao.ajouter(dem)==true) {
			System.out.println("ajout avec succées");
		}*/
		//StagiaireDAO daos = new StagiaireDAO();
		//System.out.println(daos.findByID("AttarikYoussef"));
		//System.out.println(dao.findByID("5"));
		
		
		System.out.println(dao.findAllWithID("AttarikYoussef"));
		
	}

}
