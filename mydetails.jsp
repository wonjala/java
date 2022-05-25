<%@page import="java.sql.*"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
      <style>
          /* Googlefont Poppins CDN Link */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
.sidebar{
  position: fixed;
  height: 100%;
  width: 240px;
  background: #334195;
  transition: all 0.5s ease;
}
.sidebar.active{
  width: 60px;
}
.sidebar .logo-details{
  height: 80px;
  display: flex;
  align-items: center;
  padding-left: 15px;
}
.sidebar .logo-details .logo-container{
    width:30px;
    height:30px;
}
.sidebar .logo-details .logo-container img{
object-fit: cover;
width: 100%;
}
.sidebar .logo-details .logo_name{
  color: #fff;
  font-size: 20px;
  font-weight: 500;
  margin-left: 8px;
}
.sidebar .nav-links{
  margin-top: 10px;
}
.sidebar .nav-links li{
  height: 50px;
}
.sidebar .nav-links li a{
  height: 100%;
  width: 100%;
  display: flex;
  border-radius: 3px;
  align-items: center;
  text-decoration: none;
  transition: all 0.4s ease;
}
.sidebar .nav-links li a.active{
  background: #4059AD;
  
}
.sidebar .nav-links li a:hover{
  background: #4059AD;
}
.sidebar .nav-links li i{
  min-width: 60px;
  text-align: center;
  font-size: 18px;
  color: #fff;
}
.sidebar .nav-links li a .links_name{
  color: #fff;
  font-size: 15px;
  font-weight: 400;
  white-space: nowrap;
}
.sidebar .nav-links .log_out{
  position: absolute;
  bottom: 0;
  width: 100%;
}
.home-section{
  position: relative;
  background: #f5f5f5;
  min-height: 100vh;
  width: calc(100% - 240px);
  left: 240px;
  transition: all 0.5s ease;
}
.sidebar.active ~ .home-section{
  width: calc(100% - 60px);
  left: 60px;
}
.home-section nav{
  display: flex;
  justify-content: space-between;
  height: 80px;
  background: #fff;
  display: flex;
  align-items: center;
  position: fixed;
  width: calc(100% - 240px);
  left: 240px;
  z-index: 100;
  padding: 0 20px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  transition: all 0.5s ease;
}
.sidebar.active ~ .home-section nav{
  left: 60px;
  width: calc(100% - 60px);
}
.home-section nav .sidebar-button{
  display: flex;
  align-items: center;
  font-size: 24px;
  font-weight: 500;
}
nav .sidebar-button i{
  font-size: 35px;
  margin-right: 10px;
}

.home-section nav .profile-details{
  display: flex;
  
  align-items: center;
  background: #F5F6FA;
  border: 2px solid #EFEEF1;
  border-radius: 6px;
  height: 50px;
  min-width: 190px;
  padding: 0 15px 0 2px;
}
nav .profile-details img{
  height: 40px;
  width: 40px;
  border-radius: 6px;
  object-fit: cover;
}
nav .profile-details .admin_name{
  font-size: 15px;
  font-weight: 500;
  color: #333;
  margin: 0 10px;
  white-space: nowrap;
}
nav .profile-details i{
  font-size: 25px;
  color: #333;
}
.home-section .home-content{
  position: relative;
  padding-top: 104px;
}

.home-content .sales-boxes{
  display: flex;
  justify-content: space-between;
  padding: 20px;
  /* padding: 0 20px; */
}

/* left box */
.home-content .sales-boxes .recent-sales{
  width: 95%;
  background: #fff;
  padding: 20px 30px;
  margin: 0 20px;
  border-radius: 12px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}
.home-content .sales-boxes .sales-details{
  display: flex;
  align-items: center;
  justify-content: space-between;
}
   table{
            margin: 30px;
            width: 94%;
            margin: 0px auto;
            text-align: center;
            align-items: center;
   
        }
         h2{
            text-align: center;
            margin-top: 50px;
            
        }
        table th{
            font-size: 18px;
          
        }
        table tr{
            background-color: whitesmoke;
            margin-bottom: 12px;
            height: 28px;
        }
        table button{
            border: none;
            background-color: white;
            cursor: pointer;
         
        }
.sales-boxes .box .title{
  font-size: 24px;
  font-weight: 500;
  text-align: center;
  /* margin-bottom: 10px; */
}


      </style>
    <meta charset="UTF-8">
    <!--<title> Responsiive Admin Dashboard | CodingLab </title>-->
    <link rel="stylesheet" href="style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="admin.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
          <div class="logo-container">
            <img src="logo.png">
        </div>
      <span class="logo_name">Electricity Billing</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="admin.jsp">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
            <a href="http://localhost:8080/ebilling1/mydetails.jsp?id=100" class="active">
        <i class='bx bx-user'></i>
            <span class="links_name">My Details</span>
          </a>
        </li>
       
        <li>
          <a href="adduser.jsp">
           <i class='bx bx-user-plus' ></i>
            <span class="links_name">Add User</span>
          </a>
        </li>
        
        <li>
            <a href="viewuser.jsp" >
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">View User</span>
          </a>
        </li>
        <li>
          <a href=calculatebill.jsp>
           <i class='bx bx-calculator' ></i>
            <span class="links_name">Calculate Bill</span>
          </a>
        </li>
        <li>
            <a href="payments.jsp" >
       <i class='bx bx-history' ></i>
            <span class="links_name">Payment History</span>
          </a>
        </li>
        <li>
          <a href="oldpassword.jsp">
            <i class='bx bx-cog' ></i>
            <span class="links_name">Change Password</span>
          </a>
        </li>
        <li class="log_out">
          <a href="login.jsp">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">My Details</span>
      
     
    </nav>

    <div class="home-content">
     
       
      <div class="sales-boxes">
        <div class="recent-sales box">
            <div class="title">Personal Details</div><br>
          <div class="sales-details">
           
        
                <table>
                        
               <%
            Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/ebilling","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
String id=request.getParameter("id");
ResultSet rs=stmt.executeQuery("select * from register where uid="+id);  
while (rs.next()){
        %>
                    <tr>
                        <th>  User Id: </th>  <td>  <%=rs.getInt(1)%> </td>
                     
                        
                    </tr><br>
                     <tr>
                        <th>    Name:   </th>  <td>  <%=rs.getString(2)%> </td>
                     
                        
                    </tr><br>
                     <tr>
                        <th>  Address: </th>  <td>  <%=rs.getString(3)%> </td>
                     
                        
                    </tr><br>
                     <tr>
                        <th>  Phone No.: </th>  <td>  <%=rs.getInt(4)%> </td>
                     
                        
                    </tr><br>
                     <tr>
                        <th>  Email: </th>  <td>  <%=rs.getString(5)%> </td>
                     
                        
                    </tr><br>
                    
                 <%}
                 con.close();%>
                </table>
    
  </section>

  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>
</html>

