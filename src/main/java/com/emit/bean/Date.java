package com.emit.bean;


public class Date {
	private int iddates;  
	private String date;
	public int getIddates() {
		return iddates;
	}
	public void setIddates(int iddates) {
		this.iddates = iddates;
	}
	
	
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Date(int iddates, String date) {
		super();
		this.iddates = iddates;
		this.date = date;
	}

	public Date() {
		super();
	}
}
