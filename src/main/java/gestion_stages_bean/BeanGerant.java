package gestion_stages_bean;

import java.util.ArrayList;
import java.util.List;

import org.upf.gestion_Stagiaire.Entity.DemandeStage;

public class BeanGerant {
	
	List<DemandeStage> arl = new ArrayList<DemandeStage>();

	public BeanGerant(List<DemandeStage> arl) {
		super();
		this.arl = arl;
	}

	public BeanGerant() {
		super();
	}

	public List<DemandeStage> getArl() {
		return arl;
	}

	public void setArl(List<DemandeStage> arl) {
		this.arl = arl;
	}
}
	
