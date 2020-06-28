<%-- 
    Document   : comlogin
    Created on : Jun 6, 2019, 6:49:54 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <%
   response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
           response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setDateHeader("Expires", 0);
  %>

    <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    
<div class="navbars">
        <a href="#default" class="logo">Placement planner</a>
        <div class="header-right">
        <a class="active" href="index.html">Home</a>
         <a href="contact.html">Contact</a>
        </div>
   </div>
       
      <div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Login Here</h1>
        <form action="comloginvalid" method="post">
             <p>company_name</p>
            <input type="text" name="name" placeholder="Enter name">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password">
            <input type="submit" name="" value="Login" >
            <a href="comreg.html">Not a member yet? Register Now</a>
           
        </form>
      </div>
    



</html>
