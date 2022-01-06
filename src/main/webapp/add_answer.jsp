<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@page import="java.time.format.DateTimeFormatter" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Answers</title>

<link rel="stylesheet" href="css/NewStyle.css">
</head>
<!-- 
<body class="ans-body">
<%@include file="navbar.jsp"%>
<section class="ans-container">
<div class="row">
 <div class="col-12">


<form action="Saveanswer" method="post">
<div class="card-body">
  	<h4 class="card-text"</h4>
    <h5 class="card-text">Answers</h5>
    <br/>
    <br/>
  </div>
  <div class="form-group">
  > 
  </div>
  
  
  
  
  <div class="form-group">
    <label for="title">Rating</label>
    <input name="rating" 
    required type="text" 
    class="form-control" 
    id="rating" aria-describedby="emailHelp" placeholder="Enter Here"/>
  </div>
  <div class="form-group">
    <label for="content">Answer</label>
    <textarea name="answer"
    required id="content"
     class="form-control" 
     style="height:300px"></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
  
  </div>
  </form>
</div>
</div>

-->

<body class="ans-body">
<%@include file="navbar.jsp"%>
<section class="ans-container">
<br>
<div class="row">
 <div class="col-12">
  <% 
 // int q_id=(Integer)hs.getAttribute("q_id");
   int q_id= Integer.parseInt(request.getParameter("question_id"));
	Session s = FactoryProvider.getFactory().openSession();
	Query q = s.createQuery("from Question where q_id=:x");
	q.setParameter("x",q_id);
	 HttpSession hs1=request.getSession();  
	    hs1.setAttribute("q_id",q_id);  
	  
	List<Question> list=q.list();
	for(Question question:list){
%>
 
  
<div class="card mt-3">
  <div class="card-body">
	<h1 class="font_large"><%= question.getContent() %></h1>
	</div>
	</div>
	
    <h3>Answers</h3>
    <br/>
    <br/>
    <%	Query qr = s.createQuery("from Answer where q_id=:x");
    qr.setParameter("x",question.getQ_id());
    List<Answer> lis=qr.list();
for(Answer ans:lis){
	%>    
<div class="card mt-3">
	<div class="card-body">
	<p class="card-text"><%=ans.getAnswer() %></p>
	<img src="img/LikeButton.jpg" class="card-text" alt="Image Not Found" width="70" height="70">
	
	
	</div>
	</div>
<%}
}
	s.close();
%>	
    
  </div>
  
<div class="card mt-3">
	<div class="card-body">
  <form action="Saveanswer" method="post">

  <input type="text" name="rating" placeholder="rating">
  <td><td>
  <input type="text" name="answer" placeholder="Your Answer">
  <td>
  <input type="Submit" name="submit">
 </form>
 </div>
 </div>
  
  
</div>


</section>
</body>


























</html>