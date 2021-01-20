package gestion_stages_bean;

import java.util.ArrayList;
import java.util.List;

import org.upf.gestion_Stagiaire.Entity.DemandeSoutenance;
import org.upf.gestion_Stagiaire.Entity.Soutenance;

public class BeanSoutenance {
	
	
	List<Soutenance> arl = new ArrayList<Soutenance>();

	public BeanSoutenance() {
		super();
	}

	public List<Soutenance> getArl() {
		return arl;
	}

	public void setArl(List<Soutenance> arl) {
		this.arl = arl;
	}

	
}
