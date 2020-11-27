<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Samaritan </title>
    <link rel = "icon" href = "content/img/samaritan.png" type = "text"> 
    
    <script src="content/jquery/jquery.min.js"></script>
   <link rel="stylesheet" href="content/css/bootstrap.css">
</head>

<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
%>

    <button class="btn btn-secondary"><a href="index.jsp">Take me to home page</a></button>
     <div class="container" style="max-width:600px;">
        
        <div class="table-responsive">
            <img src='content/img/campus-ettimadai.jpg' width="100%" alt='img'/>
            <table class="table table-striped table-bordered mx-auto w-auto"> 
                <tr>
                    <th>Receipt No.</th>
                    <td><%= session.getAttribute("receiptid") %></td>
                </tr>
                <tr>
                    <th>Dated on</th>
                    <td><%= session.getAttribute("donated_date") %></td>
                </tr>
                <tr>
                    <th>Recieved with thanks from</th>
                    <td><%= session.getAttribute("username") %></td>
                </tr>
                <tr>
                    <th>PAN No.</th>
                    <td><%= session.getAttribute("pan_number") %></td>
                </tr>
                <tr>
                    <th>Sum of Rupees</th>
                    <td>&#x20B9; <%= session.getAttribute("amount") %> only</td>
                </tr>
                <tr>
                    <th>Signature</th>
                    <td><img src="https://dominionstamps.com/wp-content/uploads/2014/12/signature-stamp-medium-720x421.jpg" style="max-width:200px;" /></td>
                </tr>
            </table>
            <button class="btn btn-primary" onclick="window.print()">Print Receipt</button>
        </div>
    	</div>

</body>

</html>