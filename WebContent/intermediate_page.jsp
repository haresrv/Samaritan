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
    
    <section class="hero is-info is-fullheight">
    	<div id="navigation"> </div>

      <div class="container is-fluid">
        
        <section class="section">
          <div class="hero is-danger container has-text-centered">
            <h2 class="title">Tell us who you are</h2>
            
            <div class="columns is-gapless">
               <div class="column">
                <div class="level">
                  <div class="level-item">
                    <i class="fa fa-user-circle-o" style="font-size: 100px"></i>
                  </div>
                </div>
                <h5 class="title is-5"></h5>
                <p class="subtitle is-6">Login as Admin</p>
                <p>  </p>
              </div>

               <div class="column">
                <div class="level">
                  <div class="level-item">
                    <figure class="image is-128x128"><img class="is-rounded" src="content/img/bg_circle.svg" alt=""></figure>
                  </div>
                </div>
                <h5 class="title is-5"></h5>
                <p class="subtitle is-6">Login as Sponsor</p>
                <p>  </p>
              </div>

            </div> 

          </div>
        </section>
        <hr>
      </div>
    	
    </section>	


</body>

</html>