<%-- 
    Document   : Cdetails
    Created on : Jun 7, 2019, 6:24:37 PM
    Author     : User
--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
    </head>
    <html lang="en">
<head>
<title>Page Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
* {
  box-sizing: border-box;
}

/* Style the body */
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

/* Header/logo Title */
.header {
  padding: 10px;
  height: 100px;
  background: #0099ff;
  color: white;
  
}

/* Increase the font size of the heading */
.header h1 {
  font-size: 40px;
  text-align:left;
}

/* Sticky navbar - toggles between relative and fixed, depending on the scroll position. It is positioned relative until a given offset position is met in the viewport - then it "sticks" in place (like position:fixed). The sticky value is not supported in IE or Edge 15 and earlier versions. However, for these versions the navbar will inherit default position */
.navbar {
  overflow: hidden;
  background var(--md-background-color);
  position: sticky;
  position: -webkit-sticky;
  top: 0;
}

/* Style the navigation bar links */
.navbar a {
  font-family:serif;
  font-size:20px;
  font-weight:100;
  font-style: normal;
  float: left;
  display: block;
  color:#333;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}
.right {
    font-family:serif;
  font-size:20px;
  font-weight:100;
    float:right;
    font-style: normal;
  display: block;
  color: #f2f2f2;
  text-align: center;
  text-decoration: none;
  border: none;
  background-color:transparent;
}

/* Right-aligned link */
.navbar a.right {
  float: right;
}

/* Change color on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}

/* Active/current link */
.navbar a.active {
  background-color: #666;
  color: white;
}

/* Column container */
.row {  
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
}

/* Create two unequal columns that sits next to each other */
/* Sidebar/left column */
.side {
  -ms-flex: 30%; /* IE10 */
  flex: 30%;
  background-color: #f1f1f1;
  padding: 20px;
}

/* Main column */
.main {   
  -ms-flex: 70%; /* IE10 */
  flex: 70%;
  background-color: white;
  padding: 20px;
}

/* Fake image, just for this example */
.fakeimg {
  background-color: #aaa;
  width: 100%;
  padding: 20px;
}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
}
.avatar{
   width:200px;
   height:200px;
   border-radius: 20px;
   
}

/* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 700px) {
  .row {   
    flex-direction: column;
  }
}



/* The navigation bar */
.navbars {
  overflow: hidden;
  background-color:#000b83;
  position: fixed; /* Set the navbar to fixed position */
  top: 0; /* Position the navbar at the top of the page */
  width: 100%; /* Full width */
  padding :5px 5px;
}
.header-right {
  float: right;
}
/* Links inside the navbar */
.navbars a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
   font-family:serif;
  font-size:20px;
  font-weight:100;
   
    font-style: normal;
  display: block;
  color: #f2f2f2;
  text-align: center;
  text-decoration: none;
  border: none;
}

/* Change background on mouse-over */
.navbars a:hover {
  background: #ddd;
  color: black;
}


.body{
    margin: 0;
    padding: 0;
    background:#fff;
    background-size: cover;
    background-repeat:no-repeat;
    background-position: center;
    font-family: sans-serif;
}

.main.loginbox{
    width: 400px;
    height: 700px;
    background: #666666;
    backface-visibility:visible;
    color: #fff;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 50px;
}

.main.avatar{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}

.h1{
    margin: 0;
    padding: 0 0 70px;
    text-align: center;
    font-size: 22px;
}

.main p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.loginbox input{
    width: 100%;
    margin-bottom: 20px;
    border-bottom-color:#000;
     border-bottom: 1px solid #000;
    
}

.loginbox input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #333;
    font-size: 16px;
}
.loginbox input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background:#0099ff;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.loginbox input[type="submit"]:hover
{
    cursor: pointer;
    background:#0066cc;
    color: #000;
}
.loginbox a{
    text-decoration: none;
    font-size: 12px;
    line-height: 20px;
    color: darkgrey;
}

.loginbox a:hover
{
    color:#0066cc;
}

.loginbox input[type="button"]
{
    border: none;
    outline: none;
    height: 40px;
    background:#0099ff;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.loginbox input[type="button"]:hover
{
    cursor: pointer;
    background:#0066cc;
    color: #000;
}



/* Main column */
.main {   
  -ms-flex: 70%; /* IE10 */
  flex: 70%;
  background-color: white;
  padding: 20px;
}


.loginbox input[type="radio"]{
    margin-bottom:5px;
    width:10px;
    margin-left:10px;
}

.loginbox input[type="checkbox"]{
    margin-bottom:5px;
    width:10px;
    margin-left:10px;
}

.stars-outer {
  position: relative;
  display: inline-block;
}

.stars-inner {
  position: absolute;
  top: 0;
  left: 0;
  white-space: nowrap;
  overflow: hidden;
  width: 0;
}

.stars-outer::before {
  content: "\f005 \f005 \f005 \f005 \f005";
  font-family: "Font Awesome 5 Free";
  font-weight: 900;
  color: #ccc;
}

.stars-inner::before {
  content: "\f005 \f005 \f005 \f005 \f005";
  font-family: "Font Awesome 5 Free";
  font-weight: 900;
  color: #f8ce0b;
}


.star{
          color: goldenrod;
          font-size: 2.0rem;
          padding: 0 1rem; /* space out the stars */
        }
        .star::before{
          content: '\2606';    /* star outline */
          cursor: pointer;
        }
        .star.rated::before{
          /* the style for a selected star */
          content: '\2605';  /* filled star */
        }
        
        .stars{
            counter-reset: rateme 0;   
            font-size: 1.0rem;
            font-weight: 700;
        }
        .star.rated{
            counter-increment: rateme 1;
        }
        .stars::after{
            content: counter(rateme) '/10';
        }
.button {
    
padding-bottom: 10px;
padding-top: 10px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #0099ff;
  border: none;
  border-radius: 5px;
  width: 200PX;
  border-color:transparent;
  border-style:ridge;
 vertical-align: middle;
 

}

.button:hover {background-color:#000}

.button:active {
  background-color:transparent;
  
  transform: translate(2px);
}

   body {
  font-family: Arial;
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}



div.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
      
        
        .button {
  width: 20%;
  color:#fff;
  background-color:#000b83;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  align-items: center;
   font-family:serif;
  font-size:20px;
  font-weight:100;
    
    font-style: normal;
  display: block;
  
  text-align: center;
  text-decoration: none;
  border: none;
  
}

.button:hover {
  background-color:#0066cc;
   box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}     
        
        
        
        
        


/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
  .navbar a {
    float: none;
    width: 100%;
  }
}

</style>
</head>
 
<body>
    <%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
          response.setHeader("Pragma", "no-cache"); // HTTP 1.0       
            response.setDateHeader("Expires", 0);
    %>
   <script src="js.js" type="text/javascript"></script> 
   <div class="navbars">
     <a href="#default" class="logo">Placement planner</a>
       <div class="header-right">
  <a href="comprofile.jsp">Home</a>
  <a href="Cdetails.jsp">Company Details</a>
    <a> <input type="submit" value="Logout" class="right"></a>
</div>
    </div>
</form>              



   
<!--      <div class="main">
    <div class="loginbox">-->

          <center><padding:50px>  <h1>Details</h1></center></padding:30px></border-color:> 
        <form action="comsub" method="get">
<!--             <p>id_company</p>
            <input type="text" name="id" >
            <p>Company name</p>
            <input type="text" name="name" >
            <p>state</p>
            <input type="text" name="state" >
            <p>city</p>
            <input type="text" name="city">
            
            <p>contact no</p>
            <input type="text" name="contact no">
            <p>website</p><br>
                <input type="text" name="website">
            <p>email</p><br>
                <input type="text" name="email">
            <p>password</p><br>
                <input type="text" name="pass">
            <p>logo</p><br>
                <input type="text" name="logo">-->
<div class="container">
  
    <label for="idc">ID_Company</label>
    <input type="text" id="idc" name="id" placeholder="Your id..">
<label for="cname">Company Name</label>
    <input type="text" id="cname" name="name" placeholder="Your company name..">
    <label for="pass">Password</label>
    <input type="text" id="pass" name="pass" placeholder="Your pass..">
    <label for="state">State</label>
    <input type="text" id="state" name="state" placeholder="Your state.."><br>
    <br> <label for="city">city</label>
    <input type="text" id="city" name="city" placeholder="Your city.">
     <label for="cno">Contact_no</label>
    <input type="text" id="cno" name="contact no" placeholder="Your number..">
    <label for="web">Website</label>
    <input type="text" id="web" name="website" placeholder="Your website..">
    <label for="email">Email</label>
    <input type="text" id="email" name="email" placeholder="Your email..">
     <label for="logo">Logo</label>
    <input type="text" id="logo" name="logo" placeholder="Your logo..">
          <p>1.Communication Skills</p><br>
           <input type="radio" value="1" name="rate1">1
           <input type="radio" value="2" name="rate1">2
           <input type="radio" value="3" name="rate1">3
           <input type="radio" value="4" name="rate1">4
           <input type="radio" value="5" name="rate1">5
           <input type="radio" value="6" name="rate1">6
           <input type="radio" value="7" name="rate1">7
           <input type="radio" value="8" name="rate1">8
           <input type="radio" value="9" name="rate1">9
           <input type="radio" value="10" name="rate1">10<br>
           <br>
           
           
           <p>2.Creativity</p><br>
           <input type="radio" value="1" name="rate2">1
           <input type="radio" value="2" name="rate2">2
           <input type="radio" value="3" name="rate2">3
           <input type="radio" value="4" name="rate2">4
           <input type="radio" value="5" name="rate2">5
           <input type="radio" value="6" name="rate2">6
           <input type="radio" value="7" name="rate2">7
           <input type="radio" value="8" name="rate2">8
           <input type="radio" value="9" name="rate2">9
           <input type="radio" value="10" name="rate2">10<br>
           <br>
           
           
           <p>3.Teamwork</p><br>
           <input type="radio" value="1" name="rate3">1
           <input type="radio" value="2" name="rate3">2
           <input type="radio" value="3" name="rate3">3
           <input type="radio" value="4" name="rate3">4
           <input type="radio" value="5" name="rate3">5
           <input type="radio" value="6" name="rate3">6
           <input type="radio" value="7" name="rate3">7
           <input type="radio" value="8" name="rate3">8
           <input type="radio" value="9" name="rate3">9
           <input type="radio" value="10" name="rate3">10<br>          
<br>
           
           
           
           
           
           
           <p>4.Analytical and problem-solving skills</p><br>
           <input type="radio" value="1" name="rate4">1
           <input type="radio" value="2" name="rate4">2
           <input type="radio" value="3" name="rate4">3
           <input type="radio" value="4" name="rate4">4
           <input type="radio" value="5" name="rate4">5
           <input type="radio" value="6" name="rate4">6
           <input type="radio" value="7" name="rate4">7
           <input type="radio" value="8" name="rate4">8
           <input type="radio" value="9" name="rate4">9
           <input type="radio" value="10" name="rate4">10<br>
            <br>          
           
           
           
           
           <p>5.Computer/technical literacy</p><br>
           <input type="radio" value="1" name="rate5"size="4">1
           <input type="radio" value="2" name="rate5"size="4">2
           <input type="radio" value="3" name="rate5"size="4">3
           <input type="radio" value="4" name="rate5"size="4">4
           <input type="radio" value="5" name="rate5"size="4">5
           <input type="radio" value="6" name="rate5"size="4">6
           <input type="radio" value="7" name="rate5"size="4">7
           <input type="radio" value="8" name="rate5"size="4">8
           <input type="radio" value="9" name="rate5"size="4">9
           <input type="radio" value="10" name="rate5"size="4">10<br>
          <br>
          
          
          
           
          <p>6.Computer Programming</p><br>
           <input type="radio" value="1" name="rate6">1
           <input type="radio" value="2" name="rate6">2
           <input type="radio" value="3" name="rate6">3
           <input type="radio" value="4" name="rate6">4
           <input type="radio" value="5" name="rate6">5
           <input type="radio" value="6" name="rate6">6
           <input type="radio" value="7" name="rate6">7
           <input type="radio" value="8" name="rate6">8
           <input type="radio" value="9" name="rate6">9
           <input type="radio" value="10" name="rate6">10<br>
<br>


           

           </div>
  
<!--</div>
         <%--<%@page   import="source.data"%>
        <%@page    import="java.sql.*"%>
        <%@page    import="java.sql.Connection"%>
        <%@page    import="java.sql.PreparedStatement"%>
        <%@page    import="java.sql.SQLException"%>
        <%@page    import="java.io.PrintWriter;"%>
       <%   
               Connection con = data.initializeDatabase(); 
        response.setContentType("text/html;");
         
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String dob=request.getParameter("dob");
        String status=request.getParameter("status");
        String add=request.getParameter("add");
       String emp = request.getParameter("emp");
        String degree= request.getParameter("degree");
        String details=request.getParameter("details");
        String rate1=request.getParameter("rate1");
        String rate2=request.getParameter("rate2");
       String rate3=request.getParameter("rate3");
        String rate4=request.getParameter("rate4");
       String rate5=request.getParameter("rate5");
        String rate6=request.getParameter("rate6");
       
        PreparedStatement p = null;
        
        
        
      /*  try{
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection(db,user,pass);*/
            p=con.prepareStatement("INSERT INTO  details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            p.setString(1,name);
            p.setString(2,email);
          
             p.setString(3,dob);
              p.setString(4,status);
                p.setString(5,add);
              p.setString(6,emp);
                p.setString(7,degree);
              p.setString(8,details);
              
               p.setInt(9,Integer.parseInt(rate1));
            p.setInt(10,Integer.parseInt(rate2));
              
              p.setInt(11,Integer.parseInt(rate3));
             p.setInt(12,Integer.parseInt(rate4));
            p.setInt(13,Integer.parseInt(rate5));
           p.setInt(14,Integer.parseInt(rate6));
              
            p.executeUpdate();
            out.println("hi !!!!!!!!!!!!!1");
       
       
       
       %>
    -->
--%>
        
           
            
<!--           Communication Skill
Creativity
Teamwork
Analytical and problem-solving skills
Computer/technical literacy
Self-management
Computer Programming
Active Listening-->

          <div class="button">
              <input type="submit" value="submit">    
            
        </div>
</form>
    </div>
      </div>