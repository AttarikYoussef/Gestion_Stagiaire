package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the demande_stage database table.
 * 
 */
@Entity
@Table(name="demande_stage")
@NamedQuery(name="DemandeStage.findAll", query="SELECT d FROM DemandeStage d")
public class DemandeStage implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_demande_stage")
	private int idDemandeStage;

	@Column(name="adresse_entreprise")
	private String adresseEntreprise;

	@Column(name="email_entreprise")
	private String emailEntreprise;

	@Column(name="email_res_ent")
	private String emailResEnt;

	@Lob
	private byte[] file_Convention;

	@Column(name="nom_entreprise")
	private String nomEntreprise;

	@Column(name="nom_prenom_res_ent")
	private String nomPrenomResEnt;

	@Column(name="secteur_entreprise")
	private String secteurEntreprise;

	@Column(name="telephone_entreprise")
	private String telephoneEntreprise;

	@Column(name="telephone_res_ent")
	private String telephoneResEnt;

	private byte validation;

	//bi-directional many-to-one association to Stagiaire
	@ManyToOne
	@JoinColumn(name="id_utili_stagiaire")
	private Stagiaire stagiaire;

	//bi-directional many-to-one association to Stage
	@OneToMany(mappedBy="demandeStage")
	private List<Stage> stages;

	public DemandeStage() {
	}

	public int getIdDemandeStage() {
		return this.idDemandeStage;
	}

	public void setIdDemandeStage(int idDemandeStage) {
		this.idDemandeStage = idDemandeStage;
	}

	public String getAdresseEntreprise() {
		return this.adresseEntreprise;
	}

	public void setAdresseEntreprise(String adresseEntreprise) {
		this.adresseEntreprise = adresseEntreprise;
	}

	public String getEmailEntreprise() {
		return this.emailEntreprise;
	}

	public void setEmailEntreprise(String emailEntreprise) {
		this.emailEntreprise = emailEntreprise;
	}

	public String getEmailResEnt() {
		return this.emailResEnt;
	}

	public void setEmailResEnt(String emailResEnt) {
		this.emailResEnt = emailResEnt;
	}

	public byte[] getFile_Convention() {
		return this.file_Convention;
	}

	public void setFile_Convention(byte[] file_Convention) {
		this.file_Convention = file_Convention;
	}

	public String getNomEntreprise() {
		return this.nomEntreprise;
	}

	public void setNomEntreprise(String nomEntreprise) {
		this.nomEntreprise = nomEntreprise;
	}

	public String getNomPrenomResEnt() {
		return this.nomPrenomResEnt;
	}

	public void setNomPrenomResEnt(String nomPrenomResEnt) {
		this.nomPrenomResEnt = nomPrenomResEnt;
	}

	public String getSecteurEntreprise() {
		return this.secteurEntreprise;
	}

	public void setSecteurEntreprise(String secteurEntreprise) {
		this.secteurEntreprise = secteurEntreprise;
	}

	public String getTelephoneEntreprise() {
		return this.telephoneEntreprise;
	}

	public void setTelephoneEntreprise(String telephoneEntreprise) {
		this.telephoneEntreprise = telephoneEntreprise;
	}

	public String getTelephoneResEnt() {
		return this.telephoneResEnt;
	}

	public void setTelephoneResEnt(String telephoneResEnt) {
		this.telephoneResEnt = telephoneResEnt;
	}

	public byte getValidation() {
		return this.validation;
	}

	public void setValidation(byte validation) {
		this.validation = validation;
	}

	public Stagiaire getStagiaire() {
		return this.stagiaire;
	}

	public void setStagiaire(Stagiaire stagiaire) {
		this.stagiaire = stagiaire;
	}

	public List<Stage> getStages() {
		return this.stages;
	}

	public void setStages(List<Stage> stages) {
		this.stages = stages;
	}

	public Stage addStage(Stage stage) {
		getStages().add(stage);
		stage.setDemandeStage(this);

		return stage;
	}

	public Stage removeStage(Stage stage) {
		getStages().remove(stage);
		stage.setDemandeStage(null);

		return stage;
	}

}