package gestion_stages_DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.upf.gestion_Stagiaire.Entity.DemandeSoutenance;
import org.upf.gestion_Stagiaire.Entity.Enseignant;
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
	public ArrayList<DemandeSoutenance> findAll() {
	Query query = em.createQuery("select d from demande_soutenance d");
	
		
		return (ArrayList<DemandeSoutenance>) query.getResultList();
	}
	
	
	public List<DemandeSoutenance>findallWithgerant(String id) { 
		
		List<DemandeSoutenance> individus = null;
		individus = (List<DemandeSoutenance>) em
		              .createNativeQuery("select d.* from demande_soutenance d , stage s , demande_stage de , stagiaire st , promotion p , filiere f , gerant g where d.id_stage=s.id_stage and s.id_demande_stage=de.id_demande_stage and de.id_utili_stagiaire=st.id_utili_stagiaire and st.id_promotion = p.id_promo and p.id_filiere=f.id_filiere and f.id_filiere=g.id_filiere and g.id_enseig_gerant= 'Zvanks'", DemandeSoutenance.class)
		              
		              .getResultList();
		return individus;
		
//		
//		Query query = em.createQuery("select * from demande_soutenance d , stage s , demande_stage de , stagiaire st , promotion p , filiere f , gerant g where d.id_stage=s.id_stage and s.id_demande_stage=de.id_demande_stage and de.id_utili_stagiaire=st.id_utili_stagiaire and st.id_promotion = p.id_promo and p.id_filiere=f.id_filiere and f.id_filiere=g.id_filiere and g.id_enseig_gerant='"+id+"'");
//			return (ArrayList<DemandeSoutenance>) query.getResultList();
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
	
	public boolean removee(int id) {
		DemandeSoutenance etu = findbyIdd(id);
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
	
	
	

}
