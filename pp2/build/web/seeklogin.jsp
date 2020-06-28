<%-- 
    Document   : seeklogin
    Created on : May 31, 2019, 7:44:36 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    
<title>Login Form Design</title>

<%
   response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
           response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setDateHeader("Expires", 0);
  %>

    <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
 <div class="navbars">
        <a href="#default" class="logo">Placement planner</a>
        <div class="header-right">
        <a class="active" href="#home">Home</a>
         <a href="contact.html">Contact</a>
        </div>
   </div>
    <div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Login Here</h1>
        <form action="loginvalid" method="post">
             <p>Username</p>
            <input type="text" name="name" placeholder="Enter email">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password">
            <input type="submit" name="" value="Login" >
            <a href="seekreg.html">Not a member yet? Register Now</a>
           
        </form>
        
    </div>

</body>

</html>