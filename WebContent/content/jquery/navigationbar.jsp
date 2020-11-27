<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Samaritan - Our Work </title>
    <link rel = "icon" href = "content/img/samaritan.png" type = "text"> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" type="text/css" href="content/css/bulma.css">
    <!-- <link rel="stylesheet" type="text/css" href="content/css/dashboard.css"> -->
    <style type="text/css">
    .hero.is-info {
          background: linear-gradient(
          rgba(0, 0, 0, 0.5),
          rgba(0, 0, 0, 0.5)
        ), url('content/img/coimbatore_campus.jpg') no-repeat center center fixed;

          background-size: cover;
      }
    </style>

</script>
</head>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
%>


<div class="hero-head">
<nav class="navbar">
    <div class="container">
        <div class="navbar-brand">
            <a class="navbar-item" style="background-image:url('content/img/project-icon.png');" href="#">
                <img style="padding: 3px;" src="content/img/samaritan.png"  alt="100"> 
                <label id="navbar-title" style="color:#fff;"> AMRITA OUTREACH</label>
            </a>

            <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
              <span aria-hidden="true"></span>
              <span aria-hidden="true"></span>
              <span aria-hidden="true"></span>
            </a>
        </div>
        <div id="navbarMenu" class="navbar-menu">
            <div class="navbar-end">
                <span class="navbar-item">
                    <a class="button is-white is-outlined" href="index.jsp">
                        <span class="icon">
                            <i class="fa fa-home"></i>
                        </span>
                        <span>Home</span>
                    </a>
                </span>
                <span class="navbar-item">
                    <a class="button is-white is-outlined" href="about.jsp">
                        <span class="icon">
                            <i class="fa fa-superpowers"></i>
                        </span>
                        <span>About Us</span>
                    </a>
                </span>
                <span class="navbar-item">
                    <a class="button is-white is-outlined" href="work.jsp">
                        <span class="icon">
                            <i class="fa fa-envelope"></i>
                        </span>
                        <span>Our Work</span>
                    </a>
                </span>
                <span class="navbar-item">
                    <a class="button is-white is-outlined" href="events.jsp">
                        <span class="icon">
                            <i class="fa fa-calendar"></i>
                        </span>
                        <span>Events</span>
                    </a>
                </span>
                <span class="navbar-item">
                    <a class="button is-white is-outlined" href='register.jsp'>
                        <span class="icon">
                            <i class="fa fa-inr"></i>
                        </span>
                        <span>Donate</span>
                    </a>
                </span>
                <span class="navbar-item">
                    <a class="button is-white is-outlined" href="feedback.jsp">
                        <span class="icon">
                            <i class="fa fa-book"></i>
                        </span>
                        <span>Feedback</span>
                    </a>
                </span>
                
                <%  
           	 			if(session.getAttribute("username")==null) 
                    { 
                %>
                      
                <span class="navbar-item">
                    <a class="button is-white is-outlined" href="login.jsp">
                        <span class="icon">
                            <i class="fa fa-user"></i>
                        </span>
                        <span>Login</span>
                    </a>
                </span>

                <% }
           	 			else if(session.getAttribute("admin")!=null)
           	 	   {
                %>
	                <span class="navbar-item">
	                    <a class="button is-white is-outlined" href="admin.jsp">
	                        <span class="icon">
	                            <i class="fa fa-user"></i>
	                        </span>
	                        <span>Admin Dashboard</span>
	                    </a>
	                </span>
                <% }
           	 		else if(session.getAttribute("username")!=null)
            	 	   {
                 %>
 	               
                <div class="navbar-item">
                <div class="navbar-item has-dropdown is-hoverable">
                <a class="button is-white is-outlined">
                  Settings
                </a>

                <div class="navbar-dropdown" style="background:#3761b0;">
                    <a class="navbar-item is-black " href="#">
                        <span class="icon">
                            <i class="fa fa-user-plus"></i>
                        </span>
                        <span> Hi,
                        <%= session.getAttribute("username") %>
                        </span>
                    </a>
                
                    <a class="navbar-item is-black " href="#">
                        <span class="icon">
                            <i class="fa fa-bell-o"></i>
                        </span>
                        <span>Notifications</span>
                    </a>
                    
                    
                    <a class="navbar-item is-black " href="Logout">
                        <span class="icon">
                            <i class="fa fa-bell-o"></i>
                        </span>
                        <span>Log Out</span>
                    </a>
                </div>        

        		    </div>
		        </div>
                 <% } 
                 %>
                
                
            </div>
        </div>
    </div>
</nav>
</div>
