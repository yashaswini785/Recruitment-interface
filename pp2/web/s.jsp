<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : s1
    Created on : Jun 9, 2019, 6:33:21 PM
    Author     : User
--%>

<style>
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: center;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .column {
    width: 90%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
  padding: 0 12px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
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
</style>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="source.data"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>


 <link rel="stylesheet" type="text/css" href="style.css">
<div class="navbars">
        <a href="#default" class="logo">Placement planner</a>
        <div class="header-right">
        <a class="active" href="#home">Home</a>
         <a href="#contact">Contact</a>
         <a href="#about">About</a>
        </div>
   </div>
<br>
<br>
<br>
<br>
<br>
 <h2 align="center"><font><strong><padding:50px>company name</padding:50px></strong></font></h2>


<tr bgcolor="#A52A2A">
<!--<td><b>user_id</b></td>
<td><b>Password</b></td>
<td><b>Name</b></td>
<td><b>Email</b></td>-->
</tr>
<%
   String name = (String) session.getAttribute("name");
//   session.setAttribute("name", name);
     String name1 = (String) session.getAttribute("email");
      String name2 = (String) session.getAttribute("dob");
      String name3 = (String) session.getAttribute("status");
       String name4 = (String) session.getAttribute("addr");
       String name5 = (String) session.getAttribute("emp");
    Statement statement=null;
    ResultSet resultSet =null;
try{
Connection con = data.initializeDatabase(); 

PreparedStatement    p=con.prepareStatement("SELECT distinct(company_name),website from company , ys where company.rate1 between 1 and ys.rate1 and company.rate2 between 1 and ys.rate2 and ys.name=?");
p.setString(1,name);
resultSet = p.executeQuery();
while(resultSet.next()){ 

%>
<tr bgcolor="#DEB887">

<center><td><%=resultSet.getString("company_name") %><br></td></center>
<center><td><%=resultSet.getString("website") %><br></td></center><br>
</tr>



<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

<center><h1>Apply to</h1>
<form action="s2" method="post">
<input type="text" name="apply">
<input type="submit" value="done"></center>
</form>
