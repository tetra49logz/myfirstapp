package com.ticket.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="user_profile")
public class UserDTO 
{	
	@Id
	@Column(name="id")
	@GenericGenerator(name="myGen",strategy="increment")
	@GeneratedValue(generator="myGen")
	private int id;
	@Column(name="email")
	private String email;
	@Column(name="password")
	private String password;
	
	public UserDTO()
	{
		
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

	@Override
	public String toString() {
		return "UserDTO [email=" + email + ", password=" + password + "]";
	}
	
}
