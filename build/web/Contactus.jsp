<%-- 
    Document   : Contactus
    Created on : Nov 15, 2016, 8:42:00 PM
    Author     : ABC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact us</title>
    </head>
     <style type="text/css">
       body
        {
            background-image:url('images/bg.jpg');
           background-repeat:no-repeat;
           background-size: cover;
        }
        </style>
    <body>
        <h1 align="center"><b>Contact Us</b></h1>
        <table>
        <td rowspan="20"><th>
            
                    <tr><td colspan="20"> <a href="Our offices.jsp" target="left">Our offices</a></td>
                     <tr><td colspan="20"> <a href="tollfreenum.jsp" target="left">Toll free numbers</a></td>
                     <tr><td colspan="20"> <a href="inforeq.jsp" target="left">Information request</a></td>
        </table>
        <div class="w3-content w3-display-container">
  <img class="mySlides" src="dining.jpg" style="width:100%">
  <img class="mySlides" src="dining1.jpg" style="width:100%">
  <img class="mySlides" src="lodge.jpg" style="width:100%">
  <img class="mySlides" src="room.jpg" style="width:100%">

  <a class="w3-btn-floating w3-display-left" onclick="plusDivs(-1)">&#10094;</a>
  <a class="w3-btn-floating w3-display-right" onclick="plusDivs(1)">&#10095;</a>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>


    </body>
</html>
