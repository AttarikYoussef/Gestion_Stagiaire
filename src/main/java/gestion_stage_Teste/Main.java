package gestion_stage_Teste;

import org.upf.gestion_Stagiaire.Entity.Utilisateur;

import gestion_stages_DAO.UtilisateurDAO;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		UtilisateurDAO t = new UtilisateurDAO();
		Utilisateur uti = new Utilisateur("SERVLET", "non", "non", "Zvanks", "Zvanks", "066666666", "fes");
		if(t.ajouter(uti)==true) {
			System.out.println("ajout avec succées");
		}
	}
//teste
}
