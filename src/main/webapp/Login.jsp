<!-- 
<html>
<head>
<title> Login</title>
<style>
  body {

  background-color: #FFFFE0;
  height: 800px;
  background-position: center;
  background-repeat: no-repeat;
 background-size: cover;
}
.centerdiv{
  width: 400px;
  height: 500px;
  position: absolute;
  top: 50%;
  left: 50%;
  background-color: navyblue;
  transform: translate(-50%,-50%);
  background-image: linear-gradient(55deg, lightseagreen 50%, skyblue 100%);


}h1{
  text-align: center;
  color: white;
  text-transform: uppercase;
  font-size: 2em;
  word-spacing: 10px;
  margin-top: -50px;
  margin-bottom: 50px;
  text-shadow: -2px 2px 1px #0A84C6;
}
h2{
  text-align: left;
  color: white;
  text-transform: uppercase;
  font-size: 1.5em;
  word-spacing: 8px;
  margin-top: 4px;
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

.header {
  padding: 20px;
  text-align: center;
  background: lightseagreen;


}
.button {
 background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 12px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  margin-left: 108px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {width:50%;
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
  border-radius: 15px;
  }
  
  .button1:hover {
  background-color: #008CBA;
  color: white;
}
.button2 {
width:10%;
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
  border-radius: 15px;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}


</style>

</head>
<body>
<form action="LoginServlet" method="Post">
  <div class="header">

  <p></p>
</div>
  <div class="form">
  <div class="container">
  <div class="centerdiv">
  <br><br><br><br>
  <div>
     <h1>Login</h1>

    <h2>&nbsp;&nbsp;&nbsp;Email </h2><input type="text" name="email" class="inputbox" placeholder="Email" required="required"> <br><br>
    </div>

    <div>
    <h2>&nbsp;&nbsp;&nbsp;Password </h2>
    <input type="Password"  name="password" class="inputbox" placeholder="Password" id="myInput" required="required">
    <input type="checkbox" onclick="myFunction()" class="inputbox">Show Password
     
    </div>
    <script>
function myFunction() {
  var x = document.getElementById("myInput");
  if(x.type === "Password") {
    x.type = "text";
  } else {
    x.type = "Password";
  }
}
</script>
    <br> <br> <br>
 
<br><button type="submit" class="button button1" name="action"  id="action" value="login">Login</button>  <br>
    <div class="button button2"  name="action" type="submit" onclick="location.href = 'UserSignup.html'">SignUp</button>
   
  </div>
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
    <title>Web|Log-in</title>
</head>
<body>
    <div class="log">
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

        <div class="log-in">
            <!-- ##########<div class="log-icon">
                <i class="fas fa-user fa-5x"></i>
            </div> ##########

            <h1 class="log-title">Log-In</h1>
            <form action="LoginServlet" method="post">
                <label for="email">Email:</label><br>
                <input type="email" id="email" name="email" placeholder="Enter your Email" required="required"><br>
                <label for="password">Password:</label><br>
                <input type="password" id="password" name="password" placeholder="Enter your Password" required="required"><br>
                <input type="submit" name="login" value="Log-in">
                
                <h2><center><a href="UserSignup.jsp">SignUp</a></center></h2>
            </form>
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
                x.style.display = "none"
            }
          }
        function validate_login(){
            var mail=document.forms["login-form"]["email"].value;
            var pass=document.forms["login-form"]["password"].value;
            if (mail==""){
                alert("Enter email");
                return false;
            }
            else if(pass==""){
                alert("Enter Password");
                return false;
            }
            else{
                return true;
            }
        }
       
    </script>
    <title>Web|Log-in</title>
</head>
<body>
    <div class="log">
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
                        <li class="nav_main"><a href="" >Main</a>
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
                        <li class="nav_search"><a href="javascript:void()" onclick="display_search();"><i class="material-icons">search</i></a>
                            <div class="search-bar">
                                <form action="SearchServlet" method="get">
                                    <input type="text" name="searchQue" placeholder="Search">
                                </form>
                            </div>
                        </li>
                        <li class="nav_user"><a href="javascript:void()" onclick="display_user();"><i class="material-icons">account_circle</i></a>
                      <div class="user-control">
                            <a href="UserSignup.jsp" id="a">Sign-up</a>
                            <a href="Login.jsp" id="b">Log-in</a>
                        </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="log-in">
            <!-- <div class="log-icon">
                <i class="fas fa-user fa-5x"></i>
            </div> -->

            <h1 class="log-title">Log-In</h1>
            <form action="LoginServlet" name="login-form" onsubmit="return validate_login()" method="post">
                <label for="email" class="important">Email:</label><br>
                <input type="email" id="email" name="email" placeholder="Enter your Email" ><br>
                <label for="password" class="important">Password:</label><br>
                <input type="password" id="password" name="password" placeholder="Enter your Password"><br>
                <input type="submit" name="login" value="Log-in">
            </form>
            <h1>OR</h1>
             <a href="Forgot_Pass.jsp">Forgot Password?</a>
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