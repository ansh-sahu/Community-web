package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entities.Answer;
import com.entities.Question;
import com.helper.FactoryProvider;

public class Saveanswer extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Saveanswer() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			

			
			 HttpSession hs=request.getSession(false); 
			 //HttpSession session=request.getSession(false);
			   if(hs!=null){  
				   int q_id=(Integer) hs.getAttribute("q_id");
			    String email=(String)hs.getAttribute("email"); 
			    if(email==null)
			    {
			    	email="empty@gmail.com";
			    }
			   
			int rating=Integer.parseInt(request.getParameter("rating"));
			String ans=request.getParameter("answer");
			
			System.out.println(q_id);
			System.out.println(rating);
			System.out.println(ans);
			System.out.println(email);
			
			Answer answer = new Answer(q_id,rating,email,ans);
			
			//System.out.println(question.getId()+""+question.getTitle());
			//save data in database
			
			org.hibernate.Session s= FactoryProvider.getFactory().openSession();
			org.hibernate.Transaction tx=s.beginTransaction();
			s.save(answer);
			tx.commit();
			s.close();
			   }
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<html><body><script>alert(\"Answer Added Successfully\");\n" +
            "window.location='FetchData1.jsp'\n</script></body><html>");
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	}