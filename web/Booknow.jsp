<%-- 
    Document   : Booknow
    Created on : Jan 2, 2017, 8:47:22 PM
    Author     : ABC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book now </title>
    </head>
    <style type="text/css">
        body
        {
           background-image:url('images/bg.jpg');
           background-repeat:no-repeat;
           background-size: cover;
        }
        table.bk{
            width:500px;
            height:700px;
            background-color:rgba(0,0,0,0.2);
            margin:0 auto;
            margin-top: 80px;
            padding-top:30px;
            padding-left:10px;
            border-radius:15px;
            -webkit-border-radius: 15px;
            -o-border-radius:15px;
            -moz-border-radius:15px;
            color:white;
            font-weight: bolder;
            box-shadow:inset -4px -4px rgba(0,0,0,0.5);
            font-size:18px;
        }
        .bk button 
        {
            width:100px;
            height:35px;
            border:o;
            border-radius:5px;
             -webkit-border-radius: 5px;
            -o-border-radius:5px;
            -moz-border-radius:5px;
            background-color:yellowgreen;
            font-weight:bolder;
            padding-right:80px;
        }
        </style>
        
        
    <body>
         <table class="bk">
        <h1><p align="left">Booking Details</p>
           
                
           <tr><td>First name:</td>
                     <td><input type="text" name="fname" value=""/></td></tr>
                 <tr><td>Last name:</td>
                 <td><input type="text" name="lname" /></td></tr>
                  <tr><td>City:</td>
                     <td><input type="text" name="city" value=""/></td></tr>
                  <tr><td>Address:</td>
                     <td><input type="text" name="address" value=""/></td></tr>
             <tr><td>contact no:</td>
                 <td><input type="text" name="contactno"/></td></tr>
             <tr><td>Check-in:</td>
                 <td><input type="date" name="ckin"></td></tr>
                 <tr><td>Check-out:</td>
                     <td><input type="date" name="ckout"></td></tr>
                 <tr><td>Number of guest:</td>
                     <td><input type="text" name="nog"/></td></tr>
                 <tr><td>Type of Room:</td>
                     <td><select>
                                 <option value="single room">single room</option>
                                 <option value="Standard room">Standard room</option>
                                 <option value="Triple or Family room">Triple or Family room</option>
                                 <option value="Deluxe room">Deluxe room</option>
                                 <option value="Adjoin room">Adjoin room</option>
                         </select>
   
                     </td></tr>
                 <tr><td>Number of room:</td>
                     <td><input type="text" name="norooms"/></td></tr>
                  <tr><td>Payment mode:</td>
                      <td><select>
                                 <option value="credit card">credit card</option>
                                 <option value="cash">cash</option>
                      </select>
                     </td></tr>
                   <tr><td><button onclick="pageunderconstruction.jsp"><a href="pageunderconstruction.jsp">Book</a></button> </td></tr>
            </table>
                 
        </table>

    </body>
</html>
