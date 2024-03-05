package com.emit.service;

import com.emit.dao.HourDAO;

public class HourService {
	
HourDAO dao = new HourDAO();
	  public String allHours() {
		    return dao.allHours();
		}
}
