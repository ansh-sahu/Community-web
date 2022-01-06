package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;

public class LogoutServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	   
    public LogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
response.setContentType("text/html");  
PrintWriter out=response.getWriter();  

//request.getRequestDispatcher("home.jsp").include(request, response);  

HttpSession session=request.getSession();  
session.invalidate();  

System.out.print("You are successfully logged out!");  
response.sendRedirect("index.jsp");
//out.close();  
	}
	}