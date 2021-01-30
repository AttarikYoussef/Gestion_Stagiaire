package org.upf.gestion_Stagiaire.Entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Time;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the soutenance database table.
 * 
 */
@Entity
@NamedQuery(name="Soutenance.findAll", query="SELECT s FROM Soutenance s")
public class Soutenance implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_soutenance")
	private int idSoutenance;

	private String commentaire;

	@Temporal(TemporalType.DATE)
	@Column(name="date_soutenance")
	private Date dateSoutenance;

	@Column(name="heure_soutenance")
	private String heureSoutenance;

	//bi-directional many-to-many association to Enseignant
	@ManyToMany
	@JoinTable(
		name="jury"
		, joinColumns={
			@JoinColumn(name="id_soutenance")
			}
		, inverseJoinColumns={
			@JoinColumn(name="id_utili_ensei")
			}
		)
	private List<Enseignant> enseignants;

	//bi-directional many-to-one association to DemandeSoutenance
	@ManyToOne
	@JoinColumn(name="id_demande_soutenance")
	private DemandeSoutenance demandeSoutenance;

	public Soutenance() {
	}

	public int getIdSoutenance() {
		return this.idSoutenance;
	}

	public void setIdSoutenance(int idSoutenance) {
		this.idSoutenance = idSoutenance;
	}

	public String getCommentaire() {
		return this.commentaire;
	}

	public void setCommentaire(String commentaire) {
		this.commentaire = commentaire;
	}

	public Date getDateSoutenance() {
		return this.dateSoutenance;
	}

	public void setDateSoutenance(Date dateSoutenance) {
		this.dateSoutenance = dateSoutenance;
	}

	public String getHeureSoutenance() {
		return this.heureSoutenance;
	}

	public void setHeureSoutenance(String heureSoutenance) {
		this.heureSoutenance = heureSoutenance;
	}

	public List<Enseignant> getEnseignants() {
		return this.enseignants;
	}

	public void setEnseignants(List<Enseignant> enseignants) {
		this.enseignants = enseignants;
	}

	public DemandeSoutenance getDemandeSoutenance() {
		return this.demandeSoutenance;
	}

	public void setDemandeSoutenance(DemandeSoutenance demandeSoutenance) {
		this.demandeSoutenance = demandeSoutenance;
	}

}