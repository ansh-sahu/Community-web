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

public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
   
	String que=request.getParameter("searchQue");  
	//String referrer = request.getHeader("referer");
	//System.out.println("File name : " + referrer);
   
    HttpSession session=request.getSession();  
    session.setAttribute("que",que);  
  if(que!=null)
  {
	  response.sendRedirect("SearchQuestion.jsp");
  }
   
  else
  {
   out.println("<html><body><script>alert(\"Search NOt Found...\");\n" +
  "window.location='index.jsp'\n</script></body><html>");
 
 
  }
	}
}