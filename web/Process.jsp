<%-- 
    Document   : Process
    Created on : Feb 26, 2017, 3:29:28 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@page import="bean.RegisterDao"%>  
        <jsp:useBean id="obj" class="bean.User"/>  

        <jsp:setProperty property="*" name="obj"/>  

        <%
            int status = RegisterDao.register(obj);
            if (status > 0) {
               %>
               <h1> You are successfully registered</h1>
              <%      
            }
           
            

        %>  
        <jsp:include page="Login.jsp"/>
    </body>
</html>
