<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <style>
     body{background:#59ABE3;margin:0}
.form{width:340px;height:440px;background:#e6e6e6;border-radius:8px;box-shadow:0 0 40px -10px #000;margin:calc(50vh - 220px) auto;padding:20px 30px;max-width:calc(100vw - 40px);box-sizing:border-box;font-family:'Montserrat',sans-serif;position:relative}
h2{margin:10px 0;padding-bottom:10px;width:180px;color:#78788c;border-bottom:3px solid #78788c}
input{width:100%;padding:10px;box-sizing:border-box;background:none;outline:none;resize:none;border:0;font-family:'Montserrat',sans-serif;transition:all .3s;border-bottom:2px solid #bebed2}
input:focus{border-bottom:2px solid #78788c}
p:before{content:attr(type);display:block;margin:28px 0 0;font-size:14px;color:#5a5a5a}
button{float:right;padding:8px 12px;margin:8px 0 0;font-family:'Montserrat',sans-serif;border:2px solid #78788c;background:0;color:#5a5a6e;cursor:pointer;transition:all .3s}
button:hover{background:#78788c;color:#fff}
div{content:'Hi';position:absolute;bottom:-15px;right:-20px;background:#50505a;color:#fff;width:320px;padding:16px 4px 16px 0;border-radius:6px;font-size:13px;box-shadow:10px 10px 40px -14px #000}
span{margin:0 5px 0 15px}   
    </style>
    <head>
    <h1>Tranaction Failed</h1>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
       <form class="form" action ="http://localhost:8080/Credit_card_validation/ValidateFormDate.jsp">
  <h2>Provide Your Information</h2>
  <p><input type="text" placeholder="Write your name here.."></input></p>
  <p ><input type="text" Name ="Credit_card" placeholder="Enter your Credit Card Number here"></input></p>
  <p ><input type="password" Name ="PIN" placeholder="Enter your 4 digit PIN"></input></p>
  <p ><input type="text" Name ="Amount" placeholder="Amount You need to pay"></input></p>
  <p ><input  type="text" Name ="Exp_date" placeholder="DD/MM/YYYY"></input></p>
  <button><input type ="submit" value ="Pay Now"></button> 
</form>
    <list><center>P<lh>lease check the following</lh>
        <li>Your Credit Card number is Correct</li>
        <li>Expiry date of your card is atleast one day due</li>
        <li>Your PIN used is having Unique Digits</li>
        <li>Amount Should Not Exceed 500</li>
        </center>
        </list>
    </body>
</html>
