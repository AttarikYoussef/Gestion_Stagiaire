package gestion_stages_bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.upf.gestion_Stagiaire.Entity.DemandeSeance;
import org.upf.gestion_Stagiaire.Entity.DemandeStage;
import org.upf.gestion_Stagiaire.Entity.Stage;

public class BeanDemandeSeance {

	
	
	int id_demande_seance;
	int id_st;
	String heure;
	Date String_demande;
	String validation;
	List<Stage> arl = new ArrayList<Stage>();
	List<DemandeSeance> arl2 = new ArrayList<DemandeSeance>();
	
	
	public int getId_demande_seance() {
		return id_demande_seance;
	}


	public void setId_demande_seance(int id_demande_seance) {
		this.id_demande_seance = id_demande_seance;
	}


	public int getId_st() {
		return id_st;
	}


	public void setId_st(int id_st) {
		this.id_st = id_st;
	}


	public String getHeure() {
		return heure;
	}


	public void setHeure(String heure) {
		this.heure = heure;
	}


	public Date getString_demande() {
		return String_demande;
	}


	public void setString_demande(Date string_demande) {
		String_demande = string_demande;
	}


	public String getValidation() {
		return validation;
	}


	public void setValidation(String validation) {
		this.validation = validation;
	}


	public List<Stage> getArl() {
		return arl;
	}


	public void setArl(List<Stage> arl) {
		this.arl = arl;
	}


	public List<DemandeSeance> getArl2() {
		return arl2;
	}


	public void setArl2(List<DemandeSeance> arl2) {
		this.arl2 = arl2;
	}


	public BeanDemandeSeance() {
		super();
	}


	public BeanDemandeSeance(int id_demande_seance, int id_st, String heure, Date string_demande, String validation,
			List<Stage> arl, List<DemandeSeance> arl2) {
		super();
		this.id_demande_seance = id_demande_seance;
		this.id_st = id_st;
		this.heure = heure;
		String_demande = string_demande;
		this.validation = validation;
		this.arl = arl;
		this.arl2 = arl2;
	}
			
	
	
	
	
	
	
	
	
	
	
	
}
