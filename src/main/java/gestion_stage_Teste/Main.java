package gestion_stage_Teste;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;

import org.upf.gestion_Stagiaire.Entity.DemandeSoutenance;
import org.upf.gestion_Stagiaire.Entity.Enseignant;
import org.upf.gestion_Stagiaire.Entity.Soutenance;
import org.upf.gestion_Stagiaire.Entity.Utilisateur;

import gestion_stages_DAO.DemandeSoutenanceDAO;
import gestion_stages_DAO.EnseignantDAO;
import gestion_stages_DAO.SoutenanceDAO;
import gestion_stages_DAO.UtilisateurDAO;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//
//		UtilisateurDAO t = new UtilisateurDAO();
//		Utilisateur uti = new Utilisateur("SERVLET", "non", "non", "Zvanks", "Zvanks", "066666666", "fes");
//		if(t.ajouter(uti)==true) {
//			System.out.println("ajout avec succées");
//		}
//	
		
		SoutenanceDAO dd = new SoutenanceDAO();
		for (Soutenance te : dd.findallWithgerant("")) {
			
			System.out.println(te.getCommentaire());
			
		}
		
//		DemandeSoutenance hh = new DemandeSoutenance();
//		hh.setIdDemandeSoutenance(20);
//		Soutenance s = new Soutenance();
//		s.setDemandeSoutenance(hh);
//		s.setDateSoutenance(new Date());
//		s.setHeureSoutenance("10:00");
//		s.setCommentaire("hh");
//		dd.ajouter(s);
//		if (dd.ajouter(s)==true) {
//			System.out.println("succes");
//		}
//		else {
//			System.out.println("non");
//		}
		
		
//		
//		DemandeSoutenanceDAO dao = new DemandeSoutenanceDAO();
//		
//		for (DemandeSoutenance te : dao.findallWithgerant("Zvanks")) {
//			
//			System.out.println(te.getCommentaire());
//			
//		}
//		
//		EnseignantDAO dao = new EnseignantDAO();
//		
//		for (Enseignant e : dao.findByFil()) {
//			System.out.println(e.getIdUtiliEnsei());
//		}
	}

}
