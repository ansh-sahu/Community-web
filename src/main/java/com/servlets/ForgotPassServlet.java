package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.FactoryProvider;

/**
 * Servlet implementation class ForgotPassServlet
 */
public class ForgotPassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPassServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {

			String email=request.getParameter("email");
			Date date=new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date"));
		System.out.print(email);
		System.out.print(date);
		
		org.hibernate.Session s= FactoryProvider.getFactory().openSession();
		org.hibernate.Transaction tx=s.beginTransaction();
		Query q=s.createQuery("from Question where email=:x");
		q.setParameter("x",email);
		System.out.print("YES");
		s.close();
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		pw.println("<html><body><script>alert(\"Your Data is Recorded\");\n" +
      "window.location='Login.jsp'\n</script></body><html>");
		
		
		
		
		
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}