<%-- 
    Document   : profile
    Created on : May 30, 2019, 3:26:09 PM
    Author     : User
--%>

<%@page import="source.data"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      
    </head>
    <body>
        <!DOCTYPE html>
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
  background:var(--md-background-color);
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
  padding: 5px 5px;
}

/* Links inside the navbar */
.navbars a {
/*  float: left;
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
  border: none;*/
  float: left;
  color:#ffffff;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius:5px;
   border-bottom: 3px solid transparent;
  
}

/* Change background on mouse-over */
.navbars a:hover {
  background: #ddd;
  color: black;
}

.header-right {
  float: right;
}

/* Add media queries for responsiveness - when the screen is 500px wide or less, stack the links on top of each other */ 
@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  .header-right {
    float: none;
  }
}

.header {
  overflow: hidden;
  background-color:#666666;
  padding: 10px 10px;
}

/* Style the header links */
.header a {
  float: left;
  color:#ffffff;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius:5px;
   border-bottom: 3px solid transparent;
}

/* Style the logo link (notice that we set the same value of line-height and font-size to prevent the header to increase when the font gets bigger */
.navbars  a.logo {
  font-size: 25px;
  font-weight: bold;
  font-family:serif;
  
}

/* Change the background color on mouse-over */
.header a:hover {
  background-color: #ddd;
  color: black;
    border-bottom: 3px solid white;
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
<!--                  <SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>-->

 <%
     response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
          response.setHeader("Pragma", "no-cache"); // HTTP 1.0            response.setDateHeader("Expires", 0);
		if (session != null) {
			if (session.getAttribute("username") != null) {
				String name = (String) session.getAttribute("username");
				out.print("<br><br><br><center><font-family:serif><h3>HELLO, " + name + "  welcome to your profile</h3></center>");
			} else {
				response.sendRedirect("seeklogin.jsp");
			}
		}
	%>
<!--	</br>
	</br>
	
		
  <form action="login_invalid" method="get">	
<div class="header">
  <h1>Placement Planner</h1>
  <div style="text-align:right"><img src="av1.png" class="avatar" width="100" height="100"/></div>
  <p> <b></b> </p>
</div>
 
   
	
 
<div class="navbar">
  <a href="#" class="active">Home</a>
  <a href="details.html">Profile Details</a>
  <a href="fav.html">Favourite</a>
  <a> <input type="submit" value="Logout" class="right"></a>
</div>
  </form>-->


<!--<div class="footer">
  <h2>Footer</h2>
</div>-->
  <form action="comlogin_invalid" method="get">
<div class="navbars">
     <a href="#default" class="logo">Placement planner</a>
       <div class="header-right">
  <a href="profile.jsp">Home</a>
  <a href="details.jsp">Personal Details</a>
    <a> <input type="submit" value="Logout" class="right"></a>
</div>
</div>
  </form>
<!--<div class="row">
  <div class="side">
    <h2>About Me</h2>
    <%
        String name = (String) session.getAttribute("username");
        out.print("<font-family:serif><h3>Name: " + name + " </h3>");
        %>
    <img src="avatar.png" class="avatar" height="200" width="350">
    <div class="fakeimg" style="height:200px;">Image</div>
    <div class="fakeimg" style="height:60px;">Image</div><br>
    <div class="fakeimg" style="height:60px;">Image</div><br>
    <div class="fakeimg" style="height:60px;">Image</div>
  </div>-->
 <div class="main">
  
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none}
.w3-left, .w3-right, .w3-badge {cursor:pointer}
.w3-badge {height:13px;width:13px;padding:0}
</style>
<div class="w3-container">
    </div>

<div class="w3-content w3-display-container" style="max-width:800px">
<!--  <img class="mySlides" src="p2.jpg" style="width:100%">-->
  <img class="mySlides" src="p5.jpg" style="width:100%">
  <img class="mySlides" src="p4.jpg" style="width:100%">
  <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
    <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
    <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
  </div>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
</script>

</body>
</html> 

    
   
<center><h2>If you can DREAM it, you can DO it.” – Walt Disney</h2>
 </div>   
<center><div class="main">
  <h2> “If opportunity doesn’t knock, then build a door.” – Milton Berle</h2>
  <h2>“Find out what you like doing best, and get someone to pay you for it.” – Katharine Whitehorn</h2></center>  
 <div class="main">
     <center> <h2>"Start by doing what is necessary, then what is possible, and suddenly you are doing the impossible."</h2></center>
    
   </div>
        </center> 
    
</body>
</html>
    </body>
</html>
