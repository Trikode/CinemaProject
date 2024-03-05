package com.emit.bean;

public class User2 {
	private int idusers;  
	private String first_name;
	private String last_name;  
	private String email;
	private String password;
	private int IDRole;
	private int num_attempts;
	private boolean active;
	
	
	


	public int getIdusers() {
		return idusers;
	}



	public void setIdusers(int iduser) {
		this.idusers = iduser;
	}



	public String getFirst_name() {
		return first_name;
	}



	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}



	public String getLast_name() {
		return last_name;
	}



	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public int getIDRole() {
		return IDRole;
	}



	public void setIDRole(int iDRole) {
		IDRole = iDRole;
	}



	public int getNum_attempts() {
		return num_attempts;
	}



	public void setNum_attempts(int num_attempts) {
		this.num_attempts = num_attempts;
	}



	public boolean isActive() {
		return active;
	}



	public void setActive(boolean active) {
		this.active = active;
	}



	public User2(int idusers, String first_name, String last_name, String email, String password, int IDRole,
			int num_attempts, boolean active) {
		super();
		this.idusers = idusers;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.password = password;
		this.IDRole = IDRole;
		this.num_attempts = num_attempts;
		this.active = active;
	}



	public User2() {
		super();
	}
}
