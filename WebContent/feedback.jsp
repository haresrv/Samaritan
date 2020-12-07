<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Samaritan - Survey</title>
    <link rel = "icon" href = "content/img/samaritan.png" type = "text"> 
    <link rel="stylesheet" href="content/css/bootstrap.css">
    <link rel="stylesheet" href="content/css/feedback.css">

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

        <div class="hero is-info is-fullheight" > 
            <div id="navigation" style="padding: 0px;"></div>
        
        <main style="background-image: url(content/img/bkg_fed.png)">
    
        <div class='spacer'></div>

        <header>
            <h1 id='title'>
                Survey Form
            </h1>
            <p id='description'>
                Please fill in the details &#129303;
            </p>
        </header>


        <form id='survey-form' action='feedback' method='post'>
            <fieldset id='personal-info'>

                <label for='name' id='name-label'>name:</label>
                <input type='text' id='name' name='name'  pattern="([^\s][a-zA-Z\s]+)" placeholder='Full Name' required><br />
                <label for='email' id='email-label'>email:</label>
                <input type='email' id='email' name='email' pattern='^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+$' placeholder='Email Address' required><br />
                <label for='age' id='number-label'>Age:</label>
                <input type='number' id='number' name='age' placeholder='Age' min='11' max='100' required>

            </fieldset>

            <fieldset id='textarea-info'>

                <label for='textarea-label' id='additional-info'>Additional suggestions
                </label><br />
                <textarea id='message' name='info'
                    placeholder='Type a message in less than 200 characters'></textarea>

            </fieldset>

            <button type='submit' id='submit'>Submit</button>
           </form>
        </main>
        </div>
        
</body>

</html>
