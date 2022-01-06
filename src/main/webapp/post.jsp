<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <title>Web|Query</title>
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
  </script>
</head>
<body class="post-body">
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
                    <li class="nav_main"><a href="javascript:void(0)">Main</a>
                        <div class="main">
                            <ul>
                                <li><a href="post.jsp">Questions</a></li>
                                <li><a href="FetchData1.jsp">Review</a></li>
                                <li><a href="help.jsp">Help</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav_search"><a href="javascript:void()" onclick="display_search()"><i class="material-icons">search</i></a>
                            <div class="search-bar">
                                <form action="SearchServlet" action="Post">
                                    <input type="text" name="searchQue" placeholder="Search">
                                </form>
                            </div>
                        </li>
                        <li class="nav_user"><a href="javascript:void()" onclick="display_user()"><i class="material-icons">account_circle</i></a>
                            <div class="user-control">
                                <a href="profile.jsp" id="a">Profile</a>
                                <a href="LogoutServlet" id="b">Logout</a>
                            </div>
                        </li>
                </ul>
            </div>
        </div>
    </div>

    <section class="query-container">
        <div class="post-head ">
            <div class="logo"><h1>Post Your Query</h1>
            </div>
            <div class="head-icon">
                <i class="fas fa-question fa-2x red"></i>
                <i class="fas fa-question fa-4x blue"></i>
                <i class="fas fa-question fa-6x green"></i>
            </div>
        </div>
    
        <div class="post-content">
            <div class="post-form">
                <form action="SaveQuestion" method="post">
                    <label for="domain" class="font_medium_large darker">Select Domain:</label>
                    <br><br>
                    <select name="domain" id="domain">
                        <option value="Cs">Computer-science</option>
                        <option value="History">History</option>
                        <option value="Civics">Civics</option>
                        <option value="Others">Others</option>
                    </select>
                    <br><br><br><br><br>
                    <label for="location" class="font_medium_large darker">Select Location:</label>
                    <br><br>
                    <select name="location" id="location">
                        <option value="Public">Public </option>
                        <option value="Group">Group</option>
                    </select>
                    <br><br><br><br><br>
                    <textarea id="Query" name="Query" rows="10" cols="60" placeholder="Enter Query"></textarea>
    				<br><br>
    				<input type="submit"  name="submit"><br><br><br>
				</form>
            </div>
            <div class="content">
                <h1>Points to Ponder</h1>
                <ol type="1">
                    <li>Please enter your query wisely, do not post anything unnecesaary at affects the integrity of the system</li>
                    <li>Choose the Domain approriately as it helps in better search results and promotes good reviews</li>
                    <li>If the above points are not followed, web community team have full authority to take strict actions against the account of user.</li>
                </ol>
                
            </div>
        </div>
    </section>

    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <section class="footer foot-background light-color">
        <div class="foot-head " style="margin-top:180px;">
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