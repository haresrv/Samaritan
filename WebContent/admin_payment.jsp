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
            $('#topnav').load('content/jquery/admin_topnav.jsp');
            $('#sidenav').load('content/jquery/admin_sidenav.html');
            $("#4").addClass("is-active")
        });
    </script>
    <link rel="stylesheet" type="text/css" href="content/css/sponsortable.css">
    
</head>

<body>
    <%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
%>
    
    <div id="topnav"></div>

    <div class="container">
        <div class="columns">
            <div id="sidenav"> </div>
            <div class="column is-9">

                <div class="leaderboard">
                  <header class="tableheader">
                    <img class="logo" src="content/img/sponsortable.png" alt="logo">
                    <h1 class="tableheading">Top Sponsors</h1>
                    <nav class="tablenav">
                      <a href="" class="tablea">This Week</a>
                      <a href="" class="tablea">This Month</a>
                      <a href="" class="tablea">All time</a>
                    </nav>
                  </header>
                  <table>
                    <thead>
                      <tr>
                        <th class="th rank"></th>
                        <th class="th donor">Name</th>
                        <th class="th amt">Amount</th>
                        <th class="th flag">Country</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="rank">1</td>
                        <td class="donor">Himanshu</td>
                        <td class="amt">17120 &#x20B9;</td>
                        <td class="flag"> <img src="content/img/ind.jpg" alt="flag"></td>
                      </tr>
                      <tr>
                        <td class="rank">2</td>
                        <td class="donor">John Reese</td>
                        <td class="amt">629 $ </td>
                        <td class="flag"> <img src="content/img/usa.jpg" alt="flag"></td>
                      </tr>
                       <tr>
                        <td class="rank">3</td>
                        <td class="donor">Sameen Shaw</td>
                        <td class="amt">518 $ </td>
                        <td class="flag"> <img src="content/img/ind.jpg" alt="flag"></td>
                      </tr>
                       <tr>
                        <td class="rank">4</td>
                        <td class="donor">Akshay</td>
                        <td class="amt">100 $</td>
                        <td class="flag"> <img src="content/img/ind.jpg" alt="flag"></td>
                      </tr>
                       
                    </tbody>
                  </table>
                </div>
                
             
                
            </div>
        </div>
    </div>
    


</body>

</html>

