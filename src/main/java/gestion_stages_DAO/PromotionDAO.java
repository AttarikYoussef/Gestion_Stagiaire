package gestion_stages_DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.upf.gestion_Stagiaire.Entity.Filiere;
import org.upf.gestion_Stagiaire.Entity.Promotion;

import gestion_stagiaire_interface.IntGlobale;

public class PromotionDAO  implements IntGlobale<Promotion> {
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gestion_Stagiaire");
	EntityManager em = emf.createEntityManager();
	EntityTransaction tx = em.getTransaction();
	

	@Override
	public boolean ajouter(Promotion t) {
		
		boolean res = false;
		tx.begin();
		try {
			em.persist(t);
			tx.commit();
			res=true;
			
		} catch (Exception e) {
			System.out.println(e);
			res=false;
			
		}
		return res;
		
	}

	@Override
	public Promotion findByID(String id) {
		
		Promotion uti = em.find(Promotion.class, id);
		
		return uti;
	}
	
	

	@Override
	public List<Promotion> findAll() {
		
		Query query = em.createQuery("SELECT p FROM Promotion p");
		
		return  query.getResultList();
	}

	@Override
	public boolean remove(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Promotion obj) {
		// TODO Auto-generated method stub
		return false;
	}
	

}
