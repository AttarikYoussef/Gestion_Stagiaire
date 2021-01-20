package gestion_stages_DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.upf.gestion_Stagiaire.Entity.Filiere;
import org.upf.gestion_Stagiaire.Entity.Stagiaire;

import gestion_stagiaire_interface.IntGlobale;

public class FiliereDAO implements IntGlobale<Filiere>{
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gestion_Stagiaire");
	EntityManager em = emf.createEntityManager();
	EntityTransaction tx = em.getTransaction();


	@Override
	public boolean ajouter(Filiere t) {

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
	public Filiere findByID(String id) {
		
		Filiere uti = em.find(Filiere.class, id);
		
		return uti;
	}

	@Override
	public List<Filiere> findAll() {

		Query query = em.createQuery("select e from enseignant e");
		
		return (ArrayList<Filiere>) query.getResultList();
	}

	@Override
	public boolean remove(String id) {

		Filiere etu = findByID(id);
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
	public boolean update(Filiere obj) {
		
		boolean res = false;
		Filiere uti = findByID(obj.getIdFiliere());
		
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
