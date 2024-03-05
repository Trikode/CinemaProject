package com.emit.bean;


public class Hour {
	private int idhours;  
	private String hour;
	
	
	


	public int getIdhours() {
		return idhours;
	}


	public void setIdhours(int idhours) {
		this.idhours = idhours;
	}


	public String getHour() {
		return hour;
	}


	public void setHour(String hour) {
		this.hour = hour;
	}


	public Hour(int idhours, String hour) {
		super();
		this.idhours = idhours;
		this.hour = hour;
	}

	public Hour() {
		super();
	}
}
