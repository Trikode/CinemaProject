package com.emit.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import com.emit.bean.Hour;
import com.fasterxml.jackson.databind.ObjectMapper;

public class HourDAO {
	private static SessionFactory factory;
	
	  static {
		   try {
		         factory = new Configuration().configure().buildSessionFactory();
		      } catch (Throwable ex) { 
		         System.err.println("Failed to create sessionFactory object." + ex);
		         throw new ExceptionInInitializerError(ex); 
		      }
		   }
	  
	   
	   @SuppressWarnings("unchecked")
	   public String allHours() {
	       Session session = factory.openSession();
	       List<Hour> hours = null;
	       Transaction tx = null;

	       try {
	           tx = session.beginTransaction();
	           String hql = "from Hour";
	           Query query = session.createQuery(hql);
	           hours = query.getResultList();
	           tx.commit();
	       } catch (HibernateException e) {
	           if (tx != null) tx.rollback();
	           e.printStackTrace();
	       } finally {
	           session.close();
	       }

	       // Convert the list of hours to JSON
	       ObjectMapper mapper = new ObjectMapper();
	       String json = null;
	       try {
	           json = mapper.writeValueAsString(hours);
	       } catch (Exception e) {
	           e.printStackTrace();
	       }

	       return json;
	   }
}
