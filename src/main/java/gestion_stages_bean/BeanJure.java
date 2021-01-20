package gestion_stages_bean;

import java.util.ArrayList;
import java.util.List;

import org.upf.gestion_Stagiaire.Entity.DemandeSoutenance;
import org.upf.gestion_Stagiaire.Entity.Enseignant;
import org.upf.gestion_Stagiaire.Entity.Soutenance;

public class BeanJure {
	
	
	List<Enseignant> arl = new ArrayList<Enseignant>();
	List<Soutenance> arl2 = new ArrayList<Soutenance>();

	public List<Soutenance> getArl2() {
		return arl2;
	}

	public void setArl2(List<Soutenance> arl2) {
		this.arl2 = arl2;
	}

	public List<Enseignant> getArl() {
		return arl;
	}

	public void setArl(List<Enseignant> arl) {
		this.arl = arl;
	}

	public BeanJure() {
		super();
	}

}
