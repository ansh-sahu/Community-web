package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entities.Question;
import com.helper.FactoryProvider;



public class SaveQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SaveQuestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String location = request.getParameter("location");
			String content=request.getParameter("Query");
			String field=request.getParameter("domain");
	
			if(location.equals("Group"))
			{ 
				HttpSession QueSession=request.getSession();  
				QueSession.setAttribute("field",field);
				QueSession.setAttribute("location", location);
				QueSession.setAttribute("content",content);		    
				response.sendRedirect("Group1.jsp");
			}
			else {
		    HttpSession hs=request.getSession(false);  
	   if(hs!=null){  
		    String email=(String)hs.getAttribute("email");
			//String email="abc@gmail.com";
			Question question = new Question(location,field,content, email,new Date());
			
			
			org.hibernate.Session s= FactoryProvider.getFactory().openSession();
			org.hibernate.Transaction tx=s.beginTransaction();
			System.out.print("connected");
			s.save(question);
			tx.commit();
			s.close();
			
			
			
			
			
			
			
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<html><body><script>alert(\"Question Added Successfully\");\n" +
            "window.location='post.jsp'\n</script></body><html>");
//		   }
//		   else
//		   {
//			  response.sendRedirect("Login.jsp");
//					      
//		   }
	   }	}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}