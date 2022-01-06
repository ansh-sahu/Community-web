package com.servlets;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entities.BasicData;
import com.helper.dao;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
    String email=request.getParameter("email");  
    String password=request.getParameter("password"); 
   
    HttpSession session=request.getSession();  
    session.setAttribute("email",email);  
   BasicData b=new BasicData();
   //boolean b;
   dao dao=new dao(); 
   b=dao.check(email,password);
   System.out.println(b);
  if(b!=null)
  {
   response.sendRedirect("index.jsp");
    }
   
  else
  {
   out.println("<html><body><script>alert(\"Username and/or Password is incorrect.....\");\n" +
  "window.location='Login.jsp'\n</script></body><html>");
  
  }
	}
}