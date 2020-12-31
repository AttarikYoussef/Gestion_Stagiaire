package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the administrateur database table.
 * 
 */
@Entity
@NamedQuery(name="Administrateur.findAll", query="SELECT a FROM Administrateur a")
public class Administrateur implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_utili_admin")
	private String idUtiliAdmin;

	//bi-directional one-to-one association to Utilisateur
	@OneToOne
	@PrimaryKeyJoinColumn(name="id_utili_admin")
	private Utilisateur utilisateur;

	public Administrateur() {
	}

	
	public Administrateur(String idUtiliAdmin) {
		super();
		this.idUtiliAdmin = idUtiliAdmin;
	}


	public String getIdUtiliAdmin() {
		return this.idUtiliAdmin;
	}

	public void setIdUtiliAdmin(String idUtiliAdmin) {
		this.idUtiliAdmin = idUtiliAdmin;
	}

	public Utilisateur getUtilisateur() {
		return this.utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

}