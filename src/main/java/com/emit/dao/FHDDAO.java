package com.emit.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.emit.bean.FHD;
import com.emit.bean.Film;
import com.fasterxml.jackson.databind.ObjectMapper;

public class FHDDAO {
	private static SessionFactory factory;
	
	  static {
		   try {
		         factory = new Configuration().configure().buildSessionFactory();
		      } catch (Throwable ex) { 
		         System.err.println("Failed to create sessionFactory object." + ex);
		         throw new ExceptionInInitializerError(ex); 
		      }
		   }
	/* Method to CREATE an FHD in the database */
	   public Integer create(FHD fhd){
	      Session session = factory.openSession();
	      Transaction tx = null;
	      Integer fhdID = null;
	      
	      try {
	         tx = session.beginTransaction();
	         fhdID = (Integer) session.save(fhd); 
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
	      return fhdID;
	   }
	   
	   public void delete(FHD fhd){
		      Session session = factory.openSession();
		      Transaction tx = null;
		      
		      try {
		         tx = session.beginTransaction();
		         session.delete(fhd); 
		         tx.commit();
		      } catch (HibernateException e) {
		         if (tx!=null) tx.rollback();
		         e.printStackTrace(); 
		      } finally {
		         session.close(); 
		      }
		   }
	   
	   @SuppressWarnings("unchecked")
	   public String allFHDs() {
	       Session session = factory.openSession();
	       List<FHD> fhds = null;
	       Transaction tx = null;

	       try {
	           tx = session.beginTransaction();
	           String hql = "from FHD";
	           Query query = session.createQuery(hql);
	           fhds = query.getResultList();
	           tx.commit();
	       } catch (HibernateException e) {
	           if (tx != null) tx.rollback();
	           e.printStackTrace();
	       } finally {
	           session.close();
	       }

	       // Convert the list of fhds to JSON
	       ObjectMapper mapper = new ObjectMapper();
	       String json = null;
	       try {
	           json = mapper.writeValueAsString(fhds);
	       } catch (Exception e) {
	           e.printStackTrace();
	       }

	       return json;
	   }
}
