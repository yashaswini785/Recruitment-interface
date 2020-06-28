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
public class s2 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String c1="tcs";
       String c2="ibm";
       String c3="Microsoft";
        String c4="Intel";
         String c5="Cisco";
          String c6="PayPal";
       
          try
       {
       Connection con = data.initializeDatabase(); 
        response.setContentType("text/html;");
        PrintWriter out = response.getWriter();
    
        String n = request.getParameter("apply");
        
            HttpSession session =request.getSession();
           String name = (String) session.getAttribute("name");

     String name1 = (String) session.getAttribute("email");
      String name2 = (String) session.getAttribute("dob");
      String name3 = (String) session.getAttribute("status");
       String name4 = (String) session.getAttribute("addr");
       String name5 = (String) session.getAttribute("emp");
       if( c1.equals(n))
       {
           PreparedStatement p=con.prepareStatement("insert into tcs values (?,?,?,?,?,?)");
           p.setString(1, name);
           p.setString(2, name1);
           p.setString(3, name2);
           p.setString(4, name3);
           p.setString(5, name4);
           p.setString(6, name5);
           p.executeUpdate();
           out.println("You Are Successfully Applied tcs");
       }
        
       else if( c2.equals(n))
       {
          PreparedStatement p=con.prepareStatement("insert into ibm values (?,?,?,?,?,?)");
           p.setString(1, name);
           p.setString(2, name1);
           p.setString(3, name2);
           p.setString(4, name3);
           p.setString(5, name4);
           p.setString(6, name5);
           p.executeUpdate();
           out.println("You Are Successfully Applied ibm");
       }

       else if( c3.equals(n))
       {
          PreparedStatement p=con.prepareStatement("insert into micro values (?,?,?,?,?,?)");
           p.setString(1, name);
           p.setString(2, name1);
           p.setString(3, name2);
           p.setString(4, name3);
           p.setString(5, name4);
           p.setString(6, name5);
           p.executeUpdate();
           out.println("You Are Successfully Applied micro");
       }
   else if( c4.equals(n))
       {
          PreparedStatement p=con.prepareStatement("insert into intel values (?,?,?,?,?,?)");
           p.setString(1, name);
           p.setString(2, name1);
           p.setString(3, name2);
           p.setString(4, name3);
           p.setString(5, name4);
           p.setString(6, name5);
           p.executeUpdate();
           out.println("You Are Successfully Applied intel");
       }
          else if( c5.equals(n))
       {
          PreparedStatement p=con.prepareStatement("insert into cisco values (?,?,?,?,?,?)");
           p.setString(1, name);
           p.setString(2, name1);
           p.setString(3, name2);
           p.setString(4, name3);
           p.setString(5, name4);
           p.setString(6, name5);
           p.executeUpdate();
           out.println("You Are Successfully Applied cisco");
       }
   else if( c6.equals(n))
       {
          PreparedStatement p=con.prepareStatement("insert into paypal values (?,?,?,?,?,?)");
           p.setString(1, name);
           p.setString(2, name1);
           p.setString(3, name2);
           p.setString(4, name3);
           p.setString(5, name4);
           p.setString(6, name5);
           p.executeUpdate();
           out.println("You Are Successfully Applied paypal");
       }
       else
   {
       out.println("no company exist");
   }
       }catch(Exception e)
            {
                System.out.println(e);
            }
    }
}

   