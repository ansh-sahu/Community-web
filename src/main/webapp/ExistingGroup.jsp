<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Existing Group</title>
<link rel="stylesheet" href="css/NewStyle.css">
</head>
<body class="group-body">
  <%@include file="navbar.jsp"%>
 
  <div class="group-container">
  
<form method="Post" action="SaveQueGroup">
<center><label><h1>Choose the Existing Groups</h1></label></center>
<br>
<div class="group-flex">

<br>

<%
try{
HttpSession hs=request.getSession(false);  
if(hs!=null){  
String email=(String)hs.getAttribute("email");
/* if(email==null)
{
email="joshi@gmail.com";	
} */

Session s = FactoryProvider.getFactory().openSession();
Query q = s.createQuery("from Group where g_member like concat('%',:x,'%')");
q.setParameter("x",email);
List<Group> grp= q.list();
for(Group Group:grp){ %>
<h1><input type="checkbox" name="groups" value="<%=Group.getG_name()%>">
<label for="groups"><%=Group.getG_name() %></label></h1>
<br>
<br>
<%
}
s.close();
}
}
catch(Exception e)
{
	System.out.print(e);
	}

%></div><br><br><br><center>
<input type="Submit" style="color:white;font-size:17px;" value="Submit" name="Submit"></center><br><br><br>
</form>
</div>
<section class="footer foot-background light-color">
        <div class="foot-head " style="margin-top:540px;">
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