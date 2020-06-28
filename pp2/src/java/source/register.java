package source;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import source.data;

/**
 *
 * @author sagar
 */
public class register extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
          try
       {
       Connection con = data.initializeDatabase(); 
        response.setContentType("text/html;");
        PrintWriter out = response.getWriter();
        
        String name = request.getParameter("name");
        String usn = request.getParameter("password");
        String year=request.getParameter("mobile");
        String email=request.getParameter("email");
        String gender=request.getParameter("gender");
       /* String db = "jdbc:mysql://localhost:3306/demo?autoReconnect=true&useSSL=false";
        String user = "root";
        String pass = "ganapathi";*/
        
        PreparedStatement p = null;
        
        
        
      /*  try{
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection(db,user,pass);*/
            p=con.prepareStatement("INSERT INTO login values(?,?,?,?,?)");
            p.setString(1,name);
            p.setString(2,usn);
             p.setString(3,year);
         
             p.setString(4,email);
              p.setString(5,gender);
            p.executeUpdate();
            out.println("hi !!!!!!!!!!!!!1");
        }
        catch(SQLException | ClassNotFoundException | IOException | NumberFormatException e){
            System.out.println(e);
        }
    }

}
        