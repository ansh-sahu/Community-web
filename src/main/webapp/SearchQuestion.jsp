<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Question</title>
<%@include file="js_css.jsp"%>
<%@include file="navbar.jsp"%>
</head>
<body>
<br><br><br><br><br><br><br><br>
<div class="container">
<br>
<h1 class="text-uppercase">Searched Question</h1>
<div class="row">
 <div class="col-12">
   <% 
    HttpSession hs=request.getSession(false);  
   if(hs!=null){  
    String que=(String)hs.getAttribute("que");  
	Session s = FactoryProvider.getFactory().openSession();
	Query q = s.createQuery("from Question where content like concat('%',:x,'%')");
	q.setParameter("x",que);
	List<Question> list= q.list();
	if(list.size()>=1)
	{
	for(Question question:list){
 %>
   
<div class="card mt-3">
  <img class="card-img-top m-4" style="max-width:80px;" src="img/note.png" alt="Card image cap">
  <div class="card-body">
    <p class="card-title"><%= question.getLocation() %></p>
    <h4 class="card-text"> <%= question.getContent() %></h3>
     <h5 class="card-text">Answers</h5>
    <br/>
    <br/>
    <%	Query qr = s.createQuery("from Answer where q_id=:x");
    qr.setParameter("x",question.getQ_id());
    List<Answer> lis=qr.list();
    if(lis.size()>=1)
    {
    if(lis.size()>=3)
    {
  lis=lis.subList(0, 3);
    }
for(Answer ans:lis){
	%>    
	<p class="card-text"><%=ans.getAnswer() %></p>
<%}
}
    else if(lis.size()==0)
{
%>	
<p class="card-text">This Question Not Answered Yet</p>
<%}
    
    
HttpSession hs1=request.getSession(false);  
 if(hs1.getAttribute("email")!=null){ %>
    <a href="add_answer.jsp?question_id=<%= question.getQ_id() %>" class="btn btn-primary">Answer it</a>
    <% }
    else
    {%>
    	<a href="Login.jsp" class="btn btn-primary">Answer it</a>
    <%
    }%>
  </div>
</div>
<%
}
	}
	else
	{

		out.println("<html><body><script>alert(\"Search NOt Found... \");\n" +
				  "window.location='index.jsp'\n</script></body><html>");
		
	}
	s.close();   
	}
 %>
 </div>
</div>
</div>
</body>
</html>