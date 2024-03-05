package com.emit.bean;


public class Role {
	private int idRoles;  
	private String role;
	
	
	

	public int getIdRoles() {
		return idRoles;
	}


	public void setIdRoles(int idRoles) {
		this.idRoles = idRoles;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


	public Role(int idRoles, String role) {
		super();
		this.idRoles = idRoles;
		this.role = role;
	}

	public Role() {
		super();
	}

}
