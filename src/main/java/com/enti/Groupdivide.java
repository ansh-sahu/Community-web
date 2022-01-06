package com.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Groupdivide")
public class Groupdivide {
	@Id
	private int s_no;
	private int u_id;
	private int q_id;
	
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	private String g_name;
	public int getU_id() {
		return u_id;
	}
	public Groupdivide() {
		super();
		// TODO Auto-generated constructor stub
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public int getQ_id() {
		return q_id;
	}
	public void setQ_id(int q_id) {
		this.q_id = q_id;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public Groupdivide(int u_id, int q_id, String g_name) {
		super();
		this.u_id = u_id;
		this.q_id = q_id;
		this.g_name = g_name;
	}
	
	

}
