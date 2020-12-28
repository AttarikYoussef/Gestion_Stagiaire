package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the enseignant database table.
 * 
 */
@Entity
@NamedQuery(name="Enseignant.findAll", query="SELECT e FROM Enseignant e")
public class Enseignant implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_utili_ensei")
	private String idUtiliEnsei;

	//bi-directional one-to-one association to Encadrant
	@OneToOne(mappedBy="enseignant")
	private Encadrant encadrant;

	//bi-directional one-to-one association to Utilisateur
	@OneToOne
	@JoinColumn(name="id_utili_ensei")
	private Utilisateur utilisateur;

	//bi-directional many-to-one association to Filiere
	@ManyToOne
	@JoinColumn(name="id_filiere")
	private Filiere filiere;

	//bi-directional one-to-one association to Gerant
	@OneToOne(mappedBy="enseignant")
	private Gerant gerant;

	//bi-directional many-to-many association to Soutenance
	@ManyToMany(mappedBy="enseignants")
	private List<Soutenance> soutenances;

	public Enseignant() {
	}

	public String getIdUtiliEnsei() {
		return this.idUtiliEnsei;
	}

	public void setIdUtiliEnsei(String idUtiliEnsei) {
		this.idUtiliEnsei = idUtiliEnsei;
	}

	public Encadrant getEncadrant() {
		return this.encadrant;
	}

	public void setEncadrant(Encadrant encadrant) {
		this.encadrant = encadrant;
	}

	public Utilisateur getUtilisateur() {
		return this.utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public Filiere getFiliere() {
		return this.filiere;
	}

	public void setFiliere(Filiere filiere) {
		this.filiere = filiere;
	}

	public Gerant getGerant() {
		return this.gerant;
	}

	public void setGerant(Gerant gerant) {
		this.gerant = gerant;
	}

	public List<Soutenance> getSoutenances() {
		return this.soutenances;
	}

	public void setSoutenances(List<Soutenance> soutenances) {
		this.soutenances = soutenances;
	}

}