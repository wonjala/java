
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
            height: 520px;
            width: 400px;
            background-color: whitesmoke;
            position: absolute;
            transform: translate(-50%,-50%);
            top: 60%;
            left: 20%;
            border-radius: 10px;
            backdrop-filter: blur(2px);
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
        form h3{
            font-size: 32px;
            font-weight: 500;
            line-height: 42px;
            text-align: center;
            color: #0a3860;
        }

        label{
            display: block;
            margin-top: 30px;
            font-size: 16px;
            font-weight: 500;
            color: black

        }
        input{
            display: block;
            height: 50px;
            width: 100%;
            background-color: appworkspace;
            border-radius: 3px;
            padding: 0 10px;
            margin-top: 8px;
            font-size: 14px;
            font-weight: 300;
        }
        ::placeholder{
            color: grey;
        }
        button{
            margin-top: 50px;
            width: 100%;
            background-color: #0a3860;
            color: white;
            padding: 15px 0;
            font-size: 18px;
            font-weight: 600;
            border-radius: 5px;
            cursor: pointer;
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

    </style>
    <body>

        <!-- the header -->
        <header>

            <!-- our main logo -->
            <a id="logo" href="index.html">
                <img src="logo.png" alt="Logo">
                <span>Electricity Billing System</span>
            </a>

            <!-- main navigation links -->
            <nav>
                <ul>

               
                    <li><a class="active" href="#">Log In</a></li>
                </ul>
            </nav>

        </header>

        <!-- the content -->
        <main>

            <!-- hero content -->
            <div class="hero">
                <!-- content for the hero -->

                <form action="testservelet2" method="post">

                    <h3>Login Here</h3>

                    <label for="username">Username</label>
                    <input type="text" name="username" placeholder="Name
                           " id="username">

                    <label for="password">Password</label>
                    <input type="password" name="password" placeholder="Password" id="password">

                    <button type="submit" name="button" value="signin"> LOGIN</button>

                </form>



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
 