<%-- 
    Document   : MainPage
    Created on : Nov 15, 2016, 7:36:28 PM
    Author     : ABC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content-type="width=device-width initial-scale=1">
        <link rel="stylesheet" type="text/css" href="style">
         <link rel="shortcut icon" href="resources/favicon/favicon.ico" />
        <link rel="icon" href="resources/favicon/favicon.ico" type="image/x-icon"/>
        <title>Hotel room booking</title>
       
    </head>
    <style type="text/css">
         div.banner{
            width:100%;
            height:5%;
            background-color:rgba(0,0,0,0.1);
            margin:0 auto;
            margin-top:0px;
            padding-top:150px;
            padding-left:10px;
            border-radius:15px;
            -webkit-border-radius:1px; 
            -o-border-radius:15px;
            -moz-border-radius:5px;
            color:black;
            font-weight: bolder;
            background-color:white;
            background-image:url("resources/images/sunshine.jpg");
            background-repeat:no-repeat;
            background-position:top center;
            font-size:18px;
        }
        body
        {
           background-color: ivory;
           background-repeat:no-repeat;
           background-size: cover;
        }
        h3{
        background:orange;
        padding:30px 30px 30px 80px;
        }
        p
        {
            line-height:0.5cm;
        }
        p.title
        {
            line-height:1cm;
        }
        @media screen{
      p.desc
        {
            font-family:cursive;
            font-size:20opt;
            font-style: italic;
            line-height:1cm;
            font-color:red;
        }}
        div.scr
        {
            font-family:cursive;
            font-size:20px;
            font-style: italic;
            line-height:1cm;
            font-color:red;
            
        }
        
        body {margin:0;}
  ul.topnav {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

ul.topnav li {float: left;}

ul.topnav li a {
  display: inline-block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  transition: 0.3s;
  font-size: 17px;
}

ul.topnav li a:hover {background-color: #555;}

ul.topnav li.icon {display: none;}

@media screen and (max-width:680px) {
  ul.topnav li:not(:first-child) {display: none;}
  ul.topnav li.icon {
    float: right;
    display: inline-block;
  }
}

@media screen and (max-width:680px) {
  ul.topnav.responsive {position: relative;}
  ul.topnav.responsive li.icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  ul.topnav.responsive li {
    float: none;
    display: inline;
  }
  ul.topnav.responsive li a {
    display: block;
    text-align: left;
  }
}
       
        </style>
    
        
    <body>
   <div class="banner">   
       <h1><p class='title' align='center'></p></h1>
        </div>
        <div class="scr">
<marquee behavior="scroll" direction="left">Best place to Eat and stay with Bright smiles ..... We put a smile back on your face ..... The places you’d rather be ..... You Are Invited ..... Discover a hotel that defines a new dimension of satisfaction ..... Find your Freedom! ..... Great Location, Service and Stay ..... The art of meeting your highest expectations ..... Twice the comfort, twice the value, twice the Hotel ..... 
</marquee>
</div>
        
        
       <ul class="topnav" id="myTopnav">
  <li><a href="Aboutus.jsp" target="middle">About us</a></li>
  <li><a href="Contactus.jsp" target="middle">Contact Us</a></li>
  <li><a href="RegistrationPage.jsp" target="middle">Registration page</a></li>
  <li><a href="Booknow.jsp" target="middle">Book now</a></li>
  <li><a href="Login.jsp" target="middle">Login</a></li>
  <li><a href="Rooms.jsp" target="middle">Rooms</a></li>
  <li class="icon">
    <a href="javascript:void(0);" style="font-size:15px;" onclick="myFunction()">☰</a>
  </li>
</ul>

<div style="padding-left:16px">
  
</div>

           
            <table>
                <form>
                    <td rowspan="20"><th>
            
                    <tr><td rowspan="20"> <img src="resources/images/lodge.jpg" align="middle" height="150" width="350"/>
                    <tr><td rowspan="20"> <img src="resources/images/room.jpg" align="left" height="150" width="350"/>
                    <tr><td rowspan="20"> <img src="resources/images/room1.jpg" align="right" height="150" width="350"/>
                    <tr><td rowspan="20"><img src="resources/images/dining.jpg" align="right" height="150" width="350"/>   
                </form>
        </table>
            
            <table border="5" caption align="left">
                <td width="500px"><p class="desc"> Serenity Resort is situated at a prime location in Tungarli, Lonavala. It is 2200 feet above the sea level having serene and picturesque location closeto The Lagoona. Also buit during the British era with serene surroundings the 'Tungarli Lake & Dam' is the place where youth climb the mountain top to the Dam and also do rappelling. It is an excellent place for backpack camping. There are some celebrity bunglows in the nearby area. Families, honeymooners, office gatherings, conferences, training programmes, college groups- for all ages and profiles, Lonavala is a universal favourite who are looking for extended moment for peace and quiet and rejuvenation or just to spend hours of trekking and seeking to explore the wonders of nature. Lonavala is a romantic gateway of the crowded metropolitan life in Mumbai and Pune.
                    </p></td>
            
            </table>
       
    </body>
</html>
