package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Time;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the demande_soutenance database table.
 * 
 */
@Entity
@Table(name="demande_soutenance")
@NamedQuery(name="DemandeSoutenance.findAll", query="SELECT d FROM DemandeSoutenance d")
public class DemandeSoutenance implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_demande_soutenance")
	private int idDemandeSoutenance;

	private String commentaire;

	@Temporal(TemporalType.DATE)
	@Column(name="date_propose_sout")
	private Date dateProposeSout;

	@Lob
	@Column(name="file_attestation_stage")
	private byte[] fileAttestationStage;

	@Lob
	@Column(name="file_evaluation")
	private byte[] fileEvaluation;

	@Lob
	@Column(name="file_rapport_stage")
	private byte[] fileRapportStage;

	@Column(name="heure_propose_sout")
	private Time heureProposeSout;

	private byte validation;

	//bi-directional many-to-one association to Stage
	@ManyToOne
	@JoinColumn(name="id_stage")
	private Stage stage;

	//bi-directional many-to-one association to Soutenance
	@OneToMany(mappedBy="demandeSoutenance")
	private List<Soutenance> soutenances;

	public DemandeSoutenance() {
	}

	public int getIdDemandeSoutenance() {
		return this.idDemandeSoutenance;
	}

	public void setIdDemandeSoutenance(int idDemandeSoutenance) {
		this.idDemandeSoutenance = idDemandeSoutenance;
	}

	public String getCommentaire() {
		return this.commentaire;
	}

	public void setCommentaire(String commentaire) {
		this.commentaire = commentaire;
	}

	public Date getDateProposeSout() {
		return this.dateProposeSout;
	}

	public void setDateProposeSout(Date dateProposeSout) {
		this.dateProposeSout = dateProposeSout;
	}

	public byte[] getFileAttestationStage() {
		return this.fileAttestationStage;
	}

	public void setFileAttestationStage(byte[] fileAttestationStage) {
		this.fileAttestationStage = fileAttestationStage;
	}

	public byte[] getFileEvaluation() {
		return this.fileEvaluation;
	}

	public void setFileEvaluation(byte[] fileEvaluation) {
		this.fileEvaluation = fileEvaluation;
	}

	public byte[] getFileRapportStage() {
		return this.fileRapportStage;
	}

	public void setFileRapportStage(byte[] fileRapportStage) {
		this.fileRapportStage = fileRapportStage;
	}

	public Time getHeureProposeSout() {
		return this.heureProposeSout;
	}

	public void setHeureProposeSout(Time heureProposeSout) {
		this.heureProposeSout = heureProposeSout;
	}

	public byte getValidation() {
		return this.validation;
	}

	public void setValidation(byte validation) {
		this.validation = validation;
	}

	public Stage getStage() {
		return this.stage;
	}

	public void setStage(Stage stage) {
		this.stage = stage;
	}

	public List<Soutenance> getSoutenances() {
		return this.soutenances;
	}

	public void setSoutenances(List<Soutenance> soutenances) {
		this.soutenances = soutenances;
	}

	public Soutenance addSoutenance(Soutenance soutenance) {
		getSoutenances().add(soutenance);
		soutenance.setDemandeSoutenance(this);

		return soutenance;
	}

	public Soutenance removeSoutenance(Soutenance soutenance) {
		getSoutenances().remove(soutenance);
		soutenance.setDemandeSoutenance(null);

		return soutenance;
	}

}