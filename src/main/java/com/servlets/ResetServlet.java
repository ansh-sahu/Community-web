package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;

import com.entities.BasicData;
import com.helper.FactoryProvider;


public class ResetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ResetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String oldPassword = request.getParameter("oldpassword");
		//String newPassword = request.getParameter("newpassword");
		//String confirmPassword = request.getParameter("confirmpassword");
		
		try {
			String email=request.getParameter("email");  
			String password=request.getParameter("newpass"); 
			Date age=new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dob"));
			org.hibernate.Session s= FactoryProvider.getFactory().openSession();
			org.hibernate.Transaction tx=s.beginTransaction();
			
			
			//HttpSession session=request.getSession(false);  
	       //  if(session!=null){  
	        //String email=(String)session.getAttribute("email");  
	     //  System.out.println(email);
	         
	       	Query<BasicData> q=s.createQuery("update BasicData as b set b.password=:x  where b.email=:y and b.age=:z");
	       	q.setParameter("x",password);
	       	q.setParameter("y",email);
	       	q.setParameter("z",age);
	       	
				int status=   q.executeUpdate(); 
				if(status == 1) {
			   System.out.println(status);
				tx.commit();
				s.close();
				response.setContentType("text/html");
				PrintWriter pw = response.getWriter();
				pw.println("<html><body><script>alert(\"PASSWORD IS RESET SUCCESSFULLY.....\");\n" +
		      "window.location='profile.jsp'\n</script></body><html>");
				}else {response.setContentType("text/html");
				PrintWriter pw = response.getWriter();
					pw.println("<html><body><script>alert(\"Email or Birth Date not match.....\");\n" +
						      "window.location='Forgot_Pass.jsp'\n</script></body><html>");
				}
				
		
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	    
		
		
		/*Query query = s.createQuery("select e.password from BasicData e where e.email='Ram@gmail.com'");
		java.util.List results = query.list();
		System.out.println(query);
		String str=String.join(",", results);  
		//System.out.println(str);
		//if(str==oldPassword) {
			if(newPassword == confirmPassword) {
				System.out.println("Password is Correct");
			}
		//}
		else {
			if(newPassword == confirmPassword) {
				System.out.println("Password is Correct");
			}
			System.out.println("Your code is wrong");
		}
		
		*/ 
		
	

}
}