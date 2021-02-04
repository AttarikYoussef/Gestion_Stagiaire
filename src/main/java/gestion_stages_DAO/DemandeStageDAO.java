package gestion_stages_DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.upf.gestion_Stagiaire.Entity.DemandeSoutenance;
import org.upf.gestion_Stagiaire.Entity.DemandeStage;

import gestion_stagiaire_interface.IntGlobale;

public class DemandeStageDAO implements IntGlobale<DemandeStage> {
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gestion_Stagiaire");
	EntityManager em = emf.createEntityManager();
	EntityTransaction tx = em.getTransaction();

	@Override
	public boolean ajouter(DemandeStage t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public DemandeStage findByID(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DemandeStage> findAll() {
		
		Query query = em.createQuery("SELECT d FROM DemandeStage d");
		
		return  query.getResultList();
	}

	@Override
	public boolean remove(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(DemandeStage obj) {
		// TODO Auto-generated method stub
		return false;
	}
	public DemandeStage findbyIdd(int id) {
		DemandeStage uti = em.find(DemandeStage.class, id);
				
				return uti;
			}
	
	
	public boolean removee(int id) {
		DemandeStage etu = findbyIdd(id);
		boolean res = false;
		tx.begin();
		try {
			em.remove(etu);
			tx.commit();
			res=true;
			
		} catch (Exception e) {
			System.out.println(e);
			res=false;
			
		}
		return res;
	}
}
