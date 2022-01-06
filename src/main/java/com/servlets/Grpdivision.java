package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.entities.*;

import org.hibernate.Session;

import com.helper.FactoryProvider;

/**
 * Servlet implementation class Grpdivision
 */
public class Grpdivision extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession hs=request.getSession(false);  
		   if(hs!=null){  
		    String content=(String)hs.getAttribute("content");
		    
		    String email="abc@gmail.com";

			Session s = FactoryProvider.getFactory().openSession();
			Query q = s.createQuery("from question where content=:x");
			q.setParameter("x",content);
			List<Question> list= ((org.hibernate.query.Query) q).list();
			for(Question Question:list){
		 
		  Question.getQ_id();
			}
	
		
	
	}
	

}
}