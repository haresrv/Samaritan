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
            $("#2").addClass("is-active")
        });

    </script>
    <link rel="stylesheet" type="text/css" href="content/css/sponsor_admin.css">
    
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


            <div class="container">
            <section class="filterBar">
               <div class="search-ui">
             <label for="search">Search</label>
             <div>
                  <input type="text" placeholder="Start typing..." id="filter" name="search">
                  <button onclick="filterout()">Search</button>
              </div>
               </div>
               <div class="filter-ui">
            <label for="filters">Filter by</label>
            <div class="styled-select">
               <select name="accountStatus" id="filters" onchange="filterbyrole()">
                  <option value="">Everyone</option>
                  <optgroup label="Audience">
                     <option value="Sponsor">Sponsor</option>
                  </optgroup>
                  <optgroup label="Organization">
                     <option value="Admin">Admins</option>
                     <option value="Moderator">Moderators</option>
                     <option value="_">Staff</option>
                  </optgroup>
               </select>
            </div>
               </div>
            </section>

            <table class="dbdetails" id="dbdetails">
               <tr class="table-header">
                  <th>Member Since</th>
                  <th>Role</th>
                  <th>Email ID</th>
                  <th class="roleHead">Username</th>
                  <th class="statusHead">Status</th>
               </tr>
              
            </table>

            </div>
      
            </div>
        </div>
    </div>
    

<script type="text/javascript">

var db = <%= session.getAttribute("users") %>;
console.log(db);

var table = document.getElementById("dbdetails");
var col = [];
     for (var i = 0; i < db.length; i++) {
         for (var key in db[i]) {
             if (col.indexOf(key) === -1) {
                 col.push(key);
             }
         }
     }

createagain(db)

function createagain(db)
{
   $("#dbdetails tr>td").remove();

   var tr = table.insertRow(-1);     

   for (var i = 0; i < db.length; i++) {

            tr = table.insertRow(-1);

            for (var j = 0; j < col.length; j++) {
                var tabCell = tr.insertCell(-1);
                tabCell.innerHTML= db[i][col[j]]
                switch (col[j])   
                {  
                   case 'username':  
                       tabCell.className= "username"
                       break;  
                   case 'email':  
                       tabCell.innerHTML= "<a href='mailto:email@email.com'>"+db[i][col[j]]+"</a>"
                       tabCell.className= "email"
                       break;  
                   case 'Role': 
                       switch(db[i][col[j]])
                       {
                        case 'Moderator':
                           tabCell.className= "moderator"    
                           break
                        case 'Admin':
                           tabCell.className= "admin"    
                           break
                        default:
                           tabCell.className= "commenter"    
                           break      
                       } 
                       break;  
                   case 'Status':  
                       switch(db[i][col[j]])
                       {
                        case 'Suspended':
                           tabCell.className= 'suspendedUser'   
                           break
                        case 'Banned':
                           tabCell.className= 'bannedUser'  
                           break     
                        default:
                           tabCell.className= 'activeUser'  
                           break    
                       } 
                       break;                           
                } 
                
            }
        }
}

function filterout()
{
   var x = document.getElementById("filter")
   document.getElementById("filters").value=""
   console.log(x.value)
   createagain(db.filter((item) =>(item.username.toLowerCase().startsWith(x.value.toLowerCase()))))
}      

function filterbyrole()
{
   var x = document.getElementById("filters")
   document.getElementById("filter").value=""
   createagain(db.filter((item) =>(item.Role.toLowerCase().startsWith(x.value.toLowerCase()))))
}  
</script>
</body>

</html>

