<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <title>Dashboard Admin</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            display:block;
        }
        aside{
            padding-top: 20px;
            height: 100%;
            width: 250px;
            left: 0;
            background-color: rgb(15, 15, 15);
            display: inline-block;
            text-align: left;
            position: fixed;
            font-size: 15px;
            letter-spacing: 1px; 
        }
        aside h2{
            color: #FFF;   
            margin: 2px 20px 30px 20px;
            font-weight:500;
        }
        aside i{
            color: green;
        }
        aside p{
            color: rgb(173, 173, 173);
            font-size: 12px;
            padding:12px 20px ;
        }
        aside ul   {
            list-style: none;
            margin: 0;
        }
        /* aside ul li {
            display: inline-block;
        } */
        aside ul li a i{
            color: green;
            margin-right: 7px;
        }
        aside ul li a    {
            color: rgb(173, 173, 173);
            text-decoration: none;
            display: block;
            margin: 10px 20px;
            padding: 11px 14px;
            border-radius: 3px;
            transition: 0.3s ease all;
        } 
        aside ul li a:hover   {
            background: #444;
            color: #FFF;
        }
        aside ul li a.active{
            background: #444;
            color: #FFF;

        }
        
        /*   main start   */

        main{
            background-color: #f0f0f0;
            /* background: rgba(75, 73, 73, 0.041); */

            height: 646px;
            margin-left: 250px;
            padding-bottom: 10px;
        }
        main h3{
            color: black;
            background-color: #FFF;
            padding: 22px 24px;
            font-weight: 600;
            font-size: 22px;
            letter-spacing: 1px;
        }
        .fund, .payment{
            margin: 10px 30px 0px 30px;
            padding: 5px 0px;
            font-family: "Nunito Sans",sans-serif;
            font-size: 16px;
            align-items: center;
        }
        .out_box{
            display: flex;
            flex-wrap: wrap;
            justify-content:space-between;
            margin-top: 5px;

        }
        .in_box{
            background-color:#FFF;
            color: #2e2e2ead;
            font-size: 12px;
            width: 190px;
            padding:7px 14px;
            border-radius: 3px;
            justify-content:center;
            align-items:center;
            margin: 10px auto 10px 0px;
            border: 1px solid #2e2e2ead;
        }
        .fund i{
            font-size: 16px;
            color: black;
            border: 1px solid black;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            padding: 2px 0px 0px 2px;
            margin-right: 8px;
        }
        .payment{
            margin-top: 0px;
            background-color: white;
            padding: 15px;
            border-radius: 6px;
        }

        /* TABLE START */
        table{
            margin: 30px;
            width: 94%;
            margin: 0px auto;
            text-align: center;
            align-items: center;
   
        }
        table tr{
            background-color: white;
            margin-bottom: 12px;
            height: 28px;
        }
        table th, table td{
            border-right: 1px solid black;

        }
        /* UPTO PAYMENT FINISHED */

        .last{
            margin: 20px 30px 1px 30px;
            display: flex;
            justify-content: space-between;
        }
        .acc_sum{
            background-color: white;
            border-top: 5px solid green;
            border-radius: 6px;
            padding: 15px;
            width: 400px;
        }
        .sum-out-box{
            display: flex;
            margin-top: 15px;
            justify-content:flex-start;
        }
        .bank-logo{
            background-color: #444;
            min-width: 100px;
            height: 100px;
            margin-right: 30px;
        }
        .bank-sum p{
            margin-bottom: 5px;
            font-size: 15px;
        }
        .link_acc{
            background-color: white;
            border-radius: 6px;
            width: 450px;
            padding: 15px;
        }
        .link_acc button{
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            color: #2e2e2ead;
            background-color: white;
            border: 1px solid black;
            border-style: dashed;
            border-radius: 6px;
            font-family: "Nunito Sans",sans-serif;
            font-size: 14px;
        }
    
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
</head>
<body>

    <!-- aside links -->
    <aside>
        <h2>BMS</h2>
        <p>MANAGE</p>
        <ul>
            <li><a class="active" href="#"><i class="fa-solid fa-house"></i> Dashboard</a></li>
            <li><a href="mydetails.html"><i class="fa-solid fa-user"></i> My Details</a></li>
            <li><a href="#"><i class="fa-solid fa-building-columns"></i> Create New Account</a></li>
            <li><a href="#"><i class="fa-solid fa-trash-can"></i> Delete Account</a></li>
            <li><a href=""><i class="fa-solid fa-eye"></i> View Account</a></li>
            <li><a href="#"><i class="fa-solid fa-clock-rotate-left"></i> Transaction History</a></li>
            <li><a href="setting.html"><i class="fa-solid fa-gear"></i> Setting</a></li>
            <li><a href="#"><i class="fa-solid fa-right-from-bracket"></i> Log Out</a></li>
        </ul>
    </aside> 

    <main>
            <h3>Dashboard</h3>
            <div class="fund">
                <h4>Fund Transfer</h4>
                <div class="out_box">
                    <div class="in_box"><i class="fa-solid fa-building-columns"></i>Bank Transfer</div>
                    <div class="in_box"><i class="fa-solid fa-people-arrows-left-right"></i> Within Bank transfer</div>
                    <div class="in_box">Esewa</div>
                    <div class="in_box">Khalti</div>
                </div>
            </div>
            <div class="payment">
                <h4 style="border-bottom:1px solid black;">History</h4>
                <table>
                    <tr>
                        <th>S.N</th>
                        <th>Transaction ID</th>
                        <th>Date</th>
                        <th>Paid to</th>
                        <th>Amount</th>
                        <th>Remarks</th>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>342424</td>
                        <td>2021-01-03</td>
                        <td>esewa</td>
                        <td>2342</td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>323424</td>
                        <td>2001-01-03</td>
                        <td>esewa</td>
                        <td>2232</td>
                        <td>Nice</td>
                      </tr>
                </table>           
            </div>
            <div class="last">
                <div class="acc_sum">
                    <h4>Primary Account</h4>
                    <div class="sum-out-box">
                        <div class="bank-logo"></div>
                        <div class="bank-sum">
                            <p style="color: green;">74587248249827</p>
                            <p style="color:#2e2e2ead ;">Anup Maharjan</p>
                            <p>Bank Management System Ltd</p>
                            <p style="color:#2e2e2ead ;">Kirtipur Branch</p>
                            <p>Actual Balance</p>
                            <p>NRP 33432.33</p>
                        </div> 
                    </div>
                </div>
                <div class="link_acc">
                    <h4>Link Account</h4>
                    <button>+ Link Account</button>
                </div>
            </div>
            
    </main>

</body>
</html>