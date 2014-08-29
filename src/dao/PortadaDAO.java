package dao;

import hibernate.Articulo;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class PortadaDAO {

	@Autowired
	SessionFactory sessionFactory;
	

	public List<Articulo> getUltimasResenas(){		
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();	
		
		List<Articulo> ListaResenas = new ArrayList();

		ListaResenas =  session.createQuery
        (" from Articulo a  order by a.Fecha asc ").setMaxResults(10).list();

		
		session.getTransaction().commit();
		
		return ListaResenas;
	}
	
	
	
}
