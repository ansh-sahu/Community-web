<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="js_css.jsp"%>
    <title>Add Question</title>
</head>
<body>
<div class="container">
<%@include file="navbar.jsp"%>
<br>
<form action="SaveQuestion" method="post">
  <div class="form-group">
    <label for="title">Location</label>
    <input name="location" 
    required type="text" 
    class="form-control" 
    id="title" aria-describedby="emailHelp" placeholder="Enter Here"/>
  </div>
  <div class="form-group">
    <label for="content">Question Content</label>
    <textarea name="content"
    required id="content" placeholder="Enter your content here..."
     class="form-control" 
     style="height:300px"></textarea>
  </div>
  <div class="container text-center">
  <%
HttpSession hs1=request.getSession(false);  
 if(hs1.getAttribute("email")!=null){ %>
  <button type="submit" class="btn btn-primary">Add</button>
<%}
 else
{%>
	<a href="Login.html" class="btn btn-primary">Login</a>
	<%}%>

</div></form>
</div>
</body>
</html>