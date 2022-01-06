package com.entities;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="BasicData")

public class BasicData {
	
  @Id
  private String email;
  private String first;
  private String last;
  private String password;
  private String gender;
  private Date age;
  private String filename;
  private String field;
  
  
 public String getFilename() {
	return filename;
  	}
public void setFilename(String filename) {
	this.filename = filename;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getFirst() {
	return first;
}
public void setFirst(String first) {
	this.first = first;
}
public String getLast() {
	return last;
}
public void setLast(String last) {
	this.last = last;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public Date getAge() {
	return age;
}
public void setAge(Date age) {
	this.age = age;
}
public String getField() {
	return field;
}
public void setField(String field) {
	this.field = field;
}
public BasicData(String first, String last,String email, String password, String gender, Date age, String field) {
	super();
	this.first = first;
	this.last = last;
	this.email = email;
	this.password = password;
	this.gender = gender;
	this.age = age;
	this.field = field;
}
public BasicData() {
	super();
	// TODO Auto-generated constructor stub
}

public BasicData(String first, String last,String email, String password, String gender, Date age, String field,String filename) {
	super();
	this.first = first;
	this.last = last;
	this.email = email;
	this.password = password;
	this.gender = gender;
	this.age = age;
	this.field = field;
	this.filename=filename;
}
public BasicData(String filename) {
	super();
	this.filename = filename;
}
}


