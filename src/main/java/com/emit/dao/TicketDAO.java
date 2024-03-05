package com.emit.dao;

import java.util.List;
import java.util.Map;
import java.util.HashMap;

import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import com.emit.bean.Ticket;
import com.emit.bean.FHD;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

public class TicketDAO {
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
	   public Integer create(Ticket ticket){
	      Session session = factory.openSession();
	      Transaction tx = null;
	      Integer ticketID = null;
	      
	      try {
	         tx = session.beginTransaction();
	         ticketID = (Integer) session.save(ticket); 
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
	      return ticketID;
	   }
	   
	   /* Method to DELETE an film from the records */
	   public void delete(Ticket ticket){
	      Session session = factory.openSession();
	      Transaction tx = null;
	      
	      try {
	         tx = session.beginTransaction();
	         session.delete(ticket); 
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
	   }
	   
	   @SuppressWarnings("unchecked")
	   public String allTickets() {
	       Session session = factory.openSession();
	       List<Ticket> tickets = null;
	       Transaction tx = null;

	       try {
	           tx = session.beginTransaction();
	           String hql = "from Ticket";
	           Query query = session.createQuery(hql);
	           tickets = query.getResultList();
	           tx.commit();
	       } catch (HibernateException e) {
	           if (tx != null) tx.rollback();
	           e.printStackTrace();
	       } finally {
	           session.close();
	       }

	       // Convert the list of tickets to JSON
	       ObjectMapper mapper = new ObjectMapper();
	       mapper.registerModule(new JavaTimeModule()); // Register the JavaTimeModule
	       String json = null;
	       try {
	           json = mapper.writeValueAsString(tickets);
	       } catch (Exception e) {
	           e.printStackTrace();
	       }

	       return json;
	   }
	   
	   public Map<Integer, Integer> getBookedSeatsCountByFilmHour() {
	        Session session = factory.openSession();
	        Map<Integer, Integer> bookedSeatsCountMap = new HashMap<>();
	        Transaction tx = null;

	        try {
	            tx = session.beginTransaction();
	            String hql = "SELECT t.IDHourFilm, COUNT(t.IDSeat) FROM Ticket t GROUP BY t.IDHourFilm";
	            Query query = session.createQuery(hql);
	            @SuppressWarnings("unchecked")
				List<Object[]> results = query.getResultList();
	            
				for (Object[] result : results) {
				    FHD filmHour = (FHD) result[0];
				    int bookedSeatsCount = ((Number) result[1]).intValue();
				    bookedSeatsCountMap.put(filmHour.getIdFilmHours(), bookedSeatsCount);
				}

	            tx.commit();
	        } catch (HibernateException e) {
	            if (tx != null) tx.rollback();
	            e.printStackTrace();
	        } finally {
	            session.close();
	        }

	        return bookedSeatsCountMap;
	    }


}
