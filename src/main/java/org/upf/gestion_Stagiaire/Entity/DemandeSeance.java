package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Time;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the demande_seance database table.
 * 
 */
@Entity
@Table(name="demande_seance")
@NamedQuery(name="DemandeSeance.findAll", query="SELECT d FROM DemandeSeance d")
public class DemandeSeance implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_demande_seance")
	private int idDemandeSeance;

	@Temporal(TemporalType.DATE)
	@Column(name="date_propose_seance")
	private Date dateProposeSeance;

	@Column(name="heure_propose_seance")
	private Time heureProposeSeance;

	private byte validation;

	//bi-directional many-to-one association to Stage
	@ManyToOne
	@JoinColumn(name="id_stage")
	private Stage stage;

	//bi-directional many-to-one association to Seance
	@OneToMany(mappedBy="demandeSeance")
	private List<Seance> seances;

	public DemandeSeance() {
	}

	public int getIdDemandeSeance() {
		return this.idDemandeSeance;
	}

	public void setIdDemandeSeance(int idDemandeSeance) {
		this.idDemandeSeance = idDemandeSeance;
	}

	public Date getDateProposeSeance() {
		return this.dateProposeSeance;
	}

	public void setDateProposeSeance(Date dateProposeSeance) {
		this.dateProposeSeance = dateProposeSeance;
	}

	public Time getHeureProposeSeance() {
		return this.heureProposeSeance;
	}

	public void setHeureProposeSeance(Time heureProposeSeance) {
		this.heureProposeSeance = heureProposeSeance;
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

	public List<Seance> getSeances() {
		return this.seances;
	}

	public void setSeances(List<Seance> seances) {
		this.seances = seances;
	}

	public Seance addSeance(Seance seance) {
		getSeances().add(seance);
		seance.setDemandeSeance(this);

		return seance;
	}

	public Seance removeSeance(Seance seance) {
		getSeances().remove(seance);
		seance.setDemandeSeance(null);

		return seance;
	}

}