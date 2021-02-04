package gestion_stages_DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.upf.gestion_Stagiaire.Entity.DemandeSeance;
import org.upf.gestion_Stagiaire.Entity.DemandeSeance;

import gestion_stagiaire_interface.IntGlobale;

public class DemandeSeanceDAO implements IntGlobale<DemandeSeance>{

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gestion_Stagiaire");
	EntityManager em = emf.createEntityManager();
	EntityTransaction tx = em.getTransaction();
	
	
	//ajouter un enregistrement dans la table demande seance
	
	@Override
	public boolean ajouter(DemandeSeance t) {
		
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
	public boolean remove(String id) {
		
		DemandeSeance etu = findByID(id);
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
	public boolean update(DemandeSeance obj) {
		return false;
		
		

	}
	
	
	
	
	
	@Override
	public DemandeSeance findByID(String id) {
		
		
		List<DemandeSeance> individus = null;
		individus = (List<DemandeSeance>) em.createNativeQuery("select d.* from demande_Seance d , stage s , demande_stage de , stagiaire st , promotion p , filiere f , gerant g where d.id_stage=s.id_stage and s.id_demande_stage=de.id_demande_stage and de.id_utili_stagiaire=st.id_utili_stagiaire and st.id_promotion = p.id_promo and p.id_filiere=f.id_filiere and f.id_filiere=g.id_filiere and g.id_enseig_gerant= 'Zvanks'", DemandeSeance.class)
		              
		              .getResultList();
		return (DemandeSeance) individus;

	}
	@Override
	public List<DemandeSeance> findAll() {
		
			Query query = em.createQuery("SELECT d FROM DemandeSeance d");
			return  query.getResultList();
	
	}
	
}
