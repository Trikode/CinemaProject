package com.emit.bean;


public class FHD {
	private int idFilmHours;  
	private  Film IDFilm;
	private Hour IDHour;  
	private Date IDDate;
	
	
	




	public int getIdFilmHours() {
		return idFilmHours;
	}


	public void setIdFilmHours(int idFilmHours) {
		this.idFilmHours = idFilmHours;
	}



	
	

	public Film getIDFilm() {
		return IDFilm;
	}


	public void setIDFilm(Film iDFilm) {
		IDFilm = iDFilm;
	}


	public Hour getIDHour() {
		return IDHour;
	}


	public void setIDHour(Hour iDHour) {
		IDHour = iDHour;
	}


	public Date getIDDate() {
		return IDDate;
	}


	public void setIDDate(Date iDDate) {
		IDDate = iDDate;
	}


	public FHD(int idFilmHours) {
		super();
		this.idFilmHours = idFilmHours;
		
	}
	
	public FHD() {
		super();
	}

	
}
