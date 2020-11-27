<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Samaritan </title>
    <link rel = "icon" href = "content/img/samaritan.png" type = "text"> 
    
    <script src="content/jquery/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#topnav').load('content/jquery/admin_topnav.jsp');
            $('#sidenav').load('content/jquery/admin_sidenav.html');
        });
    </script>

</head>

<body>
   <%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
%>
   
    <div id="topnav"> </div>

    <div class="container">
        <div class="columns">
            <div id="sidenav"> </div>
            <div class="column is-9">
                
                <section class="hero is-link welcome is-small">
                    <div class="hero-body">
                        <div class="container">
                            <h1 class="title">
                                Hello,  <%= session.getAttribute("username") %>
                            </h1>
                            <h2 class="subtitle">
                                Putting together all the stats...
                            </h2>
                        </div>
                    </div>
                </section>
                <section class="info-tiles">
                    <div class="tile is-ancestor has-text-centered">
                        <div class="tile is-parent">
                            <article class="tile is-child box">
                                <img src="content/img/Funds.png"/>
                                <p class="title">60k</p>
                                <p class="subtitle">Funds Recieved</p>
                            </article>
                        </div>
                        <div class="tile is-parent">
                            <article class="tile is-child box">
                                <img src="content/img/Events.webp"/>
                                <p class="title">119</p>
                                <p class="subtitle">Events Conducted</p>
                            </article>
                        </div>
                        <div class="tile is-parent">
                            <article class="tile is-child box">
                                <img src="content/img/Users.png"/>
                                <p class="title">119</p>
                                <p class="subtitle">Registered Users</p>
                            </article>
                        </div>
                    </div>
                </section>
                
            </div>
        </div>
    </div>
    

</body>

</html>

