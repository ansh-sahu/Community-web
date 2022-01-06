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
<title>Fetch Question</title>
<%@include file="js_css.jsp"%>

 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/navstyle.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://kit.fontawesome.com/d4d53379c7.js" crossorigin="anonymous"></script>
    <title>Web|Query</title>


</head>
<body>
<!--  
<%@include file="navbar.jsp"%>

-->
<div class="navbar">
        <div class="nav-content">
            <div class="nav-head font_medium_large">
                <a href="">Community Web</a>
            </div>
            <div class="nav-items">
                <ul>
                    <li class="nav_home"><a href="">Home</a>
                        <div class="home">
                            <ul>
                                <li><a href="">About</a></li>
                                <li><a href="">Developers</a></li>
                                <li><a href="">Contact</a></li>
                            </ul>  
                        </div>
                    </li>
                    <li class="nav_main"><a href="">Main</a>
                        <div class="main">
                            <ul>
                                <li><a href="">Questions</a></li>
                                <li><a href="">Group</a></li>
                                <li><a href="">Help</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav_search"><a href=""><i class="material-icons">search</i></a></li>
                    <li class="nav_user"><a href=""><i class="material-icons">account_circle</i></a></li>
                </ul>
            </div>
        </div>
    </div>
<div class="review-container">
<br>
<h1 class="text-uppercase">All Question</h1>
<div class="row">
 <div class="col-12">
  <% 
	Session s = FactoryProvider.getFactory().openSession();
	Query q = s.createQuery("from Question");
	List<Question> list=q.list();
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
<%} %>
    
    
    
    
    <a href="add_answer.jsp?question_id=<%= question.getQ_id() %>" class="btn btn-primary">Answer it</a>
    
  </div>
</div>
<% 
} 
s.close();
%> 
 </div>
</div>
</div>
</body>
</html>