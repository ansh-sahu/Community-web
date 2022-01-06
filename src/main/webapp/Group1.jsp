<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
   
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="css/NewStyle.css"> 
 <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      <script src="https://kit.fontawesome.com/d4d53379c7.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
<body class="group-body">
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
                                <input type="text" placeholder="Search" name="searchQue">
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
    
    <div class="group-container">
    <center>
     
      <form action="CreateGroupServlet" name="NewGroup" method="post">
                    <label for="Gname" class="font_medium_large darker"><u>Group Name</u></label>
                    <br><br>
                    <input type="text" style="padding:0.5em;font-size:20px;" id="Gname" name="Gname" placeholder="Enter Group name" ><br>
                    <br>
                    <br><br><br>
                   
                    <h1><label for="Checkbox" class="font_medium_large darker"><u>Choose Members</u></label></h1></center><br><br>
                    <div class="group-flex">
                    <% 
	Session s = FactoryProvider.getFactory().openSession();
	Query q = s.createQuery("from BasicData");
	List<BasicData> list= q.list();
	for(BasicData basicdata:list){
 %>
   
                    
				   <h2> <input type="checkbox" id="Group-checkbox" name="checkbox" value="<%=basicdata.getEmail()%>">
  					<label for=""Group-checkbox"><%=basicdata.getFirst()+" "+basicdata.getLast()%></label></h2><br>
  					<br>
                    <%} %>
                    </div><br><br><br><center>
                    <input type="Submit" style="color:white;font-size:17px;" name="Submit" value="Submit"><br><br><br>
                    <a href="ExistingGroup.jsp" style="font-size:23px">Existing Groups</a><br><br><br><br>
                    </center></form>

        
    </div>
  <section class="footer foot-background light-color">
        <div class="foot-head " style="margin-top:390px;">
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