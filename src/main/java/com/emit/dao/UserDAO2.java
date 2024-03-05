package com.emit.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.emit.bean.User2;

public class UserDAO2 {
	private static SessionFactory factory;
	
	  static {
		   try {
		         factory = new Configuration().configure().buildSessionFactory();
		      } catch (Throwable ex) { 
		         System.err.println("Failed to create sessionFactory object." + ex);
		         throw new ExceptionInInitializerError(ex); 
		      }
		   }
		   
		   
		   /* Method to CREATE an employee in the database */
		   public Integer create(User2 user2){
		      Session session = factory.openSession();
		      Transaction tx = null;
		      Integer userID = null;
		      
		      try {
		         tx = session.beginTransaction();
		         userID = (Integer) session.save(user2); 
		         tx.commit();
		      } catch (HibernateException e) {
		         if (tx!=null) tx.rollback();
		         e.printStackTrace(); 
		      } finally {
		         session.close(); 
		      }
		      return userID;
		   }
		   
		   
		   /* Method to update an employee from the records */
		   public void update( User2 user2){
		      Session session = factory.openSession();
		      Transaction tx = null;
		      
		      try {
		         tx = session.beginTransaction();
		         session.update(user2); 
		         tx.commit();
		      } catch (HibernateException e) {
		         if (tx!=null) tx.rollback();
		         e.printStackTrace(); 
		      } finally {
		         session.close(); 
		      }
		   }
		   

		   /* Method to DELETE an employee from the records */
		   public void delete(User2 user2){
		      Session session = factory.openSession();
		      Transaction tx = null;
		      
		      try {
		         tx = session.beginTransaction();
		         session.delete(user2); 
		         tx.commit();
		      } catch (HibernateException e) {
		         if (tx!=null) tx.rollback();
		         e.printStackTrace(); 
		      } finally {
		         session.close(); 
		      }
		   }
		   
		   /* Method to find an employee from the records 
		   public User2 findByEmail(String email){
		      Session session = factory.openSession();
		      Transaction tx = null;
		      List<User2> r = null; 
		      try {
		         tx = session.beginTransaction();
		         String hql = "from Users where email=:email"; 
		         Query q = session.createQuery(hql);
		         q.setParameter("email", email);
		         
		         q.getFirstResult();
		         @SuppressWarnings("unchecked")
				 r = (List<User2>)q.getResultList(); 
		         tx.commit();
		      } catch (HibernateException e) {
		         if (tx!=null) tx.rollback();
		         e.printStackTrace(); 
		      } finally {
		         session.close(); 
		      }
		      return ((r!=null?r.get(0):null));
		   }*/
		   
		   @SuppressWarnings("unchecked")
		public User2 getUserByEmail(String email) {
		       Session session = factory.openSession();
		          List<User2> user = null; 
		          Transaction tx = null;
		          
		          try {
		             tx = session.beginTransaction();
		             String hql = "from User2 where email = :email";  
		             Query query = (Query)session.createQuery(hql); 
		             query.setParameter("email", email); 
		             query.getFirstResult();
		             user = query.getResultList();
		             tx.commit();
		          } catch (HibernateException e) {
		             if (tx!=null) tx.rollback();
		             e.printStackTrace(); 
		          } finally {
		             session.close(); 
		          }
		          return ((user!=null&& user.size()>0)?user.get(0):null);
		      //return (User2) user;
		       
		     }
}
