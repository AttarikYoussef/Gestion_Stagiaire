package gestion_stages_bean;

import java.util.ArrayList;
import java.util.List;

import org.upf.gestion_Stagiaire.Entity.Filiere;
import org.upf.gestion_Stagiaire.Entity.Promotion;

public class BeanPromotion {
	
	String idPromo;
	String description;
	Filiere idFiliere;
	int niveau;
	List<Promotion> arl = new ArrayList<Promotion>();
	
	
	
	public String getIdPromo() {
		return idPromo;
	}



	public void setIdPromo(String idPromo) {
		this.idPromo = idPromo;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public Filiere getIdFiliere() {
		return idFiliere;
	}



	public void setIdFiliere(Filiere idFiliere) {
		this.idFiliere = idFiliere;
	}



	public int getNiveau() {
		return niveau;
	}



	public void setNiveau(int niveau) {
		this.niveau = niveau;
	}



	public List<Promotion> getArl() {
		return arl;
	}



	public void setArl(List<Promotion> arl) {
		this.arl = arl;
	}



	public BeanPromotion() {
		super();
	}



	public BeanPromotion(String idPromo, String description, Filiere idFiliere, int niveau, List<Promotion> arl) {
		super();
		this.idPromo = idPromo;
		this.description = description;
		this.idFiliere = idFiliere;
		this.niveau = niveau;
		this.arl = arl;
	}
	

}
