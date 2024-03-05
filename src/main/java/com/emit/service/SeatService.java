package com.emit.service;

import com.emit.dao.SeatDAO;
public class SeatService {
	SeatDAO dao = new SeatDAO();

	  public String allSeats() {
		    return dao.allSeats();
		}
}
