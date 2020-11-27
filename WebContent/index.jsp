<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Samaritan - Our Work </title>
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/content/css/bulma.css">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/content/img/samaritan.png">

    <style type="text/css">
    .hero.is-info {
          background: linear-gradient(
          rgba(0, 0, 0, 0.5),
          rgba(0, 0, 0, 0.5)
        ), url("${pageContext.request.contextPath}/content/img/coimbatore_campus.jpg") no-repeat center center fixed;

          background-size: cover;
      }
      .card
      {
        padding: 20px;
        border-radius: 25px;
      }
      .btn
      {
        margin-top: 100px;
        padding: 10px;
      }
      .donor
      {
        margin-top: 20px;
      }
      .motto
      {
        border:2px solid white;
        
      }
    
    </style>

    <script src="${pageContext.request.contextPath}/content/jquery/jquery.min.js"></script>
    <script>
    jQuery(document).ready(function($) {
    	$(document).ready(function() {
            $('#navigation').load('${pageContext.request.contextPath}/content/jquery/navigationbar.jsp');
        });
    });
    </script>

</head>

<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
%>
    <section class="hero is-info is-fullheight">
        <div id="navigation"> </div>

<div class="hero-body">
    <div class="container has-text-centered">
    <div class="hero-body">
    <div class="container motto has-text-centered">
                       <span>We are group of volunteers working together for a common cause. On our platform, you can donate to a nonprofit with confidence. Our robust due diligence process covers legal, compliance, financial and impact checks for each donation made to any non-profit, including in-person visits to beneficiaries and actual feedback reports. We do all this so that our donors can donate with confidence that their giving is indeed doing what it's supposed to - change lives.</span>
        </div>
    </div>

    <section class="section">
        <div class="container has-text-centered">
            
            <div class="columns is-centered" style="padding: 2rem">
                <div class="column"> 
                    <div class="card">
                        <div class="card-image">
                            <figure class="image is-16by9">
                                <img class="has-ratio is-rounded" width="4px" src="content/img/raasukutti.jpg" alt="placeholder">
                            </figure>
                        </div>
                        <div class="card-content">
                            <div class="media">
                                <div class="media-content">
                                    
                                    <p class="title is-6" style="color: black">Help put a smile on rural children's face</p>
                                </div>
                            </div>

                            <div class="content">
                                You can sponsor a child's education in monthly basis
                                <div class="donor">
                                     <a class="btn has-text-white-bis has-background-success" href="register.jsp">DONATE</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-image">
                            <figure class="image is-16by9">
                                <img class="has-ratio is-rounded" src="content/img/kaakamuttai.jpg" alt="placeholder">
                            </figure>
                        </div>
                        <div class="card-content">
                            <div class="media">
                                <div class="media-content">
                                    
                                    <p class="title is-6" style="color: black">Sponsor monthly groceries for a family</p>
                                </div>
                            </div>

                            <div class="content">
                                Please visit the link for donating.
                                <div class="donor">
                                     <a class="btn has-text-white-bis has-background-success" href="register.jsp">DONATE</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </section>
    </div>
</div>
    
</section>
    <section class="section has-background-success">
        <div class="container has-text-centered ">
            <h2 class="title">Weekly dose of inspiration delivered straight to your inbox. Sign up here.
            </h2>

            <form action="#">
                <div class="field is-horizontal">
                    <div class="field-body">
                        <div class="field">
                            <p class="control has-icons-left is-outlined">
                                <input class="input " type="text" placeholder="Name" required>
                                <span class="icon is-small is-left">
                                    <i class="fa fa-user"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control has-icons-left is-outlined">
                                <input class="input " type="email" placeholder="Email" pattern='^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+$' required>
                                <span class="icon is-small is-left">
                                    <i class="fa fa-envelope"></i>
                                </span>
                            </p>
                        </div>
                    </div>
                </div>


                <div class="field is-horizontal">
                    <div class="field-body">
                        <div class="field">
                            <div class="control">
                                <button class="button is-primary">
                                    SignUp for Newsletter
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>

    
<script type="text/javascript">
 
</script>
</body>

</html>