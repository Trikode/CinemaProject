package com.emit.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import com.emit.bean.Seat;
import com.fasterxml.jackson.databind.ObjectMapper;

public class SeatDAO {
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
	   public String allSeats() {
	       Session session = factory.openSession();
	       List<Seat> seats = null;
	       Transaction tx = null;

	       try {
	           tx = session.beginTransaction();
	           String hql = "from Seat";
	           Query query = session.createQuery(hql);
	           seats = query.getResultList();
	           tx.commit();
	       } catch (HibernateException e) {
	           if (tx != null) tx.rollback();
	           e.printStackTrace();
	       } finally {
	           session.close();
	       }

	       // Convert the list of seats to JSON
	       ObjectMapper mapper = new ObjectMapper();
	       String json = null;
	       try {
	           json = mapper.writeValueAsString(seats);
	       } catch (Exception e) {
	           e.printStackTrace();
	       }

	       return json;
	   }

}
