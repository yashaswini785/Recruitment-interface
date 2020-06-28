/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package source;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import source.data;

/*@author sagar*/
public class validate {
    
    public static boolean checkUser(String email,String password) 
     {
      boolean st =false;
      try{

         Connection con=data.initializeDatabase();
         PreparedStatement ps =con.prepareStatement
                             ("select * from ppl where email=? and password=?");
         ps.setString(1, email);
         ps.setString(2, password);
         ResultSet rs = ps.executeQuery();
         st = rs.next();
        
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                 
  }
}