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
    <div class="reg">
<h1>Registration Form</h1>

<table>

<form name='registration' onSubmit="return formValidation();">


    <tr><td> User Id:</td><td><input type="text" placeholder="please enter user id" name="userid" size="12" /></td></tr>

   <tr><td> Password:</td><td><input type="password" placeholder="please enter password" name="passid" size="12" /></td></tr>

   <tr><td> Name:</td><td><input type="text" placeholder="please enter your name" name="username" size="50" /></td></tr>

    <tr><td>Address:</td><td><input type="text" placeholder="please enter your address" name="address" size="50" /></td></tr>

<tr><td>Country:</td><td><select name="country">
<option selected="" value="Default">(Please select a country)</option>
<option value="AF">Australia</option>
<option value="AL">Canada</option>
<option value="DZ">India</option>
<option value="AS">Russia</option>
<option value="AD">USA</option>
</select></td></tr>

<tr><td>ZIP Code:</td><td><input type="text" name="zip" /></td></tr>

<tr><td>Email:</td><td><input type="text" placeholder="please enter email id" name="email" size="50" /></td></tr>
<tr><td><input type="submit" name="submit" value="Submit" /></td></tr>
</form>
    </table>
</div>
</body>
<style type="text/css">
     body
        {
            background-image:url('images/bg.jpg');
           background-repeat:no-repeat;
           background-size: cover;
        }
        div.reg{
            width:60%;
            height:250%;
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
        .reg input[type="text"]
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
         .reg input[type="password"]
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
        .reg input[type="submit"] 
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
        .reg select[name="country"]{
             width:200px;
            height:35px;
            border:0;
            border-radius:5px;
            -webkit-border-radius: 5px;
            -o-border-radius:5px;
            -moz-border-radius:5px;
             padding-left: 5px;
        }
</style>
<script>
    function formValidation()
{
var uid = document.registration.userid;
var passid = document.registration.passid;
var uname = document.registration.username;
var uadd = document.registration.address;
var ucountry = document.registration.country;
var uzip = document.registration.zip;
var uemail = document.registration.email;

{
if(passid_validation(passid,7,12))
{
if(allLetter(uname))
{
if(alphanumeric(uadd))
{ 
if(countryselect(ucountry))
{
if(allnumeric(uzip))
{
if(ValidateEmail(uemail))
{
} 
}
} 
}
}
}
}
return false;
}
function userid_validation(uid,mx,my)
{
var uid_len = uid.value.length;
if (uid_len == 0 || uid_len >= my || uid_len < mx)
{
alert("User Id should not be empty / length be between "+mx+" to "+my);
uid.focus();
return false;
}
return true;
}

function passid_validation(passid,mx,my)
{
var passid_len = passid.value.length;
if (passid_len == 0 ||passid_len >= my || passid_len < mx)
{
alert("Password should not be empty / length be between "+mx+" to "+my);
passid.focus();
return false;
}
return true;
}

function allLetter(uname)
{ 
var letters = /^[A-Za-z]+$/;
if(uname.value.match(letters))
{
return true;
}
else
{
alert('Username must have alphabet characters only');
uname.focus();
return false;
}
}

function alphanumeric(uadd)
{ 
var letters = /^[0-9a-zA-Z]+$/;
if(uadd.value.match(letters))
{
return true;
}
else
{
alert('User address must have alphanumeric characters only');
uadd.focus();
return false;
}
}

function countryselect(ucountry)
{
if(ucountry.value == "Default")
{
alert('Select your country from the list');
ucountry.focus();
return false;
}
else
{
return true;
}
}
function allnumeric(uzip)
{ 
var numbers = /^[0-9]+$/;
if(uzip.value.match(numbers))
{
return true;
}
else
{
alert('ZIP code must have numeric characters only');
uzip.focus();
return false;
}
}
function ValidateEmail(uemail)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(uemail.value.match(mailformat))
{
return true;
}
else
{
alert("You have entered an invalid email address!");
uemail.focus();
return false;
}
}
</script>
</html>