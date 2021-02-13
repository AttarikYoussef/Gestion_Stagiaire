package gestion_stages_bean;

import java.util.ArrayList;
import java.util.List;

import org.upf.gestion_Stagiaire.Entity.Filiere;

public class Beanfiliere {
	
	String id_filiere; 
	String description;
	
	List<Filiere> arl = new ArrayList<Filiere>();

	
	public String getId_filiere() {
		return id_filiere;
	}


	public void setId_filiere(String id_filiere) {
		this.id_filiere = id_filiere;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public List<Filiere> getArl() {
		return arl;
	}


	public void setArl(List<Filiere> arl) {
		this.arl = arl;
	}


	public Beanfiliere() {
		super();
	}


	public Beanfiliere(String id_filiere, String description, List<Filiere> arl) {
		super();
		this.id_filiere = id_filiere;
		this.description = description;
		this.arl = arl;
	}
	

}
