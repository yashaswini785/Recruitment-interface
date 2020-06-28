/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package source;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import source.data;

/**
 *
 * @author User
 */
public class sub extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
          try
       {
       Connection con = data.initializeDatabase(); 
        response.setContentType("text/html;");
        PrintWriter out = response.getWriter();
    
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String dob=request.getParameter("dob");
        String status=request.getParameter("status");
        String addr=request.getParameter("addr");
        String emp = request.getParameter("emp");
        String degree= request.getParameter("degree");
        String rate1=request.getParameter("rate1");
        String rate2=request.getParameter("rate2");
        String rate3=request.getParameter("rate3");
        String rate4=request.getParameter("rate4");
        String rate5=request.getParameter("rate5");
        String rate6=request.getParameter("rate6");
   
         
        
        
  PreparedStatement    p=con.prepareStatement("INSERT INTO ys values (?,?,?,?,?,?,?,?,?,?,?,?,?)");

            p.setString(1,name);
            p.setString(2,email);
            p.setString(3,dob);
            p.setString(4,status);
            p.setString(5,addr);
            p.setString(6,emp);
            p.setString(7,degree);
            p.setString(8,rate1);
            p.setString(9,rate2);
            p.setString(10,rate3);
            p.setString(11,rate4);
            p.setString(12,rate5);
            p.setString(13,rate6);
        
            p.executeUpdate();
            out.println("hi !!!!!!!!!!!!!1");
    
     HttpSession  session=request.getSession();
     session.setAttribute("name", name);
      session.setAttribute("email",email);
       session.setAttribute("dob",dob);
       session.setAttribute("status",status);
        session.setAttribute("addr",addr);
       session.setAttribute("emp",emp);
            response.sendRedirect("s.jsp");
       }
          
        catch(SQLException | ClassNotFoundException | IOException | NumberFormatException e){
            System.out.println(e);
        }
    }

    private void setAttribute(String name, String name0) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}