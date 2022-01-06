package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Help")


public class Help {
	@Id
private String email;
private String query;
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getQuery() {
	return query;
}
public void setQuery(String query) {
	this.query = query;
}
public Help(String email, String query) {
	super();
	this.email = email;
	this.query = query;
}
public Help() {
	super();
	// TODO Auto-generated constructor stub
}

}
