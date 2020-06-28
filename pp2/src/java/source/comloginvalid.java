/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package source;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
public class comloginvalid extends HttpServlet {

    Connection con;
      PreparedStatement ps;
      ResultSet rs;
      public void init(ServletConfig config)throws ServletException
      { 
            try 
               {
                        Class.forName("com.mysql.jdbc.Driver");
                        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/planner?autoRecconect=true&useSSL=false","root","ganapathi"); 
               } 
            catch (ClassNotFoundException e)
                {
                        System.out.println(e);
                } 
            catch (SQLException e) 
                {
                        System.out.println(e);
                }
      }
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
      {
            doPost(request, response);
      }
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
      {
          
            response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            String username=request.getParameter("name");
            String password=request.getParameter("password");
            if(username.equals(username))
            {
                pw.println("welcome "+username);
                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
            response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
          response.setDateHeader("Expires", 0);
                HttpSession session = request.getSession(true); // reuse existing
															// session if exist
															// or create one
			session.setAttribute("username", username);
			session.setMaxInactiveInterval(30); // 30 seconds
			
            }
             else {
			RequestDispatcher rd = request.getRequestDispatcher("seeklogin.html");
			pw.println("<font color=red>Either user name or password is wrong.</font>");
			rd.include(request, response);
            }
            pw.println("<html><body>");
            try 
            {
                  ps=con.prepareStatement("select * from comlogin where name=? and password=?");
                  ps.setString(1, username);
                  ps.setString(2, password);
                  rs=ps.executeQuery();
                  if(rs.next())
                  {
                                    
                          response.sendRedirect("comprofile.jsp");
//                        RequestDispatcher rd1=request.getRequestDispatcher("./profile.html");
//
//                  rd1.include(request,response);
//                        //or
//                        //response.sendRedirect("./home.html");
//                         
//                            
//                        pw.println("<form method=\"post\" action=\"seeklogin.html\">");
//                     //   pw.println("<input type=\"submit\" name=\"logout\" " + "value=\"Logout\">");
//                       // pw.println("</form>");
//                        
                  }
                  else
                  {
                        pw.println("<center><h3>invalid username/password </h3></center>");
                        RequestDispatcher rd2=request.getRequestDispatcher("./comlogin.jsp");
                        rd2.include(request,response);
                        //or
                        //response.sendRedirect("./Login.html");
                  }
            }
            catch (SQLException e) 
                  {
                  e.printStackTrace();
                  }
      }

   
} 
