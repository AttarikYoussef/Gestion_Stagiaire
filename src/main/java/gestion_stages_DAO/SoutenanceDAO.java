package gestion_stages_DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.upf.gestion_Stagiaire.Entity.DemandeSoutenance;
import org.upf.gestion_Stagiaire.Entity.Soutenance;

import gestion_stagiaire_interface.IntGlobale;

public class SoutenanceDAO  implements IntGlobale<Soutenance>{


	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Gestion_Stagiaire");
	EntityManager em = emf.createEntityManager();
	EntityTransaction tx = em.getTransaction();
	
	@Override
	public boolean ajouter(Soutenance t) {
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
	public Soutenance findByID(String id) {
		Soutenance uti = em.find(Soutenance.class, id);
		return uti;
	}

	@Override
	public List<Soutenance> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
public List<Soutenance>findallWithgerant(String id) { 
		
		List<Soutenance> individus = null;
		individus = (List<Soutenance>) em
		              .createNativeQuery("select sou.* from soutenance sou , demande_soutenance d , stage s , demande_stage de , stagiaire st , promotion p , filiere f , gerant g where sou.id_demande_soutenance=d.id_demande_soutenance and  d.id_stage=s.id_stage and s.id_demande_stage=de.id_demande_stage and de.id_utili_stagiaire=st.id_utili_stagiaire and st.id_promotion = p.id_promo and p.id_filiere=f.id_filiere and f.id_filiere=g.id_filiere and g.id_enseig_gerant= 'Zvanks'", Soutenance.class)
		              .getResultList();
		return individus;
		
//		
//		Query query = em.createQuery("select * from demande_soutenance d , stage s , demande_stage de , stagiaire st , promotion p , filiere f , gerant g where d.id_stage=s.id_stage and s.id_demande_stage=de.id_demande_stage and de.id_utili_stagiaire=st.id_utili_stagiaire and st.id_promotion = p.id_promo and p.id_filiere=f.id_filiere and f.id_filiere=g.id_filiere and g.id_enseig_gerant='"+id+"'");
//			return (ArrayList<DemandeSoutenance>) query.getResultList();
		}


	@Override
	public boolean remove(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Soutenance obj) {
		// TODO Auto-generated method stub
		return false;
	}

}
