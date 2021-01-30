package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the utilisateur database table.
 * 
 */
@Entity
@NamedQuery(name="Utilisateur.findAll", query="SELECT u FROM Utilisateur u")
 public class Utilisateur implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_utilisateur")
	private String idUtilisateur;

	private String adresse;

	private String email;

	private String nom;

	private String prenom;

	private String telephone;

	private String ville;

	//bi-directional one-to-one association to Administrateur
	@OneToOne(mappedBy="utilisateur")
	private Administrateur administrateur;

	//bi-directional one-to-one association to Enseignant
	@OneToOne(mappedBy="utilisateur")
	private Enseignant enseignant;

	//bi-directional one-to-one association to Stagiaire
	@OneToOne(mappedBy="utilisateur")
	private Stagiaire stagiaire;

	public Utilisateur() {
	}

	
	public Utilisateur(String idUtilisateur, String adresse, String email, String nom, String prenom, String telephone,
			String ville) {
		super();
		this.idUtilisateur = idUtilisateur;
		this.adresse = adresse;
		this.email = email;
		this.nom = nom;
		this.prenom = prenom;
		this.telephone = telephone;
		this.ville = ville;
	}


	public String getIdUtilisateur() {
		return this.idUtilisateur;
	}

	public void setIdUtilisateur(String idUtilisateur) {
		this.idUtilisateur = idUtilisateur;
	}

	public String getAdresse() {
		return this.adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return this.prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getVille() {
		return this.ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public Administrateur getAdministrateur() {
		return this.administrateur;
	}

	public void setAdministrateur(Administrateur administrateur) {
		this.administrateur = administrateur;
	}

	public Enseignant getEnseignant() {
		return this.enseignant;
	}

	public void setEnseignant(Enseignant enseignant) {
		this.enseignant = enseignant;
	}

	public Stagiaire getStagiaire() {
		return this.stagiaire;
	}

	public void setStagiaire(Stagiaire stagiaire) {
		this.stagiaire = stagiaire;
	}

}