package gestion_stages_DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.upf.gestion_Stagiaire.Entity.DemandeSoutenance;
import org.upf.gestion_Stagiaire.Entity.Encadrant;
import org.upf.gestion_Stagiaire.Entity.Enseignant;
import org.upf.gestion_Stagiaire.Entity.Gerant;

import gestion_stagiaire_interface.IntGlobale;

public class EnseignantDAO implements IntGlobale<Enseignant>{
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gestion_Stagiaire");
	EntityManager em = emf.createEntityManager();
	EntityTransaction tx = em.getTransaction();

	@Override
	public boolean ajouter(Enseignant t) {
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
	public Enseignant findByID(String id) {
		
		Enseignant uti = em.find(Enseignant.class, id);
		
		return uti;
	}

	@Override
	public List<Enseignant> findAll() {
		
		Query query = em.createQuery("select e from enseignant e");
		
		return (ArrayList<Enseignant>) query.getResultList();
	}

	
	public List<Enseignant> findByFil() {
		
		List<Enseignant> individus = null;
		individus = (List<Enseignant>) em
		              .createNativeQuery("select e.* from enseignant e where e.id_filiere= 'GINF'", Enseignant.class)
		              
		              .getResultList();
		return individus;
	}
	
	
	@Override
	public boolean remove(String id) {


		Enseignant etu = findByID(id);
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
	public boolean update(Enseignant obj) {


boolean res = false;
		
		Enseignant uti = findByID(obj.getIdUtiliEnsei());
		
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

	public boolean ajouterEncadrant(Encadrant tt) {
		
		boolean res = false;
		tx.begin();
		try {
			em.persist(tt);
			tx.commit();
			res=true;
			
		} catch (Exception e) {
			System.out.println(e);
			res=false;
			
		}
		return res;
		
		
	}
	
public boolean ajouterGerant(Gerant tt) {
		
		boolean res = false;
		tx.begin();
		try {
			em.persist(tt);
			tx.commit();
			res=true;
			
		} catch (Exception e) {
			System.out.println(e);
			res=false;
			
		}
		return res;
		
		
	}


}

