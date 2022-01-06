package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entities.Group;
import com.entities.Question;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class CreateGroupServlet
 */
public class CreateGroupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateGroupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			String Gname=request.getParameter("Gname");
			String GroupCheck="";
			String checkbox[]=request.getParameterValues("checkbox");
			for(int i=0;i<checkbox.length;i++)
			{
				GroupCheck+=checkbox[i]+" ";
			}
			String sub[]=GroupCheck.split(" ");
			System.out.println(GroupCheck);
			System.out.println(Gname);
			      Group gr=new Group(Gname,GroupCheck);
			
			org.hibernate.Session s= FactoryProvider.getFactory().openSession();
			org.hibernate.Transaction tx=s.beginTransaction();
			s.save(gr);
			tx.commit();
			s.close();
			
			
			
			response.setContentType("text/html");
			PrintWriter pw = response.getWriter();
			pw.println("<html><body><script>alert(\"Group is Created\");\n" +
          "window.location='ExistingGroup.jsp'\n</script></body><html>");
			
			
	    
		}catch(Exception e)
		{
			System.out.print(e);
		}
	
		
	}

}