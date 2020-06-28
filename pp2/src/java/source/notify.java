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
import java.sql.Statement;
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
public class notify extends HttpServlet {

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
    
     
            HttpSession session =request.getSession();
          String n = (String) session.getAttribute("username");

        
       if( c1.equals(n))
       { 
        
           Statement s=con.createStatement();
         String sql= "SELECT * from tcs ";
           ResultSet   resultSet = s.executeQuery(sql);
          
        
           while(resultSet.next()){ 
           out.println(" " +resultSet.getString("name")+"<br>" + resultSet.getString("email")+"<br>" + resultSet.getString("dob")+"<br>"+resultSet.getString("status")+"<br>"+resultSet.getString("addr")+"<br>" +resultSet.getString("emp")+"<br>");
         
       }
       }
       else if( c2.equals(n))
       {
          
           Statement s=con.createStatement();
         String sql= "SELECT * from ibm ";
           ResultSet   resultSet = s.executeQuery(sql);
          
        
           while(resultSet.next()){ 
           out.println(" " +resultSet.getString("name")+"<br>" + resultSet.getString("email")+"<br>" + resultSet.getString("dob")+"<br>"+resultSet.getString("status")+"<br>"+resultSet.getString("addr")+"<br>" +resultSet.getString("emp")+"<br>");
       }
       }

       else if( c3.equals(n))
       {
          
           Statement s=con.createStatement();
         String sql= "SELECT * from  micro ";
           ResultSet   resultSet = s.executeQuery(sql);
          
        
           while(resultSet.next()){ 
           out.println(" " +resultSet.getString("name")+"<br>" + resultSet.getString("email")+"<br>" + resultSet.getString("dob")+"<br>"+resultSet.getString("status")+"<br>"+resultSet.getString("addr")+"<br>" +resultSet.getString("emp")+"<br>");
       }
       }
   else if( c4.equals(n))
       {
         
           Statement s=con.createStatement();
         String sql= "SELECT * from intel ";
           ResultSet   resultSet = s.executeQuery(sql);
          
        
           while(resultSet.next()){ 
           out.println(" " +resultSet.getString("name")+"<br>" + resultSet.getString("email")+"<br>" + resultSet.getString("dob")+"<br>"+resultSet.getString("status")+"<br>"+resultSet.getString("addr")+"<br>" +resultSet.getString("emp")+"<br>");
       }
       }
          else if( c5.equals(n))
       {
          
           Statement s=con.createStatement();
         String sql= "SELECT * from cisco ";
           ResultSet   resultSet = s.executeQuery(sql);
          
        
           while(resultSet.next()){ 
           out.println(" " +resultSet.getString("name")+"<br>" + resultSet.getString("email")+"<br>" + resultSet.getString("dob")+"<br>"+resultSet.getString("status")+"<br>"+resultSet.getString("addr")+"<br>" +resultSet.getString("emp")+"<br>");
       }
       }
   else if( c6.equals(n))
       {
          
           Statement s=con.createStatement();
         String sql= "SELECT * from paypal ";
           ResultSet   resultSet = s.executeQuery(sql);
          
        
           while(resultSet.next()){ 
           out.println(" " +resultSet.getString("name")+"<br>" + resultSet.getString("email")+"<br>" + resultSet.getString("dob")+"<br>"+resultSet.getString("status")+"<br>"+resultSet.getString("addr")+"<br>" +resultSet.getString("emp")+"<br>");
       }
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

   