package dao;

import java.sql.Date;
import java.util.Map;

import hibernate.Articulo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class ArticuloDAO {

	@Autowired
	SessionFactory sessionFactory;

	public void newArticulo(Map<String, String> map){
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		Articulo articulo = new Articulo();
		articulo.setTitulo(map.get("titulo"));
		articulo.setTexto(map.get("texto"));
		articulo.setAutor("CineTex");
		articulo.setUrl(map.get("url"));
		
		Date date = new Date(System.currentTimeMillis());
		articulo.setFecha(date);
		
		session.save(articulo);
		
		session.getTransaction().commit();
		
		
	}
	
}
