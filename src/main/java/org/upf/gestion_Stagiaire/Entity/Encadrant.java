package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the encadrant database table.
 * 
 */
@Entity
@NamedQuery(name="Encadrant.findAll", query="SELECT e FROM Encadrant e")
public class Encadrant implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_enseig_encad")
	private String idEnseigEncad;

	//bi-directional one-to-one association to Enseignant
	@OneToOne
	@PrimaryKeyJoinColumn(name="id_enseig_encad")
	private Enseignant enseignant;

	public Encadrant() {
	}

	public String getIdEnseigEncad() {
		return this.idEnseigEncad;
	}

	public void setIdEnseigEncad(String idEnseigEncad) {
		this.idEnseigEncad = idEnseigEncad;
	}

	public Enseignant getEnseignant() {
		return this.enseignant;
	}

	public void setEnseignant(Enseignant enseignant) {
		this.enseignant = enseignant;
	}

}