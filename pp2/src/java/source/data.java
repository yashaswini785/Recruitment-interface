package source;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author sagar
 */
public class data {
    public static Connection initializeDatabase() 
        throws SQLException, ClassNotFoundException 
    { 
        // Initialize all the information regarding 
        // Database Connection 
        String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql://localhost:3306/planner?autoRecconect=true&useSSL=false"; 
        // Database name to access 
        //String dbName = "demoprj"; 
        String dbUsername = "root"; 
        String dbPassword = "ganapathi"; 
  
        Class.forName(dbDriver); 
        Connection con = DriverManager.getConnection(dbURL, dbUsername,dbPassword); 
        
    
    return con;
}    
}