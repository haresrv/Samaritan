<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" type="text/css" href="content/css/bulma.css">
    
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
        <div class="container has-text-centered">
          <h2 class="title">Team Samaritan</h2>
          
          <div class="columns">


             <div class="column is-one-third">
              <div class="level">
                <div class="level-item">
                  <figure class="image is-128x128"><img class="is-rounded" src="content/img/bg_circle.svg" alt=""></figure>
                </div>
              </div>
              <h5 class="title is-5">Dr. (Col.) Kumar P. N.</h5>
              <p class="subtitle is-6">Chairperson</p>
              <p>  </p>
            </div>

             <div class="column is-one-third">
              <div class="level">
                <div class="level-item">
                  <figure class="image is-128x128"><img class="is-rounded" src="content/img/bg_circle.svg" alt=""></figure>
                </div>
              </div>
              <h5 class="title is-5">Ms. S. Shanmuga Priya</h5>
              <p class="subtitle is-6">Asst. Prof</p>
              <p>  </p>
            </div>

             <div class="column is-one-third">
              <div class="level">
                <div class="level-item">
                  <figure class="image is-128x128"><img class="is-rounded" src="content/img/bg_circle.svg" alt=""></figure>
                </div>
              </div>
              <h5 class="title is-5">Dr. Gowtham R </h5>
              <p class="subtitle is-6">Asst. Prof</p>
              <p>  </p>
            </div>

          </div> 

          <div class="columns">

            <div class="column is-one-fifth">
              <div class="level">
                <div class="level-item">
                  <figure class="image is-128x128"><img class="is-rounded" src="content/img/bg_circle.svg" alt=""></figure>
                </div>
              </div>
              <h5 class="title is-5">Abhishek Marpu</h5>
              <p class="subtitle is-6">17102</p>
              <p>  </p>
            </div>

            <div class="column is-one-fifth">
              <div class="level">
                <div class="level-item">
                  <figure class="image is-128x128"><img class="is-rounded" src="content/img/bg_circle.svg" alt=""></figure>
                </div>
              </div>
              <h5 class="title is-5">Akash G</h5>
              <p class="subtitle is-6">17105</p>
<!--               <p> I'm an avid learner and I enjoy solving problems. I specialize in machine learning and web development and everything in tech! </p> -->
            </div>

            <div class="column is-one-fifth">
              <div class="level">
                <div class="level-item">
                  <figure class="image is-128x128"><img class="is-rounded" src="content/img/bg_circle.svg" alt=""></figure>
                </div>
              </div>
              <h5 class="title is-5">Hare Sankaran RV</h5>
              <p class="subtitle is-6">17119</p>
              <p>  </p>
            </div>

            <div class="column is-one-fifth">
              <div class="level">
                <div class="level-item">
                  <figure class="image is-128x128"><img class="is-rounded" src="content/img/bg_circle.svg" alt=""></figure>
                </div>
              </div>
              <h5 class="title is-5">Himanshu Kumar</h5>
              <p class="subtitle is-6">17120</p>
              <p>  </p>
            </div>

            <div class="column is-one-fifth">
              <div class="level">
                <div class="level-item">
                  <figure class="image is-128x128"><img class="is-rounded" src="content/img/bg_circle.svg" alt=""></figure>
                </div>
              </div>
              <h5 class="title is-5">Akshay Penumudi</h5>
              <p class="subtitle is-6">17138</p>
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
