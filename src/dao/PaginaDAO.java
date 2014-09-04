package dao;

import hibernate.Pagina;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class PaginaDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public Pagina getPagina(){		
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();	
		
		Pagina pagina = (Pagina)session.get(Pagina.class,  1);		

		session.getTransaction().commit();
		
		return pagina;
	}
	
}
