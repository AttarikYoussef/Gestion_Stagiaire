package gestion_stages_DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.upf.gestion_Stagiaire.Entity.DemandeSoutenance;
import org.upf.gestion_Stagiaire.Entity.Stage;

import gestion_stagiaire_interface.IntGlobale;

public class DemandeSoutenanceDAO implements IntGlobale<DemandeSoutenance> {

	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gestion_Stagiaire");
	EntityManager em = emf.createEntityManager();
	EntityTransaction tx = em.getTransaction();
	
	@Override
	public boolean ajouter(DemandeSoutenance t) {
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
	public DemandeSoutenance findByID(String id) {
return null;
	}
	
	
	public DemandeSoutenance findbyIdd(int id) {
		DemandeSoutenance uti = em.find(DemandeSoutenance.class, id);
				
				return uti;
			}
	
	
	public Stage findbyIddstage(int id) {
		Stage uti = em.find(Stage.class, id);
				
				return uti;
			}
	
	

	@Override
	public List<DemandeSoutenance> findAll() {
	Query query = em.createQuery("select e from enseignant e");
		
		return query.getResultList();
	}

	@Override
	public boolean remove(String id) {
		DemandeSoutenance etu = findByID(id);
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
	public boolean update(DemandeSoutenance obj) {
boolean res = false;
		
		DemandeSoutenance uti = findbyIdd(obj.getIdDemandeSoutenance());
		
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
	
	
	
	public boolean updatestage(Stage obj) {
		boolean res = false;
				
				DemandeSoutenance uti = findbyIdd(obj.getIdStage());
				
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
