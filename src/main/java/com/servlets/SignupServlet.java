package com.servlets;
import com.entities.*;

import java.text.SimpleDateFormat;  
import com.helper.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
      
      try {
    	  String first=request.getParameter("fname"); 
          String last=request.getParameter("lname");
          String email=request.getParameter("email");  
          String password=request.getParameter("pass"); 
          String gender=request.getParameter("Gender");  
          Date age=new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("age"));  
 
          String field=request.getParameter("field");  
         
			BasicData basicdata = new BasicData(first,last,email,password,gender,age,field);
			
			//System.out.println(question.getId()+""+question.getTitle());
			//save data in database
			
			org.hibernate.Session s= FactoryProvider.getFactory().openSession();
			org.hibernate.Transaction tx=s.beginTransaction();
			s.save(basicdata);
			tx.commit();
			s.close();
			response.setContentType("text/html");
			PrintWriter pw = response.getWriter();
			pw.println("<html><body><script>alert(\"Your Data is Recorded\");\n" +
          "window.location='Login.jsp'\n</script></body><html>");
			
		}catch(Exception e)
		{
			PrintWriter pw = response.getWriter();
			pw.println("<html><body><script>alert(\"User already exist...\");\n" +
			          "window.location='UserSignup.jsp'\n</script></body><html>");
			e.printStackTrace();
		}
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      

	}
	

}