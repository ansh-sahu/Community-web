package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entities.Question;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveQueGroup
 */
public class SaveQueGroup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveQueGroup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String GroupCheck="";
		String Grpbox[]=request.getParameterValues("groups");
		
		for(int i=0;i<Grpbox.length;i++)
		{
			GroupCheck+=Grpbox[i]+" ";
		}
		HttpSession hs=request.getSession(false);  
		   if(hs!=null){  
		    String content=(String)hs.getAttribute("content");
		    String field=(String)hs.getAttribute("field");
		    String location=(String)hs.getAttribute("location");
		    
		    String email="abc@gmail.com";
			Question question = new Question(location,GroupCheck,field,content, email,new Date());
			
			
			org.hibernate.Session s= FactoryProvider.getFactory().openSession();
			org.hibernate.Transaction tx=s.beginTransaction();
			System.out.print("connected");
			s.save(question);
			tx.commit();
			
			s.close();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<html><body><script>alert(\"Question Added Successfully\");\n" +
            "window.location='Grpdivision.jsp'\n</script></body><html>");
//		   
		    
		  
		   
		   
		   
		   }
			
	}

}