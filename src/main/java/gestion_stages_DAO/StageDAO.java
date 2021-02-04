package gestion_stages_DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.upf.gestion_Stagiaire.Entity.Stage;
import org.upf.gestion_Stagiaire.Entity.Stage;

import gestion_stagiaire_interface.IntGlobale;

public class StageDAO{

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gestion_Stagiaire");
	EntityManager em = emf.createEntityManager();
	EntityTransaction tx = em.getTransaction();
	
	public boolean Accepter(Stage t) {
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
	
	public Stage findByID(String id) {
		return null;
			}
	
	public List<Stage> findAll() {
		Query query = em.createQuery("select s from enseignant e");
			
			return (ArrayList<Stage>) query.getResultList();
		}
	
	
	
	public boolean refuser(String id) {
		Stage etu = findByID(id);
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
	

	
}
