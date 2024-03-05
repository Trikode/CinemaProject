package com.emit.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.fasterxml.jackson.databind.ObjectMapper;


import com.emit.bean.Film;

public class FilmDAO {
	private static SessionFactory factory;
	
	  static {
		   try {
		         factory = new Configuration().configure().buildSessionFactory();
		      } catch (Throwable ex) { 
		         System.err.println("Failed to create sessionFactory object." + ex);
		         throw new ExceptionInInitializerError(ex); 
		      }
		   }
	  
	  /* Method to CREATE an film in the database */
	   public Integer create(Film film){
	      Session session = factory.openSession();
	      Transaction tx = null;
	      Integer filmID = null;
	      
	      try {
	         tx = session.beginTransaction();
	         filmID = (Integer) session.save(film); 
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
	      return filmID;
	   }
	   
	   /* Method to DELETE an film from the records */
	   public void delete(Film film){
	      Session session = factory.openSession();
	      Transaction tx = null;
	      
	      try {
	         tx = session.beginTransaction();
	         session.delete(film); 
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
	   }
	   
	   @SuppressWarnings("unchecked")
	   public String allFilms() {
	       Session session = factory.openSession();
	       List<Film> films = null;
	       Transaction tx = null;

	       try {
	           tx = session.beginTransaction();
	           String hql = "from Film";
	           Query query = session.createQuery(hql);
	           films = query.getResultList();
	           tx.commit();
	       } catch (HibernateException e) {
	           if (tx != null) tx.rollback();
	           e.printStackTrace();
	       } finally {
	           session.close();
	       }

	       // Convert the list of films to JSON
	       ObjectMapper mapper = new ObjectMapper();
	       String json = null;
	       try {
	           json = mapper.writeValueAsString(films);
	       } catch (Exception e) {
	           e.printStackTrace();
	       }

	       return json;
	   }

}
