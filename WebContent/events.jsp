<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Samaritan - Events and Announcement</title>
<link rel = "icon" href = "content/img/samaritan.png" type = "text"> 
<link href="content/css/events.css" rel="stylesheet" type="text/css">


    <script src="content/jquery/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#navigation').load('content/jquery/navigationbar.jsp');
        });
    </script>

<style>


.intro {    
    font-size: 150%;
    width:80%;
    background: linear-gradient(
      rgba(0, 0, 0, 0.5),
      rgba(0, 0, 0, 0.5)
    ), url('content/img/m4.jpg') no-repeat center center fixed;
}
</style>


</head>
<body style="background: linear-gradient(
    rgba(0, 0, 0, 0.5),
    rgba(0, 0, 0, 0.5)
  ), url('content/img/m4.jpg') no-repeat center center fixed;width: 100%;height: 100%;">
<!-- Main Container -->
  <!-- Header -->
  <%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
%>
  
  <section class="hero is-info is-fullheight" style="background: linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)), url('content/img/m4.jpg') no-repeat center center fixed;background-size: cover;">

      <div id="navigation" style="padding-left: 10%;width: 10px;"></div>
        
  <!-- Hero Section -->
 <center>
<section class="intro">
    <div class="column">
       <p> <h1><b><center>Events and Announcements</center> </b> </h1> </p>
       <center>
      <p><h3>All the events that are going to happen or currently active in Amrita University is listed here. For Participation or any further query regarding any event, please feel free to contact the respective event coordinator.</h3></p>
            
    </center>
    </div>
 </section></center>
 <center>
 <div id="dem" style="width: 90%;border-radius: 100px;"> 

  
  <!-- Footer Section -->
  
  <!-- Copyrights Section -->
</div>
<br><br>

<center>
    <a class="button1" href='AddEvent.jsp'>Add Event </div>
 </center>
<!-- Main Container Ends -->
</section>

<script type="text/javascript">
 
	var a = <%= session.getAttribute("events") %>;
	console.log(a);
  var i = 0;
  // document.write(data[0]);
 // console.log(data[0]);
  var n=a.length;

  var newhtml = '';
  var k=n-n%4;
  var m=0;
  for (i=0;i<k;i=i+4){
      newhtml= newhtml + "<div class='gallery'>";
    
      for(j=0;j<4;j++)
      {
      newhtml = newhtml + "<div class='thumbnail'> <a href='#'></a><h4>" +a[m]['eventdate']+ "</h4><p class='tag'>"+a[m]['eventtitle']+"</p><p class='text_column'>"+a[m]['eventdescribe']+"<br><br><h4>"+a[m]['eventaddedbyid']+"</h4></p></div>";
		m+=1;
      }
      newhtml = newhtml + "</div>";
  }
  if(k!=n)
  {
    newhtml= newhtml + "<div class='gallery'>";
    
    for(j=0;j<n%4;j++)
    {
     
        newhtml = newhtml + "<div class='thumbnail'> <a href='#'></a><h4>" +a[m]['eventdate']+ "</h4><p class='tag'>"+a[m]['eventtitle']+"</p><p class='text_column'>"+a[m]['eventdescribe']+"</p></div>";
    	m+=1 
    }
    newhtml = newhtml + "</div>";
  }
 
  document.getElementById("dem").innerHTML =newhtml;
  </script>
</body>
</html>
