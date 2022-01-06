<%@page import="java.awt.image.BufferedImage"%>
<%@page language="java" contentType="text/html; 
charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="js_css.jsp"%>
<title>Details</title>
</head>
<body>
 <div class="container">
  <%@include file="navbar.jsp"%>
<br><br>
<h1>Personal Information</h1>
<br>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Gender</th>
      <th scope="col">Age</th>
      <th scope="col">Field</th>
      <th scope="col">File Name</th>
    </tr>
  </thead>
 <tbody>
    <tr>
 <% 
    HttpSession hs=request.getSession(false);  
   if(hs!=null){  
    String email=(String)hs.getAttribute("email");
	Session s = FactoryProvider.getFactory().openSession();
	Query q = s.createQuery("from BasicData where email=:x");
	q.setParameter("x",email);
	List<BasicData> list= q.list();
	for(BasicData basicdata:list){
 %>
   
      <td> <%= basicdata.getFirst()+basicdata.getLast() %></td>
      <td> <%= basicdata.getEmail() %></td>
      <td> <%= basicdata.getPassword() %></td>
      <td> <%= basicdata.getGender() %></td>
      <td> <%= basicdata.getAge() %></td>
      <td> <%= basicdata.getField() %></td>
      <td> <%= basicdata.getFilename() %></td>
  
    </tr>
   
</tbody>
</table>


<script>
var password = document.getElementById("new_password")
, confirm_password = document.getElementById("confirm_password");

function validatePassword(){
if(password.value != confirm_password.value) {
  confirm_password.setCustomValidity("Passwords Don't Match");
} else {
  confirm_password.setCustomValidity('');
}
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>

<form action= "ResetServlet" method="Post">

<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Reset Password</button>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Reset Password</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form class="pure-form">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Old Password:</label>
            <input name="oldpassword" type="text" class="form-control" id="old_password" required>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">New Password</label>
            <input name="newpassword" type="text" class="form-control" id="new_password"
             required>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Confirm Password</label>
            <input name="confirmpassword" type="text" class="form-control" id="confirm_password" required>
          </div>
       </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-primary" class="pure-button pure-button-primary">Reset</button>
      </div> 
      
    </div>
  </div>
</div>    
</form>
</div>
<br><div class="Image-class">
<form action="Insert_Image" method="POST" enctype="multipart/form-data">
<label>Choose Image</label>
<input type="file" name="file">
<button type="submit" class="btn btn-primary">Upload</button>
</form>
</div>
<div class="Image-Icon">
<img src="<%=request.getContextPath()%>/Uploded_Image/<%=basicdata.getFilename() %>">
</div>
 
 <div>
 <p></p>
 
 </div>
 
<div class="row">
 <div class="col-12">
 
  
<%
 }
	Query qr = s.createQuery("from Answer where email=:x");
            		qr.setParameter("x",email);
            		List<Answer> lis= qr.list();
            		
            		int CountQue=1;
            		for(Answer Answer:lis){
            			int CountAns=1;
%>

<div class="card mt-3">
	<div class="card-body">
 <% 
	Query qry = s.createQuery("from Question where q_id=:x");
	qry.setParameter("x",Answer.getQ_id());
	List<Question> que= qry.list();
	
	for(Question Question:que){
	
	%>
	<h2  class="card-text"><%=CountQue%> <%=Question.getContent() %></h2>
	<%
	CountQue++;
	} %>
	<p  class="card-text"><%=CountAns %> <%= Answer.getAnswer() %></p>
	
</div>
 </div>
 
<%  
CountAns++;	}
s.close();
            		 } %>

 </div>
 </div>            		 
              		 
            		 
            		 
            		 
            		 
            		 
            		 
            		 
            		 
            		 
            		 
</body>
</html>