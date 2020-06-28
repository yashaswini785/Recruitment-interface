<%-- 
    Document   : comprofile
    Created on : Jun 6, 2019, 6:52:51 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
   
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
  background-color:  #000b83;
  position: fixed; /* Set the navbar to fixed position */
  top: 0; /* Position the navbar at the top of the page */
  width: 100%; /* Full width */
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


.header-right {
  float: right;
}

.sagar input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background:#000b83;
    color: #fff;
    font-size: 18px;
}
.sagar input[type="submit"]:hover
{
    cursor: pointer;
    background:#0066cc;
    color: #000;
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
				out.print("<br><br><br><center><font-family:serif><h3>HELLO, " + name + "  WELCOME TO YOUR PROFILE</h3></center>");
			} else {
				response.sendRedirect("comlogin.jsp");
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
  <form action="login_invalid" method="get">

  
<div class="navbars">
     <a href="#default" class="logo">Placement planner</a>
       <div class="header-right">
  <a href="comprofile.jsp">Home</a>
  <a href="Cdetails.jsp">Company Details</a>
    <a> <input type="submit" value="Logout" class="right"></a>
</div>
    </div>
      </form>
<!--<div class="row">
  <div class="side">
    <h2>About Me</h2>
    <h5>Photo of me:</h5>
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
  <img class="mySlides" src="p11.jpg" style="width:100%">
  <img class="mySlides" src="p12.png" style="width:100%">
  <img class="mySlides" src="p14.jpg" style="width:100%">

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
</script><br><br>
<div class="sagar">
<form action="notify" method="post">
    <center><input type="submit" value="See Applied Members"></center>
</form>
</div>
</body>
</html> 
<!--    
    <h2>TITLE HEADING</h2>
    <div class="fakeimg" style="height:200px;">Image</div>
    </div>
    
   <div class="main">
    <h2>TITLE HEADING</h2>
    
    <div class="fakeimg" style="height:200px;">Image</div>
    
    <h2>TITLE HEADING</h2>
    <div class="fakeimg" style="height:200px;">Image</div>
    </div> 
    
    <div class="main">
    <h2>TITLE HEADING</h2>
    
    <div class="fakeimg" style="height:200px;">Image</div>
    
    <h2>TITLE HEADING</h2>
    <div class="fakeimg" style="height:200px;">Image</div>
    </div>
    
    <div class="main">
    <h2>TITLE HEADING</h2>
    
    <div class="fakeimg" style="height:200px;">Image</div>
    
    <h2>TITLE HEADING</h2>
    <div class="fakeimg" style="height:200px;">Image</div>
    </div>
    
    
    
    
    
    
    
    
    
    
    



<div class="footer">
  <h2>Footer</h2>
</div>-->









</html>
    </body>
</html>

    </body>
</html>
