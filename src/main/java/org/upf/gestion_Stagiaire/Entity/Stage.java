package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the stage database table.
 * 
 */
@Entity
@NamedQuery(name="Stage.findAll", query="SELECT s FROM Stage s")
public class Stage implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_stage")
	private int idStage;

	//bi-directional many-to-one association to DemandeSeance
	@OneToMany(mappedBy="stage")
	private List<DemandeSeance> demandeSeances;

	//bi-directional many-to-one association to DemandeSoutenance
	@OneToMany(mappedBy="stage")
	private List<DemandeSoutenance> demandeSoutenances;

	//bi-directional many-to-one association to DemandeStage
	@ManyToOne
	@JoinColumn(name="id_demande_stage")
	private DemandeStage demandeStage;

	public Stage() {
	}

	public int getIdStage() {
		return this.idStage;
	}

	public void setIdStage(int idStage) {
		this.idStage = idStage;
	}

	public List<DemandeSeance> getDemandeSeances() {
		return this.demandeSeances;
	}

	public void setDemandeSeances(List<DemandeSeance> demandeSeances) {
		this.demandeSeances = demandeSeances;
	}

	public DemandeSeance addDemandeSeance(DemandeSeance demandeSeance) {
		getDemandeSeances().add(demandeSeance);
		demandeSeance.setStage(this);

		return demandeSeance;
	}

	public DemandeSeance removeDemandeSeance(DemandeSeance demandeSeance) {
		getDemandeSeances().remove(demandeSeance);
		demandeSeance.setStage(null);

		return demandeSeance;
	}

	public List<DemandeSoutenance> getDemandeSoutenances() {
		return this.demandeSoutenances;
	}

	public void setDemandeSoutenances(List<DemandeSoutenance> demandeSoutenances) {
		this.demandeSoutenances = demandeSoutenances;
	}

	public DemandeSoutenance addDemandeSoutenance(DemandeSoutenance demandeSoutenance) {
		getDemandeSoutenances().add(demandeSoutenance);
		demandeSoutenance.setStage(this);

		return demandeSoutenance;
	}

	public DemandeSoutenance removeDemandeSoutenance(DemandeSoutenance demandeSoutenance) {
		getDemandeSoutenances().remove(demandeSoutenance);
		demandeSoutenance.setStage(null);

		return demandeSoutenance;
	}

	public DemandeStage getDemandeStage() {
		return this.demandeStage;
	}

	public void setDemandeStage(DemandeStage demandeStage) {
		this.demandeStage = demandeStage;
	}

}