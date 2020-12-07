<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel = "icon" href = "content/img/samaritan.png" type = "text"> 
    <link rel="stylesheet" href="content/css/login.css">
    <link rel="stylesheet" href="content/css/bootstrap.css">
<script type="text/javascript">
 
    function CheckPassword() {
        var inputtxt = document.getElementById("pass")
        var decimal = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
        if (inputtxt.value.match(decimal)!=null) {
            document.getElementById("passinv").innerText = ""
            return true;
        } 
        else 
        {
            document.getElementById("passinv").innerText = "Password doesn't follow recommended practices. If you don't have an account, please click on Register"
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
                <h1 class='Heads'>Login</h1>
                <h7 class='Content btn-danger'>* We collect this information only for official records purposes. We won't spam your mails.</h7>
            
                <div class='Content'>
                    <form action='Gotopayment' onsubmit="return CheckPassword()" method="post">
    
                        <div class='FormGroup'>
                            <input class='InputBoxes' name='id' placeholder='Username' pattern="([^\s][A-zÃ-Å¾\s]+)" required></input>
                            <span class='Subheads' name='userinv' style='visibility: collapse;'>Enter a
                                username!</span>
                        </div>
    
                        <div class='FormGroup'>	
                            <input class='InputBoxes' name='password' type='password' id="pass" placeholder='Password'
                                required></input>
                            <span class='Subheads' name='passinv' style='visibility: collapse;'>Invalid
                                password!</span>
                                <h7 class='text-danger' id='passinv'></h7>
                             <%  if(session.getAttribute("error")!=null) {%>
                            	<h7 class='text-danger' id='passinv'><%= session.getAttribute("error") %>  </h7>
                            	<%} %>
                        </div>
    
                        <input class='btn-lg btn btn-default InputBoxes Select' type='submit' value='Login' /><br />
                        <div class='FormGroup'>
                            <a href="register.jsp">
                            <button type='button' class='btn-md btn btn-default Smbtn' value='Register' > Register</button></a>

                            <a href="index.jsp">
                            <button type='button' class='btn-md btn btn-default Smbtn' value='Forgot Password?'>Forgot Password?</button></a>
                        </div>
                    </form>
    
                </div>
            </div>
    </div>
</body>
</html>
