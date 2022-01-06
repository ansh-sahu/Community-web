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
    </script>
    <title>Web|Query</title>
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
                    <li class="nav_main"><a href="">Main</a>
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

    <section class="query-container">
        <div class="post-head ">
            <div class="logo"><h1>Got Any Problem</h1>
            </div>
            <div class="head-icon">
                <i class="fas fa-people-carry fa-8x red"></i>
        
            </div>
        </div>
    
        <div class="post-content">
            <div class="post-form">
                <form action="QueryServlet" method="post" name="help-form">
                    <label for="domain" class="font_medium_large darker">Mention what you need help for:</label>
                    <br><br><br><br><br>
                    <textarea id="Query" name="helparea" rows="10" cols="60" placeholder="Enter Query" required></textarea>
                    <br><br>
    				<input type="submit"  name="submit"><br><br><br>
                </form>
            </div>
            <div class="content">
                <h1>Points to Ponder</h1>
                <ol type="1">
                    <li>Please mention the problem accurately, do not enter unnecessary things.</li>
                    <li>Response will be emailed to you along with solution if any within 24 hours. </li>
                    <li>Please be patient if you do not get the response some problems may take longer to resolve.</li>
                </ol>
                
            </div>
        </div>
    </section>

    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <section class="footer foot-background light-color">
        <div class="foot-head " style="margin-top:150px;">
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