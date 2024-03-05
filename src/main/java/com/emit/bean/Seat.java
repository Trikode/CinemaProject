package com.emit.bean;


public class Seat {
	private int idseats;  
	private String seat;
	
	
	


	

	






	public int getIdseats() {
		return idseats;
	}







	public void setIdseats(Integer seatIndex) {
		this.idseats = seatIndex;
	}







	public String getSeat() {
		return seat;
	}







	public void setSeat(String seat) {
		this.seat = seat;
	}







	public Seat(int idseats, String seat) {
		super();
		this.idseats = idseats;
		this.seat = seat;
	}
	
	public Seat() {
		super();
	}

	
}
