package gestion_stagiaire_interface;

import java.util.List;

public interface IntGlobale<T> {
	
	public boolean ajouter (T t);
	public T findByID(String id);
	public List<T> findAll();
	public boolean remove(String id);
	public boolean update(T obj);

}
