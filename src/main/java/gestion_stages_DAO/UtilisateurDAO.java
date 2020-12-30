package gestion_stages_DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.upf.gestion_Stagiaire.Entity.*;

import gestion_stagiaire_interface.IntGlobale;

public class UtilisateurDAO implements IntGlobale<Utilisateur> {

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gestion_Stagiaire");
	EntityManager em = emf.createEntityManager();
	EntityTransaction tx = em.getTransaction();
	
	@Override
	public boolean ajouter(Utilisateur t) {
		
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
	public Utilisateur findByID(String id) {

		Utilisateur uti = em.find(Utilisateur.class, id);
		
		return uti;
	}
	
	
	
	
	
	
	@Override
	public List<Utilisateur> findAll() {
		
		Query query = em.createQuery("select u from utilisateur u");
		
		return (ArrayList<Utilisateur>) query.getResultList();
			
	}
	
	

	
	@Override
	public boolean remove(String id) {

		Utilisateur etu = findByID(id);
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
	public boolean update(Utilisateur obj) {
		
		boolean res = false;
		
		Utilisateur uti = findByID(obj.getIdUtilisateur());
		
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
