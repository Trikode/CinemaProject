package com.emit.bean;



public class Film {
	private int idfilms;  
	private String title;
	private String summary;  
	private String lenght;
	private String image;
	private String trailer;
	
	public int getIdfilms() {
		return idfilms;
	}
	public void setIdfilms(int idfilm) {
		this.idfilms = idfilm;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getLenght() {
		return lenght;
	}
	public void setLenght(String lenght) {
		this.lenght = lenght;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	 public String getTrailer() {
		return trailer;
	}
	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}
	@Override
	    public String toString() {
	        return "{" +
	                "title='" + title + '\'' +
	                ", image='" + image + '\'' +
	                // include other relevant fields here
	                '}';
	    }
	
	
	public Film(int idfilms, String title, String summary, String lenght, String image, String trailer) {
		super();
		this.idfilms = idfilms;
		this.title = title;
		this.summary = summary;
		this.lenght = lenght;
		this.image = image;
		this.trailer = trailer;
	}
	public Film() {
		super();
	}
	


	
}
