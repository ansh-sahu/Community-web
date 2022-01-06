package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entities.BasicData;
import com.entities.Help;
import com.helper.FactoryProvider;

public class QueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public QueryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
	    	  
	    	  HttpSession hs=request.getSession(false);  
	    	   if(hs!=null){  
	    	    String email=(String)hs.getAttribute("email");
	    	    System.out.println("Email : "+email);
	    	    String query=request.getParameter("helparea"); 
				Help help = new Help(email,query);
				
				//System.out.println(question.getId()+""+question.getTitle());
				//save data in database
				
				org.hibernate.Session s= FactoryProvider.getFactory().openSession();
				org.hibernate.Transaction tx=s.beginTransaction();
				s.save(help);
				tx.commit();
				s.close();
				response.setContentType("text/html");
				PrintWriter pw = response.getWriter();
				pw.println("<html><body><script>alert(\"Your Data is Recorded\");\n" +
	          "window.location='help.jsp'\n</script></body><html>");
	    	   }	
			}catch(Exception e)
			{
				e.printStackTrace();
			}
	}

}