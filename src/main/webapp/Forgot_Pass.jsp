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
<style>
/* ############################## Forget_Password ##################### */

.forget{
    background: #e4f0e6;
    height: 98vh;
}

.forget .forget-pass{
    position: absolute;
    border: 2px solid lightcoral;
    background: white;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-40%);
    padding: 3em 3em;
    border-radius: 20px;
    box-shadow: 0 0 30px rgba(0, 0, 0, 0.315);
}

/* .log .log-in .log-icon{
    background: white;
    color: lightcoral;
    position: absolute;
    top: -15%;
    left: 25%;
    border-radius: 50%;
    border: 1px solid lightcoral;
    width: 50%;
    height: 60%;
    text-align: center;
    padding: 1em 0 2em 0;
} */

.forget .forget-pass .forget-title{
    text-align: center;
    font-size: 2.8rem;
    font-weight: 600;
    margin-bottom: 1em;
    border-bottom: 2px solid lightcoral;
    
}
.forget .forget-pass form input{
    margin-bottom: 2em;
    margin-top: 0.3em;
    border-radius: 10px;
    border: 0.5px solid #a0a7a1;
    padding: 0.4em 1em;
    width: 102%;
}


.forget .forget-pass form label{
    font-size: 1.6rem;
    font-weight: 600;
}

.forget .forget-pass input[type='submit']{
    color:white;
    background: blue;
    margin-top: 1.5em;
}

.forget .forget-pass input[type='submit']:hover{
    background: darkblue;
}</style>
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
        function validate_forget(){
            var mail=document.forms["forget-form"]["email"].value;
            var age=document.forms["forget-form"]["dob"].value;
            var pass=document.forms["forget-form"]["new-pass"].value;
            if (mail==""){
                alert("Enter email");
                return false;
            }
            else if(age==""){
                alert("Enter DOB");
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
    <div class="forget">
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

        <div class="forget-pass">
            <!-- <div class="log-icon">
                <i class="fas fa-user fa-5x"></i>
            </div> -->

            <h1 class="forget-title">Modify-Password</h1>
            <form action="ResetServlet" method="post" name="forget-form" onsubmit="return validate_forget()">
                <label for="email" class="important">Email:</label><br>
                <input type="email" id="email" name="email" placeholder="Enter your Email" ><br>
                <label for="dob" class="important">DOB:</label><br>
                <input type="Date" id="dob" name="dob" ><br>
                <label for="new-pass" class="important">New Password:</label><br>
                <input type="password" id="new-pass" name="newpass" placeholder="Enter your Password"><br>
                <input type="submit" name="forget-pass" value="Submit">
            </form>
            <!-- <h1>OR</h1>
             <a href="login.html">Log-In</a> -->
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