package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the filiere database table.
 * 
 */
@Entity
@NamedQuery(name="Filiere.findAll", query="SELECT f FROM Filiere f")
public class Filiere implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_filiere")
	private String idFiliere;

	private String description;

	

	//bi-directional many-to-one association to Enseignant
	@OneToMany(mappedBy="filiere")
	private List<Enseignant> enseignants;

	//bi-directional many-to-one association to Gerant
	@OneToMany(mappedBy="filiere")
	private List<Gerant> gerants;

	public Filiere() {
	}


	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	public String getIdFiliere() {
		return this.idFiliere;
	}

	public void setIdFiliere(String idFiliere) {
		this.idFiliere = idFiliere;
	}

	public List<Enseignant> getEnseignants() {
		return this.enseignants;
	}

	public void setEnseignants(List<Enseignant> enseignants) {
		this.enseignants = enseignants;
	}

	public Enseignant addEnseignant(Enseignant enseignant) {
		getEnseignants().add(enseignant);
		enseignant.setFiliere(this);

		return enseignant;
	}

	public Enseignant removeEnseignant(Enseignant enseignant) {
		getEnseignants().remove(enseignant);
		enseignant.setFiliere(null);

		return enseignant;
	}

	public List<Gerant> getGerants() {
		return this.gerants;
	}

	public void setGerants(List<Gerant> gerants) {
		this.gerants = gerants;
	}

	public Gerant addGerant(Gerant gerant) {
		getGerants().add(gerant);
		gerant.setFiliere(this);

		return gerant;
	}

	public Gerant removeGerant(Gerant gerant) {
		getGerants().remove(gerant);
		gerant.setFiliere(null);

		return gerant;
	}

}