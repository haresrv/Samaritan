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



    /* form label{
        color: white;
    } */
    input[type = text], input[type = email], input[type = number], #dropdown, button{
    width: 400px;
    height: 40px;
    margin: 10px;
    padding: 5px;
    font-size: 20px;
    text-align: left;
    }

    html {
	margin: 0px;
	height: 100%;
	width: 100%;
 }
/* Body */
body {
	margin: 0px;
	min-height: 100%;
	width: 100%;
}

    textarea {
    width: 500px;
    height: 150px;
    resize: none;
    font-size: 16px;
    padding: 10px;
    border-radius: 15px;
    }

    textarea:focus, input[type = text]:focus, input[type = email]:focus, input[type = number]:focus {
    border: none;
    }

    textarea::placeholder {
    font-size: 16px;
    text-align: center;
    }

    input[type = checkbox], input[type = radio] {
    width: 30px;
    height: 30px;
    margin-left: 10px;
    cursor: pointer;
    }

    fieldset {
    border: none;
    }


    button {
    height: 40px;
	background-color: #fafafa6b;
    font-weight: bold;
    font-size: 22px;
    text-align: center;
    }
    .button:hover {
	background-color: #fafafa6b;
	color: #FFFFFF;
	cursor: pointer;
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
        
      <div class="container" style="background: linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)), url('content/img/m4.jpg') no-repeat center center fixed;background-size: cover; padding-top: 5%;"> 
        <!-- Header -->
       
          <form id='survey-form'>
              <h1 id='title' style='font-size:180%'>
                  <center><b>Add new Event</b></center>
              </h1><br>
              <label>Organiser:</label>
                  <input type='text' placeholder='Enter name'  pattern="([^\s][A-z0-9À-ž\s]+)" style="border-radius: 15px;" required><br />
            <br>  
                  <label>Event Title:</label>    
                  <input type='text' placeholder='Enter the title' style="border-radius: 15px;"  pattern="([^\s][A-z0-9À-ž\s]+)" required><br><br>
                  <center><label>Event Date: &nbsp;</label> </center><br><center>   
                  <input type='date' placeholder='Enter the title' style="border-radius: 15px;" required></center>
            
      <br>
      <br>
              <fieldset id='textarea-info'>
      
                  <center><label >Details regarding the event:
                  </label></center><br>
                  <textarea  pattern="([^\s][A-z0-9À-ž\s]+)"
                      placeholder='Type a message in 200 characters or less'></textarea>
      
              </fieldset>
              <center><div class="button">Submit </div></center>
          </form>
      </div>
<!-- Main Container Ends -->
</section>

</body>
</html>
