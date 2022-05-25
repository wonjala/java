<%@page import="java.sql.*"%>
<!DOCTYPE html>
<% session=request.getSession(false);
System.out.println("the session value in jsp is" + session.getAttribute("username"));
if(session.getAttribute("username")!=null){
%>

<html lang="en" dir="ltr">
  <head>
      <script src="http://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
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
    width: 100%;
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
.home-content .overview-boxes{
  display: flex;
  align-items: center;
  justify-content:  space-around;
  flex-wrap: wrap;
  padding: 0 20px;
  margin-bottom: 26px;
}
.overview-boxes .box{
  display: flex;
  align-items: center;
  justify-content: center;
  width: calc(100% / 3 - 15px);
  background: #fff;
  padding: 15px 14px;
  border-radius: 12px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.1);
}
.overview-boxes .box-topic{
  font-size: 30px;
  font-weight: 500;
}

.flex-contain {
    width: 100%;
    display: flex;
    align-content: center;
    justify-content: space-between;
}

.home-content .box .number{
  display: inline-block;
  font-size: 40px;
  margin-top: -6px;
  font-weight: 500;
}
.home-content .box .indicator{
  display: flex;
  align-items: center;
}
.home-content .box .indicator i{
  height: 20px;
  width: 20px;
  background: #8FDACB;
  line-height: 20px;
  text-align: center;
  border-radius: 50%;
  color: #fff;
  font-size: 20px;
  margin-right: 5px;
}
.box .indicator i.down{
  background: #e87d88;
}
.home-content .box .indicator .text{
  font-size: 12px;
}
.home-content .box .cart{
  display: inline-block;
  font-size: 60px;
  height: 80px;
  width: 80px;
  background: #cce5ff;
  line-height: 80px;
  text-align: center;
  color: #66b0ff;
  border-radius: 12px;
  margin-right: 100px

}
.home-content .box .cart.two{
   color: #2BD47D;
   background: #C0F2D8;
 }
 .home-content .box .cart.three{
   color: #ffc233;
   background: #ffe8b3;
 }


.home-content .total-order{
  font-size: 20px;
  font-weight: 500;
}
.home-content .sales-boxes{
  display: flex;
  justify-content: space-between;
  /* padding: 0 20px; */
}
  table{
            margin: 30px;
            width: 94%;
            margin: 0px auto;
            text-align: center;
            align-items: center;
            padding-top: 20px
   
        }
         h2{
            text-align: center;
            margin-top: 50px;
            
        }
        table tr{
            background-color: lightsteelblue;
            margin-bottom: 12px;
            height: 28px;
        }
        table button{
            border: none;
            background-color: white;
            cursor: pointer;
         
        }


/* left box */
.home-content .sales-boxes .recent-sales{
  width: 65%;
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
.sales-boxes .box .title{
  font-size: 24px;
  font-weight: 500;
  padding-left: 30px
  /* margin-bottom: 10px; */
}
.sales-boxes .sales-details li.topic{
  font-size: 20px;
  font-weight: 500;
}
.sales-boxes .sales-details li{
  list-style: none;
  margin: 8px 0;
}
.sales-boxes .sales-details li a{
  font-size: 18px;
  color: #333;
  font-size: 400;
  text-decoration: none;
}
.sales-boxes .box .button{
  width: 100%;
  display: flex;
  justify-content: flex-end;
}
.sales-boxes .box .button a{
  color: #fff;
  object-fit: cover;
  background: #e84393;
  padding: 4px 12px;
  font-size: 15px;
  font-weight: 400;
  border-radius: 4px;
  text-decoration: none;
  transition: all 0.3s ease;
}
.sales-boxes .box .button a:hover{
  background:  #0d3073;
}

/* Right box */
.home-content .sales-boxes .top-sales{
  width: 35%;
  background: #fff;
  padding: 20px 30px;
  margin: 0 30px 0 0;
  border-radius: 12px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  
  
}
 /* (A) PIE CHART */
.donut {
  /* (A1) CIRCLE */
  margin-left: 50px;
  width: 250px; height: 250px;
  border-radius: 50%;
 
  /* (A2) SEGMENTS */
  background: conic-gradient(
    skyblue 0deg 80deg,
      #FF4C4C 0deg 360deg
   
   
  );
}
/* (B) DONUT "CONVERSION" */
/* (B1) SMALLER CIRCLE */
.hole {
   
  width: 150px; height: 150px;
  border-radius: 50%;
  background: #fff;
}
 
/* (B2) "CONVERT PIE TO DONUT" - CENTER SMALLER CIRCLE */
.donut {
    
  display: flex;
  align-items: center;
  justify-content: center;
}
.legend {
  display: flex;
  margin-top: 30px;
  margin-left: 90px;
}
 
/* (C2) SEGMENTS */
.legend div { padding: 0 10px; }
.segment1 { background: #FF4C4C; }

.segment2 { background: skyblue; }

.sales-boxes .top-sales li{
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 10px 0;
}
.sales-boxes .top-sales li a img{
  height: 40px;
  width: 40px;
  object-fit: cover;
  border-radius: 12px;
  margin-right: 10px;
  background: #333;
}
.sales-boxes .top-sales li a{
  display: flex;
  align-items: center;
  text-decoration: none;
}
.sales-boxes .top-sales li .product,
.price{
  font-size: 17px;
  font-weight: 400;
  color: #333;
}
/* Responsive Media Query */
@media (max-width: 1240px) {
  .sidebar{
    width: 60px;
  }
  .sidebar.active{
    width: 220px;
  }
  .home-section{
    width: calc(100% - 60px);
    left: 60px;
  }
  .sidebar.active ~ .home-section{
    /* width: calc(100% - 220px); */
    overflow: hidden;
    left: 220px;
  }
  .home-section nav{
    width: calc(100% - 60px);
    left: 60px;
  }
  .sidebar.active ~ .home-section nav{
    width: calc(100% - 220px);
    left: 220px;
  }
}
@media (max-width: 1150px) {
  .home-content .sales-boxes{
    flex-direction: column;
  }
  .home-content .sales-boxes .box{
    width: 100%;
    overflow-x: scroll;
    margin-bottom: 30px;
  }
  .home-content .sales-boxes .top-sales{
    margin: 0;
  }
}
@media (max-width: 1000px) {
  .overview-boxes .box{
    width: calc(100% / 2 - 15px);
    margin-bottom: 15px;
  }
}
@media (max-width: 700px) {
  nav .sidebar-button .dashboard,
  nav .profile-details .admin_name,
  nav .profile-details i{
    display: none;
  }
  .home-section nav .profile-details{
    height: 50px;
    min-width: 40px;
  }
  .home-content .sales-boxes .sales-details{
    width: 560px;
  }
}
@media (max-width: 550px) {
  .overview-boxes .box{
    width: 100%;
    margin-bottom: 15px;
  }
  .sidebar.active ~ .home-section nav .profile-details{
    display: none;
  }
}
  @media (max-width: 400px) {
  .sidebar{
    width: 0;
  }
  .sidebar.active{
    width: 60px;
  }
  .home-section{
    width: 100%;
    left: 0;
  }
  .sidebar.active ~ .home-section{
    left: 60px;
    width: calc(100% - 60px);
  }
  .home-section nav{
    width: 100%;
    left: 0;
  }
  .sidebar.active ~ .home-section nav{
    left: 60px;
    width: calc(100% - 60px);
  }
 
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
          <a href="admin.jsp" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="mydetails.jsp?id=100">
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
          <a href="calculatebill.jsp">
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
        
        <div class="flex-contain">
          <span class="dashboard">Dashboard</span>
      
      <div class="profile-details">
        <!--<img src="images/profile.jpg" alt="">-->
        <span class="admin_name"> Admin</span>
        <i class='bx bx-chevron-down' ></i>
      </div>  
        </div>
        
    </nav>

    <div class="home-content">
      <div class="overview-boxes">
        <div class="box">
            <i class='bx bxs-user-circle cart'></i>
          <div class="right-side">
            <div class="box-topic">Total Users</div>
            <div class="number">15</div>
           
          </div>
         
        </div>
        <div class="box">
           <i class='bx bxs-user-check cart two' ></i>
          <div class="right-side">
            <div class="box-topic">Payments</div>
            <div class="number">2</div>
           
          </div>
         
        </div>
       
        <div class="box">
          <i class='bx bxs-user-x cart three' ></i>
          <div class="right-side">
            <div class="box-topic">Not Paid</div>
            <div class="number">6</div>
           
          </div>
         
        </div>
      </div>

      <div class="sales-boxes">
        <div class="recent-sales box">
          <div class="title">Payment Details</div>
          <div class="sales-details">
         
          <table>
  
            <tr>
                <th> User Id </th>
                            <th> Name </th>
                            <th>Address</th>
                            <th> Phone </th>
                            <th> Amount </th>
                            
                            
              </tr>
                <%
                            String id = request.getParameter("id");
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection(
                                    "jdbc:mysql://localhost:3306/ebilling", "root", "");
//here sonoo is database name, root is username and password  
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery("select * from userlogin where paid='1'");
                            while (rs.next()) {
                        %>
           
               <tr>
                            <td> <%=rs.getInt(1)%> </td>
                            <td><%=rs.getString(2) %></td>
                            <td><%=rs.getString(3) %></td>
                            <td><%=rs.getString(4) %></td>
                            <td><%=rs.getString(7) %></td>
                            
                        </tr>
                        
                          

                        <% }
                            con.close();%>
                        
        </table>
        </div>
        </div>
        <div class="top-sales box">
            <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

            <div class="title">Payments</div><br>
    
<!-- (A) DONUT CHART -->
<div class="donut"><div class="hole"></div></div>
<div class="legend">
  <div class="segment1"></div> <div>Not Paid</div>
  <div class="segment2"></div> <div>Paid</div>
  
  
</div>
        </div>
      </div>
    </div>
  </section>

  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
const logoName = document.querySelector(".logo_name");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
  logoName.style.display = "none";
}else {
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
  logoName.style.display = "block";
  }
}
 </script>
 <%}
else{
response.sendRedirect("http://localhost:8080/ebilling1/login.jsp");
}
%>

</body>
</html>

