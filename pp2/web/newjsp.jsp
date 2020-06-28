<%-- 
    Document   : newjsp
    Created on : Jun 6, 2019, 5:49:38 PM
    Author     : User
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
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
            </style>
    </head>
    <body>
         
      
        <h1>Enter your details</h1>
        <form action="sub" method="post">
            <p>Username:</p><input type="text" name="name">
            <p>email:</p><input type="text" name="email">
            <p>DateOfBirth</p><input type="date" name="dob" >
<!--            <p>mobile:</p><input type="text" name="mobile">-->
            <p>status</p><input type="text" name="status">
            <p>Address</p><input type="text" name="addr">
            <p>Are You</p><br>
            <input type="radio" name="emp" value="Fresher"> Fresher
            <input type="radio" name="emp" value="Experienced" > Experienced<br><br>
            <p>Education</p><br>
           <input type="checkbox" name="degree" value="PUC">Puc<br>
           <input type="checkbox" name="degree" value="DEGREE">Degree<br>
           <input type="checkbox" name="degree" value="MASTER DEGREE">Master Degree<br><br>
           <p>Rate your Skills</p><br>
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
           <input type="radio" value="10" name="rate1">10<br><br>
                      
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
           <input type="radio" value="10" name="rate2">10<br><br>
                      
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
           <input type="radio" value="10" name="rate3">10<br><br>
                      
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
           <input type="radio" value="10" name="rate4">10<br><br>          
           
           
           
           
           <p>5.Computer/technical literacy</p><br>
           <input type="radio" value="1" name="rate5">1
           <input type="radio" value="2" name="rate5">2
           <input type="radio" value="3" name="rate5">3
           <input type="radio" value="4" name="rate5">4
           <input type="radio" value="5" name="rate5">5
           <input type="radio" value="6" name="rate5">6
           <input type="radio" value="7" name="rate5">7
           <input type="radio" value="8" name="rate5">8
           <input type="radio" value="9" name="rate5">9
           <input type="radio" value="10" name="rate5">10<br><br>
                    
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
           <input type="radio" value="10" name="rate6">10<br><br>
        
               
           <input type="submit" value="submit">
           
               
                 
         </form>
        </div>
    </body>
</html>