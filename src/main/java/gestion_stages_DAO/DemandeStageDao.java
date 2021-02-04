package gestion_stages_DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.upf.gestion_Stagiaire.Entity.DemandeStage;

import gestion_stagiaire_interface.IntGlobale;

public class DemandeStageDao implements IntGlobale<DemandeStage>  {
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gestion_Stagiaire");
	EntityManager em = emf.createEntityManager();
	EntityTransaction tx = em.getTransaction();
	

	@Override
	public boolean ajouter(DemandeStage t) {
		// TODO Auto-generated method stub
		boolean res = false;
		List<DemandeStage> lst = findAllWithID(t.getStagiaire().getIdUtiliStagiaire());
		if(lst.size()<3) {
			
			tx.begin();
			try {
				em.persist(t);
				tx.commit();
				res=true;
				
			} catch (Exception e) {
				System.out.println(e);
				res=false;
				
			}
		}
		else {
			res=false;
		}
		
		return res;
	}

	@Override
	public DemandeStage findByID(String id) {
		DemandeStage dm = em.find(DemandeStage.class, Integer.parseInt(id));
		
		return dm;
	}

	@Override
	public List<DemandeStage> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean remove(String id) {
		// TODO Auto-generated method stub
		DemandeStage dm = findByID(id);
		boolean res = false;
		tx.begin();
		try {
			em.remove(dm);
			tx.commit();
			res=true;
			
		} catch (Exception e) {
			System.out.println(e);
			res=false;
			
		}
		return res;
	}

	@Override
	public boolean update(DemandeStage obj) {
		// TODO Auto-generated method stub
		return false;
	}
	
	public List<DemandeStage> findAllNotAccept(){
		Query query = em.createQuery("SELECT d FROM DemandeStage d where d.validation = 0");
		List<DemandeStage> lst = query.getResultList();
		return lst;
	}
	public List<DemandeStage> findAllWithID(String ID){
		//Query query = em.createQuery("SELECT d FROM DemandeStage d where d.Stagiaire = :fid");
		Query queryS = em.createNativeQuery("SELECT * FROM demande_stage WHERE id_utili_stagiaire = '"+ID+"'", DemandeStage.class);
		
		List<DemandeStage> lst = queryS.getResultList();
		return lst;
	}

}
