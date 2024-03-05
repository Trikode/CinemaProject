package com.emit.service;


import java.util.Map;

import com.emit.bean.Ticket;
import com.emit.dao.TicketDAO;

public class TicketService {
	TicketDAO dao = new TicketDAO();
	
	 public Integer create(Ticket ticket){
		   return dao.create(ticket); 
	   }
	   
	   public void delete(Ticket ticket) {
		   dao.delete(ticket);
	   }
	   
	   public String allTickets() {
		    return dao.allTickets();
		}
	   public Map<Integer, Integer> getBookedSeatsCountByFilmHour() {
		    return dao.getBookedSeatsCountByFilmHour();
		}

}
