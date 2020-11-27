<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel = "icon" href = "content/img/samaritan.png" type = "text"> 
    <link rel="stylesheet" href="content/css/login.css">
    <link rel="stylesheet" href="content/css/bootstrap.css">
<script type="text/javascript">
    function validate()
    {
        var pass = document.getElementById("pass")
        var repass = document.getElementById("repass")

        if(pass.value==repass.value)
         {
            document.getElementById("passinv").innerText = ""
            return CheckPassword();
         }

        else
        {
            document.getElementById("passinv").innerText = "Passwords don't match..."
            return false;
        }
    }

    function CheckPassword() {
        var inputtxt = document.getElementById("pass")
        var decimal = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
        if (inputtxt.value.match(decimal)!=null) {
            document.getElementById("passinv").innerText = ""
            return true;
        } 
        else 
        {
            document.getElementById("passinv").innerText = "Passwords must include atleast one uppercase,lowercase,number,special character and between 8-15 characters"
            return false;
        }
        return false;
    }

</script>

</head>

<body>
 <% 
 response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
 response.setHeader("Pragma","no-cache");
 response.setHeader("Expires","0");

	 if(session.getAttribute("username")!=null)
	 	response.sendRedirect("payment.jsp");
 %>
 
    <div class='Container'>

        <div class='Box'>
            <img src='content/img/campus-ettimadai.jpg' class='Userloginlogo' alt='User' />
            <h1 class='Heads'>Register as a donor</h1>
            <h7 class='Content btn-danger'>* We collect this information only for official records purposes. We won't spam your mails.</h7>
            <div class='Content'>
                <form action='/payment.jsp' onsubmit="return validate()">

                    <div class='FormGroup'>
                        <input class='InputBoxes' name='id' placeholder='Username' pattern="([^\s][A-zÃ-Å¾\s]+)" required></input>
                        
                    </div>


                    <div class='FormGroup'>
                        <input class='InputBoxes' name='email' placeholder='Email ID'
                            title='Please enter a valid Email ID' pattern='^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+$'
                            required></input>
                        
                    </div>

                    <div class='FormGroup'>
                            <input class='InputBoxes' name='password' type='password' id="pass" placeholder='Enter Password'
                                required></input>
                            <span class='Subheads' name='pass' style='visibility: collapse;'></span>
                    </div>

                    <div class='FormGroup'>
                            <input class='InputBoxes' name='password' type='password' id="repass" placeholder='Reenter Password'
                                required></input>
                            <span class='Subheads' name='pass' style='visibility: collapse;'></span>      
                            <h7 class='text-danger' id='passinv'></h7>
                    </div>


                    <input class='btn-lg btn btn-default InputBoxes Select' style="width:150px" type='submit' value='Register' /><br />
                    
                    <div class='FormGroup'>
                        <a href="login.jsp">
                            <button type='button' class='btn-md btn btn-default Smbtn' value='Login'>
                                Login</button></a>

                        <a href="register.jsp">
                            <button type='button' class='btn-md btn btn-default Smbtn' value='Forgot Password?'>Forgot Password?</button></a>
                    </div>

                </form>

            </div>
        </div>
    </div>
</body>

</html>