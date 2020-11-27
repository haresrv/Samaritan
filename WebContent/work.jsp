<!DOCTYPE html>
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

    <script src="content/jquery/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#navigation').load('content/jquery/navigationbar.jsp');
        });
    </script>

</head>

<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
%>

    <section class="hero is-info is-fullheight" style="background: linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)), url('content/img/m4.jpg') no-repeat center center fixed;background-size: cover;">
        <div id="navigation"> </div>

    <div class="container is-fluid">
      <section class="section">
        <div class="container">
          <div class="columns is-desktop is-vcentered">
            <div class="column is-6-desktop">
            
              
              <h2 class="title is-spaced">Weekend Study Group</h2>
              <p class="subtitle">Our Volunteers spending their weekend educating neighbourhood village kids

              <div class="level is-mobile">
                <div class="level-left"><a class="level-item" href="#">
                    <div class="tag is-primary">&nbsp;</div></a><a class="level-item" href="#">
                    <div class="tag is-danger">&nbsp;</div></a><a class="level-item" href="#">
                    <div class="tag is-white">&nbsp;</div></a><a class="level-item" href="#">
                    <div class="tag is-info">&nbsp;</div></a></div>
              </div>

            </div>
            <div class="column is-6-desktop"><img src="content/img/xhome1.jpg" alt="">
              <div class="level is-mobile">
                <div class="level-item image is-128x128"><img src="content/img/xhome2.jpg" alt=""></div>
                <div class="level-item image is-128x128"><img src="content/img/xhome3.jpg" alt=""></div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <hr>
      <section class="section">
        <div class="container">
          <div class="columns is-desktop is-vcentered">
            <div class="column is-6-desktop"><img src="content/img/home1.jpg" alt=""></div>
            <div class="column is-6-desktop">
              
              <h2 class="title is-spaced">Awareness Session</h2>
              <p class="subtitle">Our Team in association with Amrita NSS and Sahaya Club educating students.</p>
              <div class="level is-mobile">
                <div class="level-left"><a class="level-item" href="#">
                    <div class="tag is-primary">&nbsp;</div></a><a class="level-item" href="#">
                    <div class="tag is-danger">&nbsp;</div></a><a class="level-item" href="#">
                    <div class="tag is-white">&nbsp;</div></a><a class="level-item" href="#">
                    <div class="tag is-info">&nbsp;</div></a></div>
              </div>
              
              
            </div>
          </div>
        </div>
      </section>
      <hr>  	
    </div>
  </body>
</html>