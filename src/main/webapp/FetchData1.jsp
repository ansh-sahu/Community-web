<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.SQLQuery"%>;
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@page import="java.util.Iterator " %>
<%@page import="org.hibernate.Criteria" %>
<%@page import="java.time.format.DateTimeFormatter" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/NewStyle.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://kit.fontawesome.com/d4d53379c7.js" crossorigin="anonymous"></script>
    <title>Review-Query</title>

</head>

<body class="review-body">
<%@include file="navbar.jsp"%>
<section class="review-container">
<h1 class="font_large">All Question</h1>
<br>
<div class="row">
 <div class="col-12">
  <% 
  
  //from Eg.Cat as cat 
  //inner join cat.Mate as mate
  //left outer join cat.Kittens as kitten

  
  	
	Session s = FactoryProvider.getFactory().openSession();
	Query q = s.createQuery("Select email,location,content,q_id from Question where (q_id in(SELECT q_id from Groupdivide where g_name in (SELECT g_name from Group WHERE g_member like '%jojo%') )) or location='public' order by addedDate desc");	
	List<Object> results = q.list();
	Iterator iterator =results.iterator();
while(iterator.hasNext())
{
	Object[] obj=(Object[])iterator.next();
%>
<div class="card mt-3">
<div  class="card-header">
  <img class="card-img-top m-4" style="max-width:80px;" src="img/note.png" alt="Card image cap">
  <p class="card-date"><%= obj[0] %></p>
  </div>
  <div class="card-body">
  	<p class="card-title" ><%= obj[1]%></p>
    <h4 class="card-text" style="font-size:20px;"> <%= obj[2]%></h4><br>
    <h5 class="card-text" style="font-size:20px;">Answers : </h5>
   
  
    <%	Query qr = s.createQuery("from Answer where q_id=:x");
    qr.setParameter("x",obj[3]);
    List<Answer> lis=qr.list();
    if(lis.size()>=1)
    {
    if(lis.size()>=3)
    {
  lis=lis.subList(0, 3);
    }
for(Answer ans:lis){
	%>  <br>  
	<p class="card-text" style="font-size:20px;"><%=ans.getAnswer() %></p>
<%}
}
    else if(lis.size()==0)
{
%>	
<p class="card-text" style="font-size:20px;">This Question Not Answered Yet</p>
<%} %> 
    <a href="add_answer.jsp?question_id=<%= obj[3]%>" class="btn btn-primary" style="font-size:20px;">Answer it</a>
    
  </div>
</div>
<% 
} 
s.close();
%> 
 </div>
</div>


</section>
 <section class="footer foot-background light-color" id="id-footer">
        <div class="foot-head " style="margin-top:250px;">
            <h1 class="foot-items font_medium_large">Community Web</h1>
            <h2 class="foot-items">&copy; All rigths reserved</h2>
            <h2 class="foot-items">Contact : +919926385892</h2>
            <h2 class="foot-items">Mail : web-community@community.com</h2>
            <div class="social-media">
                <i class="fab fa-facebook fa-3x"></i>
                <i class="fab fa-instagram fa-3x"></i>
                <i class="fab fa-twitter fa-3x"></i>
            </div>
        </div>
    </section>
</body>

</html>