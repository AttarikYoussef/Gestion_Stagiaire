package gestion_stages_bean;

import java.util.Date;

public class BeanDemandeSoutenance {
	
	int id_demande_soutenance;
	int id_st;
	String heure,comm;
	byte[] fiche_eva,rapp_st,att_st;
	Date date_demande;
	public BeanDemandeSoutenance(int id_demande_soutenance, int id_st, String heure, String comm, byte[] fiche_eva,
			byte[] rapp_st, byte[] att_st, Date date_demande) {
		super();
		this.id_demande_soutenance = id_demande_soutenance;
		this.id_st = id_st;
		this.heure = heure;
		this.comm = comm;
		this.fiche_eva = fiche_eva;
		this.rapp_st = rapp_st;
		this.att_st = att_st;
		this.date_demande = date_demande;
	}
	public BeanDemandeSoutenance() {
		super();
	}
	public int getId_demande_soutenance() {
		return id_demande_soutenance;
	}
	public void setId_demande_soutenance(int id_demande_soutenance) {
		this.id_demande_soutenance = id_demande_soutenance;
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
	public String getComm() {
		return comm;
	}
	public void setComm(String comm) {
		this.comm = comm;
	}
	public byte[] getFiche_eva() {
		return fiche_eva;
	}
	public void setFiche_eva(byte[] fiche_eva) {
		this.fiche_eva = fiche_eva;
	}
	public byte[] getRapp_st() {
		return rapp_st;
	}
	public void setRapp_st(byte[] rapp_st) {
		this.rapp_st = rapp_st;
	}
	public byte[] getAtt_st() {
		return att_st;
	}
	public void setAtt_st(byte[] att_st) {
		this.att_st = att_st;
	}
	public Date getDate_demande() {
		return date_demande;
	}
	public void setDate_demande(Date date_demande) {
		this.date_demande = date_demande;
	}
	
	
	
}
