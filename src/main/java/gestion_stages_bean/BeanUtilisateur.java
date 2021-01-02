package gestion_stages_bean;

import java.util.ArrayList;

import org.upf.gestion_Stagiaire.Entity.Utilisateur;

public class BeanUtilisateur {
	


	private String idUtilisateur;

	private String adresse;

	private String email;

	private String nom;

	private String prenom;

	private String telephone;

	private String ville;
	
	private ArrayList<Utilisateur> arluti = new ArrayList<Utilisateur>();
	
	public BeanUtilisateur(String idUtilisateur, String adresse, String email, String nom, String prenom,
			String telephone, String ville, ArrayList<Utilisateur> arluti) {
		super();
		this.idUtilisateur = idUtilisateur;
		this.adresse = adresse;
		this.email = email;
		this.nom = nom;
		this.prenom = prenom;
		this.telephone = telephone;
		this.ville = ville;
		this.arluti = arluti;
	}

	public BeanUtilisateur() {
		super();
	}

	public String getIdUtilisateur() {
		return idUtilisateur;
	}

	public void setIdUtilisateur(String idUtilisateur) {
		this.idUtilisateur = idUtilisateur;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public ArrayList<Utilisateur> getArluti() {
		return arluti;
	}

	public void setArluti(ArrayList<Utilisateur> arluti) {
		this.arluti = arluti;
	}
	
	

}
