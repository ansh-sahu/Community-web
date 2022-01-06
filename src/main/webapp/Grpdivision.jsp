<%@page import="com.entities.Question"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.*"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Part of Grps</title>
</head>
<body>
<%@include file="navbar.jsp"%>
<br><br><br><br><br><br><br><br><br><br><br><br>
<% response.setContentType("text/html");
    PrintWriter pw = response.getWriter();
pw.println("<html><body><script>alert(\"Your Data is Recorded\");\n" +
"window.location='post.jsp'\n</script></body><html>");
    HttpSession hs=request.getSession(false);  
   if(hs!=null){  
	   String email=(String)hs.getAttribute("email");
    String content=(String)hs.getAttribute("content");
	Session s = FactoryProvider.getFactory().openSession();

	Query q = s.createQuery("from Question where content=:x");
	q.setParameter("x",content);
	List<Question> list= q.list();
	for(Question Question:list){
 %>
   
      <h1> <%=Question.getQ_id()%></h1>
      <br>
      <h1><%=Question.getEmail()%></h1>
      <% String sub[]=Question.getG_name().split(" ");
      try{
      for(int i=0;i<sub.length;i++)
      {     

      org.hibernate.Transaction tx=s.beginTransaction();
      Groupdivide g=new Groupdivide(1,Question.getQ_id(),sub[i]);
      s.save(g);
      tx.commit();
      s.clear();
      }
      }catch(Exception e)
      {
    	  System.out.print(e);
      }
      }
	s.close();
	}
	%>
</body>
</html>