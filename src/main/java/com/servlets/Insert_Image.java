package com.servlets;

import java.io.File;
import java.io.FileInputStream;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import com.entities.BasicData;
import com.helper.FactoryProvider;

import javax.servlet.annotation.*;
public class Insert_Image extends HttpServlet{
private static final long serialVersionUID = 1L;
    
    public Insert_Image() {
        super();
        // TODO Auto-generated constructor stub
    }
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try {
	ServletFileUpload sf=new ServletFileUpload(new DiskFileItemFactory());
	List<FileItem> multifiles=sf.parseRequest(request);
	for(FileItem item:multifiles)
	{
		 HttpSession session=request.getSession();  
		 session.setAttribute("fileName",item.getName());  
		  
		item.write(new File("/home/dev/eclipse-workspace/QuestionTaker2/src/main/webapp/Uploded_Image/"+item.getName()));
	}
	System.out.print("file uploaded");
}
catch(Exception e)
{
System.out.print(e);	
}
	try {
		HttpSession hs=request.getSession(false);
		   if(hs!=null){  
			   String fileName=(String)hs.getAttribute("fileName");
			   String email=(String)hs.getAttribute("email");
		System.out.print(fileName);
		BasicData basicdata = new BasicData();

		
		
		
	
	org.hibernate.Session s= FactoryProvider.getFactory().openSession();
	org.hibernate.Transaction tx=s.beginTransaction();
	Query q=s.createQuery("update BasicData set filename=:n where email=:i");  
	q.setParameter("n",fileName);  
	q.setParameter("i",email);  
	int status=q.executeUpdate();  
	System.out.println(status);  
	tx.commit();   
	
//
//	try {
//    s.save(basicdata);
//	tx.commit();
//	}
//	catch(Exception e)
//	{
//		System.out.print(e);
//	}
	s.close();
	response.setContentType("text/html");
	PrintWriter pw = response.getWriter();
	pw.println("<html><body><script>alert(\"Your Data is Recorded\");\n" +
  "window.location='profile.jsp'\n</script></body><html>");
	
}
	}
		   catch(Exception e)
{
	e.printStackTrace();
}
//request.getRequestDispatcher("ImageServlet");// sendRedirect("ImageServlet");
}
}