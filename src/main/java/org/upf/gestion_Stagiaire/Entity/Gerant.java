package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the gerant database table.
 * 
 */
@Entity
@NamedQuery(name="Gerant.findAll", query="SELECT g FROM Gerant g")
public class Gerant implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_enseig_gerant")
	private String idEnseigGerant;

	//bi-directional one-to-one association to Enseignant
	@OneToOne
	@JoinColumn(name="id_enseig_gerant")
	private Enseignant enseignant;

	//bi-directional many-to-one association to Filiere
	@ManyToOne
	@JoinColumn(name="id_filiere")
	private Filiere filiere;

	public Gerant() {
	}

	public String getIdEnseigGerant() {
		return this.idEnseigGerant;
	}

	public void setIdEnseigGerant(String idEnseigGerant) {
		this.idEnseigGerant = idEnseigGerant;
	}

	public Enseignant getEnseignant() {
		return this.enseignant;
	}

	public void setEnseignant(Enseignant enseignant) {
		this.enseignant = enseignant;
	}

	public Filiere getFiliere() {
		return this.filiere;
	}

	public void setFiliere(Filiere filiere) {
		this.filiere = filiere;
	}

}