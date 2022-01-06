<!-- <!DOCTYPE html>
<html>
<head>
<title>User Registration</title>
<style>
	body {

  background-color: #FFFFE0;
  height: 800px;
  background-position: center;
  background-repeat: no-repeat;
 background-size: cover;
}
.centerdiv{
	width: 650px;
	height: 800px;
	position: absolute;
	top: 50%;
	left: 50%;
	background-color: blue;
	transform: translate(-50%,-50%);
	border: 15px solid lightseagreen;
	background-color: lightgrey


}h1{
	text-align: center;

	text-transform: uppercase;
	font-size: 2em;
	word-spacing: 10px;
	margin-top: -50px;
	margin-bottom: 50px;
	text-shadow: -2px 2px 1px #0A84C6;
}
h2{
	text-align: left;

	text-transform: uppercase;
	font-size: 1.0em;
	word-spacing: 8px;
	margin-top: 15px;
	margin-bottom: 10px;
	text-shadow: -2px 2px 1px #0A84C6;
}
.inputbox{
	width: calc(100% - 20%);
	height: 40px;
	display: block;
	margin: auto;
	padding: 0 10px;
	box-sizing: border-box;
}
::placeholder{
	letter-spacing: 2px;
	color: black;
}

.button {
	width: calc(30% - 10px);
  background-color:#0A84C6;
  border: none;
  color: white;
  text-transform: uppercase;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: -10px 200px;
  cursor: pointer;
  border-radius: 12px;
}
.navbar{
  list-style-type: none;
   margin-top: -8px;
  padding: 50;
  height: 50px;
   overflow: hidden;
  /*   background-color: #013A6B; 
  transform: translate(-50%,-50%);
  background-image: linear-gradient(100deg, lightseagreen 30%, skyblue 80%);
}

.navbar a {
  float: left;
  font-size: 50px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}


</style>
</head>
<body>
<form action="SignupServlet" method="Post">
	<div class="navbar">
	<div class="container">
	<div class="centerdiv">
	<br><br><br><br>
	<div>
     <h1> Registration</h1>
     <div class="form">
<div>
         <h2>&nbsp;&nbsp;First Name </h2><input type="text" name="first" class="inputbox" placeholder="FullName" required>
		</div>
		<div>
		<h2>&nbsp;&nbsp;Last Name </h2><input type="text" name="last" class="inputbox" placeholder="FullName" required>
		</div>
		<div>
		<h2>&nbsp;&nbsp;Email</h2><input type="text" name="email" class="inputbox" placeholder="Email" required="required">
		</div>
		<div>
		<h2>&nbsp;&nbsp;Password</h2><input type="Password" name="password" class="inputbox" placeholder="Password" required="required">
		</div>

		<div>
		<h2>&nbsp;&nbsp;Gender</h2><input type="text" name="gender" class="inputbox" placeholder="Contact no." required="required">
		</div>
                <div>
                <h2>&nbsp;&nbsp;Age </h2><input type="text" name="age" class="inputbox" placeholder="Address" required="required">
		</div>
		  <div>
                <h2>&nbsp;&nbsp;Field </h2><input type="text" name="field" class="inputbox" placeholder="Address" required="required">
		</div>
		
		<br> <br> <br><br>
                <button type="submit" class="button button" name="action"id="action" value="signup">Register</a>
                    
                </button><br>
                    <a href="Login.jsp">Login</a>

</div>

	</div>
</div>
</div>
</form>
</body>
</html>
-->
 <!--  
 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/navstyle.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <script src="https://kit.fontawesome.com/d4d53379c7.js" crossorigin="anonymous"></script>
  <title>Web|Sign-Up</title>
</head>
<body id="sign-body">

    <div class="sign">
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
        <div class="form-container">
            <div class="signup-content">
                <div class="sign-items">
                    <h1>Join Community Web</h1>
                </div>
                <div class="sign-items">
                    <i class="fas fa-question-circle fa-3x"></i>
                    <p>Get-unstuck ask question</p>
                </div>
                <div class="sign-items">
                    <i class="fas fa-unlock-alt fa-3x"></i>
                    <p>Unlock new privilages like voting and commenting</p>
                </div>
                <div class="sign-items">
                    <i class="fas fa-brain fa-3x"></i>
                    <p>Expand your knowledge and learning</p>
                </div>
                

            </div>
            
            <div class="form-m">
                
                <h1 class="form-head">Sign-Up</h1>
                
                
                <form action="SignupServlet" method="post">
                    <label for="first">First Name:</label><br>
                    <input type="text" id="first" name="first" placeholder="Enter your first name"><br>
                    <label for="last">Last Name:</label><br>
                    <input type="text" id="last" name="last" placeholder="Enter your last name"><br>
                    <label for="email">Email:</label><br>
                    <input type="email" id="email" name="email" placeholder="Enter your mail"><br>
                    <label for="password">Password:</label><br>
                    <input type="password" name="password" id="password" placeholder="Enter Password"><br>
                    <label for="gender">Gender:</label><br>
                    <input type="radio" name="gender" id="male" value="Male">
                    <label for="male">Male </label>
                    <input type="radio" name="gender" id="female" value="Female">
                    <label for="female">Female</label>
                    <input type="radio" name="gender" id="others" value="Others">
                    <label for="others">Others</label><br>
                    <label for="age">Age:</label><br>
                    <input type="date" name="age" id="age" ><br>
                    <label for="field">Field:</label><br>
                    <input type="text" name="field" id="field"><br>
                    <input type="submit" value="Register">
                </form>
                </div>
            
        </div>
    </div>
    <section class="footer foot-background light-color">
        <div class="foot-head ">
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
 
 -->
 
 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/NewStyle.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <script src="https://kit.fontawesome.com/d4d53379c7.js" crossorigin="anonymous"></script>
  <script>
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
            x.style.display = "none"
        }
      } 

      function validate_signup(){
          var fname=document.forms["sign-form"]["fname"].value;
          var lname=document.forms["sign-form"]["lname"].value;
          var mail=document.forms["sign-form"]["email"].value;
          var pass=document.forms["sign-form"]["pass"].value;
          var age=document.forms["sign-form"]["age"].value;
          var gender=document.getElementsByName("Gender");
          if (fname==""){
              alert("Enter first name");
              return false;
          }
          else if (lname==""){
              alert("Enter Last name");
              return false;
          }
          else if (mail==""){
              alert("Enter mail");
              return false;
          }
          else if(pass==""){
              alert("Enter password");
              return false;
          }
/* 
          else if (gender[0].checked==true || !gender[1].checked==true || !gender[2].checked==true){
            alert("Tick the Gender");
            return false;
          } */
          else if (age==""){
              alert("Enter date of birth");
              return false;
          }
          else{
              return true;
          }
      }
  </script>
  <title>Web|Sign-Up</title>
</head>
<body id="sign-body">

    <div class="sign">
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
                                    <li>
                                   <%
										HttpSession hs2=request.getSession(false);  
 										if(hs2.getAttribute("email")==null){%> <a href="Login.jsp">Questions</a></li>
 										<li><a href="FetchData1.jsp">Review</a></li>
 										<li><a href="Login.jsp">Help</a></li>
 										<% }
 										else{
 										 %> <a href="post.jsp">Questions</a></li>
 										 <li><a href="FetchData1.jsp">Review</a></li>
                                    <li><a href="help.jsp">Help</a></li> 
                                    <% }%>
                                </ul>
                            </div>
                        </li>
                        <li class="nav_search"><a href="javascript:void()" onclick="display_search()"><i class="material-icons">search</i></a>
                            <div class="search-bar">
                                <form action="SearchServlet" action="Post">
                                    <input type="text" name=searchQue" placeholder="Search">
                                </form>
                            </div>
                        </li>
                        <li class="nav_user"><a href="javascript:void()" onclick="display_user()"><i class="material-icons">account_circle</i></a>
                            <div class="user-control">
                                <a href="UserSignup.jsp" id="a">Sign-up</a>
                                <a href="Login.jsp" id="b">Log-in</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="form-container">
            <div class="signup-content">
                <div class="sign-items">
                    <h1>Join Community Web</h1>
                </div>
                <div class="sign-items">
                    <i class="fas fa-question-circle fa-3x"></i>
                    <p>Get-unstuck ask question</p>
                </div>
                <div class="sign-items">
                    <i class="fas fa-unlock-alt fa-3x"></i>
                    <p>Unlock new privilages like voting and commenting</p>
                </div>
                <div class="sign-items">
                    <i class="fas fa-brain fa-3x"></i>
                    <p>Expand your knowledge and learning</p>
                </div>
                

            </div>
            
            <div class="form-m">
                
                <h1 class="form-head">Sign-Up</h1>
                
                
                <form action="SignupServlet"  method ="Post" name="sign-form" onsubmit="return validate_signup()">
                    <label for="fname" class="important">First Name:</label><br>
                    <input type="text" id="fname" name="fname" placeholder="Enter your first name"><br>
                    <label for="lname" class="important">Last Name:</label><br>
                    <input type="text" id="lname" name="lname" placeholder="Enter your last name"><br>
                    <label for="email" class="important">Email:</label><br>
                    <input type="email" id="email" name="email" placeholder="Enter your mail"><br>
                    <label for="pass" class="important">Password:</label><br>
                    <input type="password" name="pass" id="pass" placeholder="Enter Password"><br>
                    <label for="Gender" class="important">Gender:</label><br>
                    <input type="radio" name="Gender" id="male" value="Male">
                    <label for="male">Male </label>
                    <input type="radio" name="Gender" id="female" value="Female">
                    <label for="female">Female</label>
                    <input type="radio" name="Gender" id="others" value="Others">
                    <label for="others">Others</label><br>
                    <label for="age" class="important">DOB:</label><br>
                    <input type="date" name="age" id="age" ><br>
                    <label for="field" >Field:</label><br>
                    <input type="text" name="field" id="field"><br>
                    <input type="submit" value="Register">
                </form>
                <h1>OR</h1>
                <a href="Login.jsp">Already a member Log-in?</a>
            </div>
            
        </div>
    </div>
    <section class="footer foot-background light-color">
        <div class="foot-head ">
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