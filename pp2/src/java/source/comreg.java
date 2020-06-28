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
public class comreg extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
          try
       {
       Connection con = data.initializeDatabase(); 
        response.setContentType("text/html;");
        PrintWriter out = response.getWriter();
        
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String state=request.getParameter("state");
        String email=request.getParameter("email");
        String contact_no=request.getParameter("contact_no");
       /* String db = "jdbc:mysql://localhost:3306/demo?autoReconnect=true&useSSL=false";
        String user = "root";
        String pass = "ganapathi";*/
        
        PreparedStatement p = null;
        
        
        
      /*  try{
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection(db,user,pass);*/
            p=con.prepareStatement("INSERT INTO  comlogin values(?,?,?,?,?)");
            p.setString(1,name);
            p.setString(2,password);
             p.setString(3,state);
         
             p.setString(4,email);
              p.setString(5,contact_no);
            p.executeUpdate();
            out.println("hi !!!!!!!!!!!!!1");
        }
        catch(SQLException | ClassNotFoundException | IOException | NumberFormatException e){
            System.out.println(e);
        }
    }

}
