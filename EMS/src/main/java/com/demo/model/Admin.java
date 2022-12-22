package com.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;



@Entity
public class Admin {
	private String fullname;
	@Id
	private String username;
	private String password;
	private String email;
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "AppUser [fullname=" + fullname + ", username=" + username + ", password=" + password + ", email="
				+ email + "]";
	}


	

}