package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="member")

public class Group {
  
	public Group() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Group(String g_name,String g_member) {
		super();
		this.g_name = g_name;
		this.g_member = g_member;
		}

	public Group(int g_id,String g_name,String g_member) {
		super();
		this.g_id=g_id;
		this.g_name = g_name;
		this.g_member = g_member;
		}
	@Id
	private int g_id;
	private String g_name;
	private String g_member;
	
	public int getG_id() {
		return g_id;
	}
	public void setG_id(int g_id) {
		this.g_id = g_id;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public String getG_member() {
		return g_member;
	}
	public void setG_member(String g_member) {
		this.g_member = g_member;
	}
	



}
