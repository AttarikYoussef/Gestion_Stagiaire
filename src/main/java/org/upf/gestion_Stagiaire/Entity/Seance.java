package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Time;
import java.util.Date;


/**
 * The persistent class for the seance database table.
 * 
 */
@Entity
@NamedQuery(name="Seance.findAll", query="SELECT s FROM Seance s")
public class Seance implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_seance")
	private int idSeance;

	@Temporal(TemporalType.DATE)
	@Column(name="date_seance")
	private Date dateSeance;

	@Column(name="heure_seance")
	private Time heureSeance;

	private String observation;

	private String salle;

	//bi-directional many-to-one association to DemandeSeance
	@ManyToOne
	@JoinColumn(name="id_demande_seance")
	private DemandeSeance demandeSeance;

	public Seance() {
	}

	public int getIdSeance() {
		return this.idSeance;
	}

	public void setIdSeance(int idSeance) {
		this.idSeance = idSeance;
	}

	public Date getDateSeance() {
		return this.dateSeance;
	}

	public void setDateSeance(Date dateSeance) {
		this.dateSeance = dateSeance;
	}

	public Time getHeureSeance() {
		return this.heureSeance;
	}

	public void setHeureSeance(Time heureSeance) {
		this.heureSeance = heureSeance;
	}

	public String getObservation() {
		return this.observation;
	}

	public void setObservation(String observation) {
		this.observation = observation;
	}

	public String getSalle() {
		return this.salle;
	}

	public void setSalle(String salle) {
		this.salle = salle;
	}

	public DemandeSeance getDemandeSeance() {
		return this.demandeSeance;
	}

	public void setDemandeSeance(DemandeSeance demandeSeance) {
		this.demandeSeance = demandeSeance;
	}

}