<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Samaritan - Survey</title>
    <link rel="icon" href="content/img/samaritan.png" type="text">
    <link rel="stylesheet" href="content/css/bootstrap.css">
    <link rel="stylesheet" href="content/css/feedback.css">

    <script src="content/jquery/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
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

    <div class="hero is-info is-fullheight">
        <div id="navigation" style="padding: 0px;"></div>

        <main style="background-color: #fff;color: #000">

            <div class='spacer'></div>

            <header>
                <h1 id='title'>
                    Send Announcements
                </h1>
                <p id='description'>
                    Please fill in the details 🤗
                </p>
            </header>


            <form id='survey-form' action="/send">   <!-- add url here !-->

                <fieldset id='dropdown-info'>

                    <label for='states-label' id='role'>Announcement Type </label><br />
                    <select id='dropdown' name='type'>
                        <option selected value="imp">Important</option>
                        <option value="cas">Casual</option>
                        <option value="rem">Reminder</option>
                        <option value="oth">Others</option>
                    </select>

                </fieldset>

                <fieldset id='radio-button-info'>

                    <label for='review-label' id='admin'>Send it to Non-Admins? </label><br />
                    <input type='radio' name='nonadmin' value='yes' checked> yes
                    <input type='radio' name='nonadmin' value='no'> no

                </fieldset>

                <fieldset id='textarea-info'>

                    <label for='textarea-label' id='additional-info'>Message
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
