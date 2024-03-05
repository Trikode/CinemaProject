package com.emit.service;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.emit.bean.User2;

import com.emit.dao.UserDAO2;

public class UserService2 {
	  UserDAO2 dao = new UserDAO2();
		
	   /* Method to CREATE an employee in the database */
	   public Integer create(User2 user2){
		   return dao.create(user2); 
	   }
	   
	   public void delete(User2 user2) {
		   dao.delete(user2);
	   }
	   
	   public User2 getUserByEmail(String email ){
		   User2 user = (User2) dao.getUserByEmail(email);
		   return user; 
	   }
	   
	   
	   public void cambiaPassword(User2 user2, String oldPwd, String newPwd ) {
			int tentativi = user2.getNum_attempts();
			
			if(user2.getPassword().equals(oldPwd)) {
				user2.setPassword(newPwd);
				System.out.println("Password changed, your new  password is: " + newPwd);
			} else {
				tentativi++;
				user2.setNum_attempts(tentativi);
				if(tentativi > 4) {
					System.out.println("You reached the maximum tries to change your password ("+ tentativi +"/5), your account"
							+ " will be blocked, please contact the assistance");
					user2.setActive(false);
				}else {
					
					System.out.println("Sorry you can't change the password if you don't know the old one. "
							+ "this your " + tentativi + "/5 try");
				}
			}
			dao.update(user2);
		}
	   
	   public void azzeraPassword(User2 admin, User2 user2) {
			
			
			if(admin.getIDRole() == 1) {
				user2.setPassword("0000");
				System.out.println("Reset complete, the password is 0000");
			} else {
				System.out.println("Non hai i diritti per cambiare passw");
				}
			
			dao.update(user2);
		}
}
