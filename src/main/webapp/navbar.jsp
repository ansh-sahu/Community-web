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
<body>      <div class="navbar">
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
</body>
</html>