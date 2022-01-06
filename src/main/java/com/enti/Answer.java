package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Answer")

public class Answer {
  

	
	public Answer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Answer( int q_id, int rating,String answer) {
		super();
	
		this.q_id = q_id;
		this.answer = answer;
		this.rating = rating;
	}
	
	public int getQ_id() {
		return q_id;
	}
	public void setQ_id(int q_id) {
		this.q_id = q_id;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	
	public int getA_id() {
		return a_id;
	}
	public void setA_id(int a_id) {
		this.a_id = a_id;
	}
	public Answer( int q_id, int rating, String email, String answer) {
		super();
		this.q_id = q_id;
		this.answer = answer;
		this.rating = rating;
		this.email = email;
	}
	@Id
	private int a_id;
	private int q_id;
	private String answer;
	private int rating;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	private String email;
}
