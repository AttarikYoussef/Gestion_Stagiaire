package gestion_stages_bean;

import java.util.ArrayList;
import java.util.List;

import org.upf.gestion_Stagiaire.Entity.DemandeStage;

public class BeanDemandeStage {
	private List<DemandeStage> lst = new ArrayList<DemandeStage>();
	

	
	
	public BeanDemandeStage() {
		super();
	}

	public BeanDemandeStage(List<DemandeStage> lst) {
		super();
		this.lst = lst;
	}

	public List<DemandeStage> getLst() {
		return lst;
	}

	public void setLst(List<DemandeStage> lst) {
		this.lst = lst;
	}

}
