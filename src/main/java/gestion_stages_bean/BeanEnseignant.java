package gestion_stages_bean;

import java.util.ArrayList;
import java.util.List;

import org.upf.gestion_Stagiaire.Entity.Filiere;
import org.upf.gestion_Stagiaire.Entity.Soutenance;

public class BeanEnseignant {
	
	List<Filiere> arl = new ArrayList<Filiere>();
	List<Soutenance> arl2 =  new ArrayList<Soutenance>();
	public BeanEnseignant() {
		super();
	}
	public List<Filiere> getArl() {
		return arl;
	}
	public void setArl(List<Filiere> arl) {
		this.arl = arl;
	}
	public List<Soutenance> getArl2() {
		return arl2;
	}
	public void setArl2(List<Soutenance> arl2) {
		this.arl2 = arl2;
	}
	
	

}
