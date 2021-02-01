package gestion_stages_DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.upf.gestion_Stagiaire.Entity.Stagiaire;

import gestion_stagiaire_interface.IntGlobale;

public class StagiaireDAO  implements IntGlobale<Stagiaire>{
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gestion_Stagiaire");
	EntityManager em = emf.createEntityManager();
	EntityTransaction tx = em.getTransaction();

	@Override
	public boolean ajouter(Stagiaire t) {
		
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
	public Stagiaire findByID(String id) {
	
		Stagiaire uti = em.find(Stagiaire.class, id);
		
		return uti;
	}

	@Override
	public List<Stagiaire> findAll() {

		Query query = em.createQuery("select e from enseignant e");
		
		return query.getResultList();
	}

	@Override
	public boolean remove(String id) {
		
		Stagiaire etu = findByID(id);
		boolean res = false;
		tx.begin();
		try {
			em.merge(etu);
			tx.commit();
			res=true;
			
		} catch (Exception e) {
			System.out.println(e);
			res=false;
			
		}
		return res;
	}

	@Override
	public boolean update(Stagiaire obj) {
		
		boolean res = false;
		Stagiaire uti = findByID(obj.getIdUtiliStagiaire());
		
		if(uti!=null) {
			
			tx.begin();
			
			try {
				
				em.merge(uti);
				tx.commit();
				res=true;
				
			} catch (Exception e) {
				System.out.println(e);
				res=false;
			}
			
		}
		
		return res;
		
	}

}
