package dao;

import hibernate.Articulo;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class ResenaDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public Articulo getResena(String id){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();	
		
		Articulo articulo = (Articulo)session.get(Articulo.class, Integer.parseInt(id));
	
		session.getTransaction().commit();
		
		return articulo;

	}
	
public Articulo setResenaEdit(String id,String titulo,String texto,String url){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();	
		
		 Articulo articulo = (Articulo)session.get(Articulo.class, Integer.parseInt(id) );
		articulo.setTexto(texto);
		articulo.setTitulo(titulo);
		articulo.setUrl(url);
		session.save(articulo);
	
		 
		session.getTransaction().commit();
		
		return articulo;

	}

public Articulo ResenaEliminar(String id){
	
	Session session = sessionFactory.getCurrentSession();
	session.beginTransaction();	
	
	 Articulo articulo = (Articulo)session.get(Articulo.class, Integer.parseInt(id) );
	session.delete(articulo);
	 
	session.getTransaction().commit();
	
	return articulo;

}
	
	
	

}
