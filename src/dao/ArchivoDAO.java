package dao;

import hibernate.Articulo;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ArchivoDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	public List<Articulo> getUltimos10(){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();	
		
		List<Articulo> ListaResenas = new ArrayList<Articulo>();

		ListaResenas =  session.createQuery
        (" from Articulo a  order by a.Fecha asc ").setMaxResults(10).list();
	
		session.getTransaction().commit();
		
		return ListaResenas;

	}
	
	
	public List<Articulo> getTodas(){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();	
		
		List<Articulo> ListaResenas = new ArrayList<Articulo>();

		ListaResenas =  session.createQuery
        (" from Articulo a  order by a.Fecha asc ").list();
	
		session.getTransaction().commit();
		
		return ListaResenas;

	}
	
	public List<Articulo> getPorMes(String mes){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();	
		
		List<Articulo> ListaResenas = new ArrayList<Articulo>();

		//yyyy-MM-dd
		String fecha = "2014-"+mes+"-01";
		String fecha2 = "2014-"+mes+"-31";
		
		Date date = Date.valueOf(fecha) ;
		Date date2 = Date.valueOf(fecha2) ;
		
		ListaResenas =  session.createQuery
        (" from Articulo a where a.Fecha >= :start and a.Fecha < :end order by a.Fecha asc ").
        setParameter("start", date).
        setParameter("end", date2).
        list() ;
	
		session.getTransaction().commit();
		
		return ListaResenas;

	}

}
