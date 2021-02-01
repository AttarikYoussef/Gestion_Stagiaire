package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the stagiaire database table.
 * 
 */
@Entity
@NamedQuery(name="Stagiaire.findAll", query="SELECT s FROM Stagiaire s")
public class Stagiaire implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_utili_stagiaire")
	private String idUtiliStagiaire;

	//bi-directional many-to-one association to DemandeStage
	@OneToMany(mappedBy="stagiaire")
	private List<DemandeStage> demandeStages;

	//bi-directional one-to-one association to Utilisateur
	@OneToOne
	@PrimaryKeyJoinColumn(name="id_utili_stagiaire")
	private Utilisateur utilisateur;

	//bi-directional many-to-one association to Promotion
	@ManyToOne
	@JoinColumn(name="id_promotion")
	private Promotion promotion;
	
	

	public Stagiaire() {
	}
	
	

	public Stagiaire(String idUtiliStagiaire) {
		super();
		this.idUtiliStagiaire = idUtiliStagiaire;
	}



	public String getIdUtiliStagiaire() {
		return this.idUtiliStagiaire;
	}

	public void setIdUtiliStagiaire(String idUtiliStagiaire) {
		this.idUtiliStagiaire = idUtiliStagiaire;
	}

	public List<DemandeStage> getDemandeStages() {
		return this.demandeStages;
	}

	public void setDemandeStages(List<DemandeStage> demandeStages) {
		this.demandeStages = demandeStages;
	}

	public DemandeStage addDemandeStage(DemandeStage demandeStage) {
		getDemandeStages().add(demandeStage);
		demandeStage.setStagiaire(this);

		return demandeStage;
	}

	public DemandeStage removeDemandeStage(DemandeStage demandeStage) {
		getDemandeStages().remove(demandeStage);
		demandeStage.setStagiaire(null);

		return demandeStage;
	}

	public Utilisateur getUtilisateur() {
		return this.utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public Promotion getPromotion() {
		return this.promotion;
	}

	public void setPromotion(Promotion promotion) {
		this.promotion = promotion;
	}



	@Override
	public String toString() {
		return "Stagiaire [idUtiliStagiaire=" + idUtiliStagiaire + ", promotion=" + promotion + "]";
	}
	
	

}