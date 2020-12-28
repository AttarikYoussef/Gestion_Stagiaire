package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the promotion database table.
 * 
 */
@Entity
@NamedQuery(name="Promotion.findAll", query="SELECT p FROM Promotion p")
public class Promotion implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_promo")
	private String idPromo;

	private String description;

	@Column(name="id_filiere")
	private String idFiliere;

	private int niveau;

	//bi-directional many-to-one association to Stagiaire
	@OneToMany(mappedBy="promotion")
	private List<Stagiaire> stagiaires;

	public Promotion() {
	}

	public String getIdPromo() {
		return this.idPromo;
	}

	public void setIdPromo(String idPromo) {
		this.idPromo = idPromo;
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

	public int getNiveau() {
		return this.niveau;
	}

	public void setNiveau(int niveau) {
		this.niveau = niveau;
	}

	public List<Stagiaire> getStagiaires() {
		return this.stagiaires;
	}

	public void setStagiaires(List<Stagiaire> stagiaires) {
		this.stagiaires = stagiaires;
	}

	public Stagiaire addStagiaire(Stagiaire stagiaire) {
		getStagiaires().add(stagiaire);
		stagiaire.setPromotion(this);

		return stagiaire;
	}

	public Stagiaire removeStagiaire(Stagiaire stagiaire) {
		getStagiaires().remove(stagiaire);
		stagiaire.setPromotion(null);

		return stagiaire;
	}

}