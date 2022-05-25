<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="./login.css">
</head>

<body>
    <style>
        * {
    margin: 0;
    padding: 0;
    -webkit-box-sizing: border-box;
            box-sizing: border-box;
  }
  
  body {
    min-height: 100vh;
    font-size: 24px;
   
    background-color: #ebebed;
  }
  
  ul {
    list-style-type: none;
  }
  
  #active {
    color: #FF001E;
  }
  
  .display-flex {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
        -ms-flex-direction: row;
            flex-direction: row;
    -webkit-box-pack: justify;
        -ms-flex-pack: justify;
            justify-content: space-between;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
  }
  
  form > * {
    margin-bottom: 25px;
  }
  
  .heading {
    text-align: center;
  }
  
  a {
    text-decoration: none;
  }
  
  section .container {
    min-height: 100vh;
    width: auto;
    margin: 0 2em;
    position: relative;
  }
  
  section .container .mid-container {
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
    width: 80%;
    min-height: 70vh;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-shadow: 2px 6px 15px -5px rgba(0, 0, 0, 0.555);
            box-shadow: 2px 6px 15px -5px rgba(0, 0, 0, 0.555);
            border-radius: 15px;
  }
  
  section .container .mid-container .form-container {
    -webkit-box-flex: 1;
        -ms-flex: 1;
            flex: 1;
    background-color: #FFFBFA;
    padding: 20px 10px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
        -ms-flex-direction: column;
            flex-direction: column;
    -webkit-box-pack: center;
        -ms-flex-pack: center;
            justify-content: center;
    -webkit-box-align: space-between;
        -ms-flex-align: space-between;
            align-items: space-between;
            border-top-right-radius: 15px;
            border-bottom-right-radius: 15px
  }
  
  section .container .mid-container .form-container .title {
    -webkit-box-flex: 1;
        -ms-flex: 1;
            flex: 1;
    font-size: 22px;
    font-weight: 600;
    color: #334195;
  }
  
  section .container .mid-container .form-container form {
    -webkit-box-flex: 4;
        -ms-flex: 4;
            flex: 4;
    border-radius: 1px;
    padding: 50px;
  }
  
  section .container .mid-container .form-container form .an-input-field {
    -webkit-box-flex: 1;
        -ms-flex: 1;
            flex: 1;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
        -ms-flex-direction: column;
            flex-direction: column;
    -webkit-box-pack: center;
        -ms-flex-pack: center;
            justify-content: center;
    -webkit-box-align: start;
        -ms-flex-align: start;
            align-items: flex-start;
    gap: 5px;
  }
  
  section .container .mid-container .form-container form .an-input-field label {
    font-size: 20px;
    color: black;
    font-family:   sans-serif;
  }
  
  section .container .mid-container .form-container form .an-input-field input {
    width: 100%;
    padding: 10px;
   border:none;
   background-color: lightgrey;
  border-radius: 5px;
    
    font-size: 15px
  }
  
  section .container .mid-container .form-container form .an-input-field input:focus {
    border-color: #334195;
  }
  
  section .container .mid-container .form-container form .an-input-field input:focus + label {
    color: #007bff;
  }
  
  section .container .mid-container .form-container form button {
    padding: 10px 20px;
    border: none;
    background-color: #334195;
    border-radius: 5px;
    color: #FFFBFA;
    cursor: pointer;
    width: 200px;
    margin-left: 140px;
        font-size: 18px;
        
  }
  
  section .container .mid-container .form-container form span a {
    font-size: 18px;
    color: #0431b7;
  }
  
  section .container .mid-container .form-container .create {
    width: 80%;
    padding: 0 15px;
  }
  
  section .container .mid-container .form-container .create a {
    color: #0431b7;
    font-size: 20px;
  }
  
  section .container .mid-container .form-container .create p {
    font-size: 12px;
  }
  
  section .container .mid-container .welcome {
    -webkit-box-flex: 2;
        -ms-flex: 2;
            flex: 1;
    background-color: #334195;
    color: #FFFBFA;
    display: -ms-grid;
    display: grid;
    place-content: center;
    border-bottom-left-radius: 15px;
    border-top-left-radius: 15px;
  }
  
  section .container .mid-container .welcome .title {
    text-align: center;
  
    
    
  }
  
  section .container .mid-container .welcome .title span {
    font-weight: 600;
  }
  
  section .container .mid-container .welcome .sub-title {
    text-align: center;
    font-weight: 300;
    font-size: 17px;
  }
  
  section .container .image {
    width: 90%;
  }
  
  section .container .image img {
    width: 90%;
  }
  /*# sourceMappingURL=login-page.css.map */
  
        </style>

    <section>

        <div class="container">
            <!-- mid ko container -->
            <div class="mid-container">
                


                <div class="welcome">
                    <div class="title"><span>WELCOME</span> </div>
                    <div class="sub-title"> Login to access you admin account </div>
                </div>


                <div class="form-container">
                    <div class="title">Electricity Billing</div>
                    <form action="testservelet" method="post">

                        <!-- Subject ID -->
                        <div class="an-input-field">
                            <label for="adminId">Username</label>
                            <input type="text" id="adminId" name="username" placeholder="Enter Username">
                        </div>
                        <!-- Password field -->
                        <div class="an-input-field">
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" placeholder="Enter Password">
                        </div>
                       

                        <button type="submit" name="button" value="login">
                                Login
                            </button>
                        </div>


                    </form>
                   
                </div>
            </div>


        </div>
    </section>
</body>

</html>