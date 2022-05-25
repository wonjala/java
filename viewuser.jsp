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
            /* FILTER START */
            .filter{
                display: flex;
                background-color: white;
                height: 80%;

                padding :10px;
                font-size: 20px;
                align-items: center;
                justify-content:center;
            }

            /* TABLE START */
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
            table tr{
                background-color: white;
                margin-bottom: 12px;
                height: 28px;
            }
            table button{
                border: none;
                color: white;
                cursor: pointer;

            }

            table button a {
                color: white;
                text-decoration: none;
            }

            .update, .delete {
                border-radius: 5px;
                padding: 7px 2px;
                color: white;

            }

            .update {

                background-color: #59bb03;
            }
            .delete {

                background-color: orangered;
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
                    <a href="admin.jsp" >
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
                    <a href="viewuser.jsp" class="active">
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
                    <a href="payments.jsp">
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
                    <span class="Viewusers">View Users</span>
                    <div class="search" style="right: 0;position: absolute;top: 020px; margin-right: 20px">
                        <form action="search.jsp">
                            <input class="form-control mr-sm-2 " type="text" name="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-primary my-2 my-sm-3 " type="submit">Search</button>
                        </form>




                    </div>



                    <br>




                </div>

            </nav>


            <table>
                <br><br> <h2> User Details</h2><br>
                <tr>
                    <th> User Id </th>
                    <th> Name </th>
                    <th>Address</th>
                    <th> Email </th>
                    <th> Phone </th>
                    <th>Action</th>
                    <th>Action</th>
                </tr>
                <%
                    String id = request.getParameter("id");
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/ebilling", "root", "");
//here sonoo is database name, root is username and password  
                    Statement stm = conn.createStatement();
                    ResultSet rsq = stm.executeQuery("select * from userlogin");
                    while (rsq.next()) {
                %>

                <tr>
                    <td> <%=rsq.getInt(1)%></td>
                    <td><%=rsq.getString(2)%></td>
                    <td><%=rsq.getString(3)%></td>
                    <td><%=rsq.getString(4)%></td>
                    <td><%=rsq.getString(5)%></td>
                    <td>
                        <button class="update" name="userID" value="update"> <a href=" update.jsp?id=<%=rsq.getInt(1)%> "> Update </a>   </button>


                    <td>
                        <button class="delete"> <a href=" testservelet?id=<%=rsq.getInt(1)%> "> Delete </a> </button>
                    </td>
                    </td>
                </tr>


                <% }
                            conn.close();%>

            </table>

            <script>
                let sidebar = document.querySelector(".sidebar");
                let sidebarBtn = document.querySelector(".sidebarBtn");
                sidebarBtn.onclick = function () {
                    sidebar.classList.toggle("active");
                    if (sidebar.classList.contains("active")) {
                        sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
                    } else
                        sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
                }
            </script>

    </body>
</html>

