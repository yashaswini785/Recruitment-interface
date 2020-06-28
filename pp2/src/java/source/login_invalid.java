/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package source;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class login_invalid extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doGet(HttpServletRequest request,
         HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
     
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
          response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
         response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
            response.setDateHeader("Expires", 0);
         HttpSession session = request.getSession(false);
		session.setAttribute("username", null);
		session.removeAttribute("username");
		session.getMaxInactiveInterval();
         session.removeAttribute("name");
            session.invalidate();  
//            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
//            response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
//            response.setDateHeader("Expires", 0);
              
           out.println("<center><h3>You are successfully loggedout</h3></center>"); 
           out.println("thanq you!!, Your session was destroyed successfully!!");
		
         
//               response.sendRedirect("seeklogin.html");
               RequestDispatcher rd3=request.getRequestDispatcher("./seeklogin.jsp");
            
               rd3.include(request,response);
               
   }

   
}
