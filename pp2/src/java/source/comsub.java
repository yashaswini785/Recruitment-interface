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
public class comsub extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
          try
       {
       Connection con = data.initializeDatabase(); 
        response.setContentType("text/html;");
        PrintWriter out = response.getWriter();
    
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String pass=request.getParameter("pass");
        String state=request.getParameter("state");
        String city=request.getParameter("city");
        String contact = request.getParameter("contact no");
        String website= request.getParameter("website");
          String email= request.getParameter("email");
            String logo= request.getParameter("logo");
        String rate1=request.getParameter("rate1");
        String rate2=request.getParameter("rate2");
        String rate3=request.getParameter("rate3");
        String rate4=request.getParameter("rate4");
        String rate5=request.getParameter("rate5");
        String rate6=request.getParameter("rate6");
   
         
        
        
  PreparedStatement    p=con.prepareStatement("INSERT INTO company values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

            p.setString(1,id);
            p.setString(2,name);
            p.setString(3,pass);
            p.setString(4,state);
            p.setString(5,city);
            p.setString(6,contact);
            p.setString(7,website);
              p.setString(8,email);
                p.setString(9,logo);
            p.setString(10,rate1);
            p.setString(11,rate2);
            p.setString(12,rate3);
            p.setString(13,rate4);
            p.setString(14,rate5);
            p.setString(15,rate6);
        
            p.executeUpdate();
            out.println("hi !!!!!!!!!!!!!1");
    
//     HttpSession  session=request.getSession();
//     session.setAttribute("name", name);
//      session.setAttribute("email",email);
//       session.setAttribute("dob",dob);
//       session.setAttribute("status",status);
//        session.setAttribute("addr",addr);
//       session.setAttribute("emp",emp);
//          
       }
          
        catch(SQLException | ClassNotFoundException | IOException | NumberFormatException e){
            System.out.println(e);
        }
    }

    private void setAttribute(String name, String name0) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
