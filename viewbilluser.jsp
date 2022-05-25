
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Electricity Billing</title>

  
    
</head>
<style>
    /* resetting browser stuff */
*     {
  box-sizing: border-box;
}
html,
body   {
  margin: 0;
  padding: 0;
  line-height: 1.5;
  font-size: 16px;
}

/* styling our overall page */
body     {
  background: #FFF;
  font-family: Arial, Helvetica, sans-serif;
}

/* styling our header */
header   {
  background: #222;
  color: #FFF;
  padding: 20px 30px;
}

/* logo */
#logo         {
  display: inline-block;
  color: #FFF;
  text-decoration: none;
  width: 49%;
}
#logo img    {
  width: 50px;
  border-radius: 3px;
  margin-right: 8px;
  vertical-align: middle;
}
#logo span   {
  display: inline-block;
}


/* main navigation */
nav     {
  width: 50%;
  display: inline-block;
  text-align: right;
}
nav ul   {
  list-style: none;
  margin: 0;
}
nav ul li {
  display: inline-block;
}
nav ul li a    {
  color: #FFF;
  text-decoration: none;
  display: block;
  padding: 10px 15px;
  border-radius: 3px;
  transition: 0.3s ease all;
}
nav ul li a:hover   {
  background: #444;
}
nav ul li a.active{
      background: #444;
      
  }

/* styling our footer */
footer   {
  background: #222;
  color: #777;
  padding: 40px;
  text-align: center;
}
footer img   {
  display: block;
  border-radius: 5px;
  width: 80px;
  margin: 0 auto 10px;
}

/* styling our main content */
.hero           {
      min-height: 700px;
    
  background-image: url('electricity.jpg');
  background-size: cover;
}
form{
            
            background-color: whitesmoke;
          
            border-radius: 10px;
        
            border: 2px solid rgba(255,255,255,0.1);
            box-shadow: 0 0 40px rgba(8,7,16,0.6);
            padding: 50px 35px;
        }
        form *{
            font-family: 'Poppins',sans-serif;
            color: #1845ad;
            letter-spacing: 0.5px;
            outline: none;
            border: none;
        }
        table{
            width: 94%;
            margin: 0px auto;
            text-align: center;
            align-items: center;
   
        }
        table .h2{
            text-align: center;
            margin-bottom: 50px;
           
        }
        table tr{
            background-color: white;
            margin-bottom: 12px;
            
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
        h2{
            color: whitesmoke;
            text-align: center
        }
/* basic site sections */
.site-section   {
  padding-bottom: 50px;
  padding-top: 50px;
}
.site-section-secondary   {
  background: #EFEFEF;
}
.site-section-inside   {
  width: 80%;
  max-width: 1200px;
  margin: 0 auto;
}
.section-header {
  text-align: center;
  margin-bottom: 30px;
}
.section-header h2  {
  font-size: 30px;
  letter-spacing: 2px;
  text-transform: uppercase;
  font-weight: 300;
  color: #777;
}

/* feature boxes */
.feature-box   {
  display: inline-block;
  width: 33%;
  padding: 20px 30px;
}
.feature-box img  {
  margin-bottom: 12px;
  width: 80px;
}
.feature-box h5   {
  font-size: 20px;
  color: #999;
  text-transform: uppercase;
  font-weight: 300;
  letter-spacing: 2px;
  margin: 0;
}

/* testimonial boxes */
.testimonial-box   {
  display: inline-block;
  width: 33%;
  padding: 20px 30px;
}
.testimonial-content   {
  background: #FFF;
  padding: 15px;
  border-radius: 4px;
  margin-bottom: 15px;
}
.testimonial-author           {

}
.testimonial-author img {
  float: left;
  width: 80px;
  border-radius: 50%;
  margin-right: 15px;
  vertical-align: middle;
}
.testimonial-author h5   {
  font-size: 18px;
  margin: 0;
  padding-top:15px;
}
.testimonial-author span {
  font-size: 14px;
}
p{
    text-align: center;
    font-size: 25px;
        color: white;
}

</style>
<body>

    <!-- the header -->
    <header>

        <!-- our main logo -->
        <a id="logo" href="index.html">
             <img src="logo.png" alt="Logo">
            <span>Electricity Billing System</span>
        </a>
<%            String id=request.getParameter("id");
%>
        <!-- main navigation links -->
        <nav>
            <ul>
                
                <li><a  href="userhome.jsp?id=<%=id%>">Home</a></li>
                <li><a  class="active" href="newuser.jsp?id=<%=id%>">View Bill</a></li>
                      <li><a  href="oldpassworduser.jsp?id=<%=id%>">Change Password</a></li>
                         
                         
                <li><a  href="userlogin.jsp">Log Out</a></li>
            </ul>
        </nav>

    </header>

    <!-- the content -->
    <main>

        <!-- hero content -->
        <div class="hero">
            <!-- content for the hero -->
           
  
        <table>
            <br><br><h2> Electricity Bill</h2><br>
            <tr>
                <th> User Id </th>
                            <th> Name </th>
                            <th>units</th>
                            <th> Due </th>
                            <th> Amount </th>
                            <th>Status</th>
                            <th>Action</th>
              </tr>
                <%
                          
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection(
                                    "jdbc:mysql://localhost:3306/ebilling", "root", "");
//here sonoo is database name, root is username and password  
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery("select * from userlogin where uid="+id);
                            while (rs.next()) {
                        %>
             
               <tr>
                            <td> <%=rs.getInt(1)%> </td>
                             <td> <%=rs.getString(2)%> </td>
                            <td><%=rs.getString(10) %></td>
                            <td>Rs. <%=rs.getString(9) %></td>
                            <td>Rs. <%=rs.getString(7) %></td>
                           
                            <td>
                               <%
                                   if( rs.getBoolean(8) ) {
                                       %> Paid <%
                                   } else { %>
                                   
                                   Unpaid
                                   <%
                                   }
                               %>
                                
                          
                            <td>
                                
                                <button class="update"> <a href=" updatePassword?id=<%=rs.getInt(1)%> "> Pay </a> </button>
                            </td>
                              
                            
                        </tr>
                       
                        <% }
                            con.close();%>
                        
                </table>

             
            </div>
        </div>

        

    </main>

    <!-- the footer -->
    <footer>
        <img src="logo.png" alt="Footer Logo">
        <span>ELectricity Billing System<br>Copyright &copy; 2016-3010 </span>
    </footer>

</body>
</html>
