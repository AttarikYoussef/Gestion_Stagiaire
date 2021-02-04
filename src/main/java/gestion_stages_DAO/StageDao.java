package gestion_stages_DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.upf.gestion_Stagiaire.Entity.Stage;

import gestion_stagiaire_interface.IntGlobale;

public class StageDao implements IntGlobale<Stage>{

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gestion_Stagiaire");
	EntityManager em = emf.createEntityManager();
	EntityTransaction tx = em.getTransaction();

	
	@Override
	public boolean ajouter(Stage t) {

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
	public Stage findByID(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Stage> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean remove(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Stage obj) {
		// TODO Auto-generated method stub
		return false;
	}

}
