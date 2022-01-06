<%@page import="java.awt.image.BufferedImage"%>
<%@page language="java" contentType="text/html; 
charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@page import="java.util.Iterator " %>
<%@page import="org.hibernate.Criteria" %>
<%@page import="java.time.format.DateTimeFormatter" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="css/NewStyle.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      <script src="https://kit.fontawesome.com/d4d53379c7.js" crossorigin="anonymous"></script>
      <style>/* ################################ profile #################### */

.profile-body{
    height: 100vh;
    background-color: #e4f0e6;
}

.profile-container{
  position: relative;
    width: 80%;
     height: 80vh; 
    margin: 0 auto;
    top: 15%;
   border: 2px solid red; 
    padding-top: 6em;
    background: white;
    border-radius: 20px; 
}

.profile-img-name{
    border:2px solid white; 
    width: 60%;
    margin: 0 auto;
}

.profile-container .profile-img-name .profile-img{
    /* border: 2px solid lightcoral; */
    width: 200px;
    height: 201px;
    border-radius: 50%;
    margin: 0 auto;
}

.profile-container .profile-img-name .profile-img img{
    width: 200px;
    height: 200px;
    object-fit:cover;
    border-radius: 50%;
    border: 2px solid lightcoral;
}

.profile-container .profile-img-name h1{
    font-size: 2.0rem;
    padding: 2em 0;
    text-align: center;
}
.profile-container .profile-img-name .flex-info {
display:flex ;
flex-wrap:wrap;
}
.profile-container .profile-img-name .flex-info h1{
width:50%;
font-size:28px;

}
.profile-container .profile-img-name .Image-class input[type='file'],
.profile-container .profile-img-name .Image-class button{
border-radius:20px;
padding:1em 2em ;
display:inline-block;
border:2px solid lightcoral;
}
.profile-container .profile-img-name .Image-class a{
border-radius:20px;
padding:1em 2em ;
display:inline-block;
border:2px solid lightcoral;
font-size:20px;
text-decoration:none;
}

      </style>
      <script type="text/javascript">
        function display_search(){
          var x=document.getElementsByClassName("search-bar")[0];
          if (x.style.display === "none"){
              x.style.display = "block";
          }
          else{
              x.style.display = "none"
          }
        }

        function display_user(){
          var x=document.getElementsByClassName("user-control")[0];
          if (x.style.display === "none"){
              x.style.display = "block";
          }
          else{
              x.style.display = "none";
          }
        }
  </script>
<title>Profile|Web</title>
</head>
<body class="profile-body">
    <div class="navbar">
        <div class="nav-content">
            <div class="nav-head font_medium_large">
                <a href="">Community Web</a>
            </div>
            <div class="nav-items">
                <ul>
                    <li class="nav_home"><a href="index.jsp">Home</a>
                        <div class="home">
                            <ul>
                                <li><a href="index.jsp#id-about">About</a></li>
                                <li><a href="index.jsp#id-developers">Developers</a></li>
                                <li><a href="index.jsp#id-footer">Contact</a></li>
                            </ul>  
                        </div>
                    </li>
                    <li class="nav_main"><a href="javascript:void()">Main</a>
                        <div class="main">
                            <ul>
                                <li><a href="post.jsp">Questions</a></li>
                                <li><a href="FetchData1.jsp">Review</a></li>
                                <li><a href="help.jsp">Help</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav_search"><a href="javascript:void()" onclick="display_search();"><i class="material-icons">search</i></a>
                        <div class="search-bar">
                            <form action="SearchServlet">
                                <input type="text" name="searchQue" placeholder="Search">
                            </form>
                        </div>
                    </li>
                    <li class="nav_user"><a href="javascript:void()" onclick="display_user();"><i class="material-icons">account_circle</i></a>
                        <div class="user-control">
                            <a href="profile.jsp" id="a">Profile</a>
                            <a href="LogoutServlet" id="b">Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="profile-container">

     <h1  style="font-size:38px;display:inline;border-bottom:2px solid lightcoral;margin-left:46%;">Profile</h1>
        <br><br><br><br><div class="profile-img-name">
                <%
    HttpSession hs=request.getSession(false);  
   if(hs!=null){  
    String email=(String)hs.getAttribute("email");
    String fileName=(String)hs.getAttribute("fileName");
    
    
    System.out.println("Email :::::::::::" + email);
	Session s = FactoryProvider.getFactory().openSession();
	Query q = s.createQuery("from BasicData where email=:x");
	q.setParameter("x",email);
	List<BasicData> list= q.list();
	for(BasicData basicdata:list){
		 %>
            <div class="profile-img">
<%--                  <img src="/home/dev/eclipse-workspace/QuestionTaker2/src/main/webapp/Uploded_Image/"<%=fileName %> alt="no img"> 
 --%>                
 <img src="<%=request.getContextPath()%>/Uploded_Image/<%=basicdata.getFilename() %>"> 
            
            </div>
            
   
	<br><div class="Image-class" style="text-align:center">
<form action="Insert_Image" method="POST" enctype="multipart/form-data">
<input type="file" name="file">
<button type="submit" class="btn btn-primary">Upload</button><br><br><br>
   &ensp;&ensp;&ensp;&ensp;
   <a href="LogoutServlet" id="b" >Logout</a>

</form>
</div>

<div class="flex-info">
            <h1>Name : <%= basicdata.getFirst()+" "+basicdata.getLast() %></h1>
            <h1>Email : <%= basicdata.getEmail() %></h1>
            <h1>Gender :<%= basicdata.getGender() %></h1>
            <h1>Age : <%= basicdata.getAge() %></h1>
</div>
	
    </div> </div> 




<section class="review-container">
<h1 class="font_large">Posted Question</h1>
<br>
<div class="row" style="background:white;">
 <div class="col-12">
  <% 
  
  //from Eg.Cat as cat 
  //inner join cat.Mate as mate
  //left outer join cat.Kittens as kitten

  
  	
	Session sp = FactoryProvider.getFactory().openSession();
	Query qp = sp.createQuery("Select email,location,content,q_id from Question where email=:x order by addedDate desc");	
	qp.setParameter("x",email);
	List<Object> results = qp.list();
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

<% }
	}%>
 </div>
</div>


</section>      		 
            		 
            		 
     
    

</body>
</html>