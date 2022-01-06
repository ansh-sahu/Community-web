package com.entities;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Question")
public class Question {
	@Id
	private int q_id;
	private String location;
	private String field;
	private String content;
	private String email;
	private String g_name;
	public Question(String location, String field, String content, String email, Date addedDate) {
		super();
		
		this.location = location;
		this.field = field;
		this.content = content;
		this.email = email;
		this.addedDate = addedDate;
	}
	public Question(String location,String g_name, String field, String content, String email, Date addedDate) {
		super();
		
		this.location = location;
		this.g_name=g_name;
		this.field = field;
		this.content = content;
		this.email = email;
		this.addedDate = addedDate;
	}
	
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	private Date addedDate;
	public Question() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getQ_id() {
		return q_id;
	}
	public void setQ_id(int q_id) {
		this.q_id = q_id;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	
}