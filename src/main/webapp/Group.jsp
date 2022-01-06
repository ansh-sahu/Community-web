<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
    <link rel="stylesheet" href="css/NewStyle.css">
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>NewGroup</title>
</head>
<body>

  <%@include file="navbar.jsp"%>
  <br><br><br><br><br><br><br><br><br><br><br><center>
  <div class="post-content">
            <div class="post-form">
        
<form action="CreateGroupServlet" name="NewGroup" method="post">
                    <label for="Gname" class="font_medium_large darker">Group Name:</label>
                    <br><br>
                    <input type="text" id="Gname" name="Gname" placeholder="Enter Group name"><br>
                    <br>
                    <h1><label for="Checkbox" class="font_medium_large darker">Choose Members</label></h1><br><br>
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
                    <input type="Submit" name="Submit" value="Submit">
                    <a href="ExistingGroup.jsp">Existing Groups</a>
                    </form>
                    </div>
        </div>
                
</body>
</html>