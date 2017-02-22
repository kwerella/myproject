<%-- 
    Document   : Validation
    Created on : Feb 18, 2017, 10:31:03 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head>
        <meta charset="utf-8">
        <title>JavaScript Form Validation using a sample registration form</title>
        <meta name="keywords" content="example, JavaScript Form Validation, Sample registration form" />
        <meta name="description" content="This document is an example of JavaScript Form Validation using a sample registration form. " />
        <link rel='stylesheet' href='js-form-validation.css' type='text/css' />
        <script src="sample-registration-form-validation.js"></script>
    </head>
    <body onload="document.registration.userid.focus();">
        <div class="login">
            <h2>Login</h2>
            <form name='registration' onSubmit="return formValidation();">




                Username: <input type="text" placeholder="please enter username" name="username" size="50" /><br><br>

                Password :   <input type="password" placeholder="please enter password" name="passid" size="12" /><br><br>
                <input type="submit" name="submit" value="Submit" />

            </form>
        </div>
    </body>

    <style type="text/css">
        body
        {
            background-image:url('');
            background-repeat:no-repeat;
            background-size: cover;
        }
        div.login{
            width:350px;
            height:320px;
            background-color:rgba(0,0,0,0.4);
            margin:0 auto;
            margin-top: 80px;
            padding-top:10px;
            padding-left: 50px;
            border-radius:15px;
            -webkit-border-radius: 15px;
            -o-border-radius:15px;
            -moz-border-radius:15px;
            color:white;
            font-weight: bolder;
            box-shadow:inset -4px -4px rgba(0,0,0,0.5);
            font-size:18px;
        }
        .login input[type="text"]
        {
            width:200px;
            height:35px;
            border:0;
            border-radius:5px;
            -webkit-border-radius: 5px;
            -o-border-radius:5px;
            -moz-border-radius:5px;
            padding-left: 5px;

        }
        .login input[type="password"]
        {
            width:200px;
            height:35px;
            border:0;
            border-radius:5px;
            -webkit-border-radius: 5px;
            -o-border-radius:5px;
            -moz-border-radius:5px;
            padding-left: 5px;

        }
        .login input[type="submit"] 
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
        }  
    </style>
    <script>
        function formValidation()
        {

            var passid = document.registration.passid;
            var uname = document.registration.username;

            {
                if (allLetter(uname))
                {
                    if (passid_validation(passid, 7, 12))
                    {

                    }
                }
            }
            return false;
        }
        function allLetter(uname)
        {
            var letters = /^[A-Za-z]+$/;
            if (uname.value.match(letters))
            {
                return true;
            }
            else
            {
            alert('please enter username');   
            alert('Username must have alphabet characters only');
                uname.focus();
                return false;
            }
        }

        function passid_validation(passid, mx, my)
        {
            var passid_len = passid.value.length;
            if (passid_len == 0 || passid_len >= my || passid_len < mx)
            {
                alert("Password should not be empty / length be between " + mx + " to " + my);
                passid.focus();
                return false;
            }
            return true;
        }
    </script>
</html>
