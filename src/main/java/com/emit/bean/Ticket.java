package com.emit.bean;

import java.time.LocalDate;

public class Ticket {
	private Integer idtickets;  
	private User2 IDUser;
	private Seat IDSeat;  
	private FHD IDHourFilm;
	private LocalDate  timeBuy;
	
	public Integer getIdtickets() {
		return idtickets;
	}
	public void setIdtickets(Integer idtickets) {
		this.idtickets = idtickets;
	}

	public User2 getIDUser() {
		return IDUser;
	}
	public void setIDUser(User2 iDUser) {
		IDUser = iDUser;
	}
	public Seat getIDSeat() {
		return IDSeat;
	}
	public void setIDSeat(Seat iDSeat) {
		IDSeat = iDSeat;
	}
	public FHD getIDHourFilm() {
		return IDHourFilm;
	}
	public void setIDHourFilm(FHD iDHourFilm) {
		IDHourFilm = iDHourFilm;
	}
	public LocalDate getTimeBuy() {
		return timeBuy;
	}
	public void setTimeBuy(LocalDate timeBuy) {
		this.timeBuy = timeBuy;
	}
	
	
	
	public Ticket(Integer idtickets, User2 iDUser, Seat iDSeat, FHD iDHourFilm, LocalDate timeBuy) {
		super();
		this.idtickets = idtickets;
		IDUser = iDUser;
		IDSeat = iDSeat;
		IDHourFilm = iDHourFilm;
		this.timeBuy = timeBuy;
	}
	public Ticket() {
		super();
	}

	
}
