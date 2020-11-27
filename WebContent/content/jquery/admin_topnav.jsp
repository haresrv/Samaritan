<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Samaritan - Admin</title>
    <link rel = "icon" href = "content/img/samaritan.png" 
        type = "text"> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="content/css/bulma.css">
</head>

<body>

    <!-- START NAV -->
    <nav class="navbar is-white">
        <div class="container">
            <div class="navbar-brand">
                        <a class="navbar-item" style="background-color: #fff;" href="#">
                            <img style="padding: 3px;border: 2px solid black" src="content/img/samaritan.png"  alt="💯"> 
                            <label style="background-color: #fff;color:#000;padding:3px">AMRITA Outreach</label>
                        </a>
                    </div>
        <!-- PLACEHOLDER NAV -->                    
             <div id="navMenu" class="navbar-menu">
                
            </div>
        <!-- PLACEHOLDER END -->                                
            <div class="navbar-end">
                <div class="navbar-item has-dropdown is-hoverable">
                <a class="navbar-link">
                  Profile Settings
                </a>

                <div class="navbar-dropdown">
                    <a class="navbar-item" href="#">
                        <span class="icon">
                            <i class="fa fa-user-plus"></i>
                        </span>
                        <span>
                        <%= session.getAttribute("username") %>
                        </span>
                    </a>
                
                    <a class="navbar-item" href="#">
                        <span class="icon">
                            <i class="fa fa-bell-o"></i>
                        </span>
                        <span>Notifications</span>
                    </a>
                    
                    
                    <a class="navbar-item" href="Logout">
                        <span class="icon">
                            <i class="fa fa-bell-o"></i>
                        </span>
                        <span>Log Out</span>
                    </a>
                </div>        

            </div>
        </div>
    </nav>
    <!-- END NAV -->
    
</body>

</html>