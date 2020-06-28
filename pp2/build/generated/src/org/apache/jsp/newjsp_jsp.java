package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            .button {\n");
      out.write("    \n");
      out.write("padding-bottom: 10px;\n");
      out.write("padding-top: 10px;\n");
      out.write("  font-size: 24px;\n");
      out.write("  text-align: center;\n");
      out.write("  cursor: pointer;\n");
      out.write("  outline: none;\n");
      out.write("  color: #fff;\n");
      out.write("  background-color: #0099ff;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 5px;\n");
      out.write("  width: 200PX;\n");
      out.write("  border-color:transparent;\n");
      out.write("  border-style:ridge;\n");
      out.write(" vertical-align: middle;\n");
      out.write(" \n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button:hover {background-color:#000}\n");
      out.write("\n");
      out.write(".button:active {\n");
      out.write("  background-color:transparent;\n");
      out.write("  \n");
      out.write("  transform: translate(2px);\n");
      out.write("}\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("      \n");
      out.write("        <h1>Enter your details</h1>\n");
      out.write("        <form action=\"sub\" method=\"post\">\n");
      out.write("            <p>Username:</p><input type=\"text\" name=\"name\">\n");
      out.write("            <p>email:</p><input type=\"text\" name=\"email\">\n");
      out.write("            <p>DateOfBirth</p><input type=\"date\" name=\"dob\" >\n");
      out.write("<!--            <p>mobile:</p><input type=\"text\" name=\"mobile\">-->\n");
      out.write("            <p>status</p><input type=\"text\" name=\"status\">\n");
      out.write("            <p>Address</p><input type=\"text\" name=\"addr\">\n");
      out.write("            <p>Are You</p><br>\n");
      out.write("            <input type=\"radio\" name=\"emp\" value=\"Fresher\"> Fresher\n");
      out.write("            <input type=\"radio\" name=\"emp\" value=\"Experienced\" > Experienced<br><br>\n");
      out.write("            <p>Education</p><br>\n");
      out.write("           <input type=\"checkbox\" name=\"degree\" value=\"PUC\">Puc<br>\n");
      out.write("           <input type=\"checkbox\" name=\"degree\" value=\"DEGREE\">Degree<br>\n");
      out.write("           <input type=\"checkbox\" name=\"degree\" value=\"MASTER DEGREE\">Master Degree<br><br>\n");
      out.write("           <p>Rate your Skills</p><br>\n");
      out.write("           <p>1.Communication Skills</p><br>\n");
      out.write("           <input type=\"radio\" value=\"1\" name=\"rate1\">1\n");
      out.write("           <input type=\"radio\" value=\"2\" name=\"rate1\">2\n");
      out.write("           <input type=\"radio\" value=\"3\" name=\"rate1\">3\n");
      out.write("           <input type=\"radio\" value=\"4\" name=\"rate1\">4\n");
      out.write("           <input type=\"radio\" value=\"5\" name=\"rate1\">5\n");
      out.write("           <input type=\"radio\" value=\"6\" name=\"rate1\">6\n");
      out.write("           <input type=\"radio\" value=\"7\" name=\"rate1\">7\n");
      out.write("           <input type=\"radio\" value=\"8\" name=\"rate1\">8\n");
      out.write("           <input type=\"radio\" value=\"9\" name=\"rate1\">9\n");
      out.write("           <input type=\"radio\" value=\"10\" name=\"rate1\">10<br><br>\n");
      out.write("                      \n");
      out.write("           <p>2.Creativity</p><br>\n");
      out.write("           <input type=\"radio\" value=\"1\" name=\"rate2\">1\n");
      out.write("           <input type=\"radio\" value=\"2\" name=\"rate2\">2\n");
      out.write("           <input type=\"radio\" value=\"3\" name=\"rate2\">3\n");
      out.write("           <input type=\"radio\" value=\"4\" name=\"rate2\">4\n");
      out.write("           <input type=\"radio\" value=\"5\" name=\"rate2\">5\n");
      out.write("           <input type=\"radio\" value=\"6\" name=\"rate2\">6\n");
      out.write("           <input type=\"radio\" value=\"7\" name=\"rate2\">7\n");
      out.write("           <input type=\"radio\" value=\"8\" name=\"rate2\">8\n");
      out.write("           <input type=\"radio\" value=\"9\" name=\"rate2\">9\n");
      out.write("           <input type=\"radio\" value=\"10\" name=\"rate2\">10<br><br>\n");
      out.write("                      \n");
      out.write("           <p>3.Teamwork</p><br>\n");
      out.write("           <input type=\"radio\" value=\"1\" name=\"rate3\">1\n");
      out.write("           <input type=\"radio\" value=\"2\" name=\"rate3\">2\n");
      out.write("           <input type=\"radio\" value=\"3\" name=\"rate3\">3\n");
      out.write("           <input type=\"radio\" value=\"4\" name=\"rate3\">4\n");
      out.write("           <input type=\"radio\" value=\"5\" name=\"rate3\">5\n");
      out.write("           <input type=\"radio\" value=\"6\" name=\"rate3\">6\n");
      out.write("           <input type=\"radio\" value=\"7\" name=\"rate3\">7\n");
      out.write("           <input type=\"radio\" value=\"8\" name=\"rate3\">8\n");
      out.write("           <input type=\"radio\" value=\"9\" name=\"rate3\">9\n");
      out.write("           <input type=\"radio\" value=\"10\" name=\"rate3\">10<br><br>\n");
      out.write("                      \n");
      out.write("           <p>4.Analytical and problem-solving skills</p><br>\n");
      out.write("           <input type=\"radio\" value=\"1\" name=\"rate4\">1\n");
      out.write("           <input type=\"radio\" value=\"2\" name=\"rate4\">2\n");
      out.write("           <input type=\"radio\" value=\"3\" name=\"rate4\">3\n");
      out.write("           <input type=\"radio\" value=\"4\" name=\"rate4\">4\n");
      out.write("           <input type=\"radio\" value=\"5\" name=\"rate4\">5\n");
      out.write("           <input type=\"radio\" value=\"6\" name=\"rate4\">6\n");
      out.write("           <input type=\"radio\" value=\"7\" name=\"rate4\">7\n");
      out.write("           <input type=\"radio\" value=\"8\" name=\"rate4\">8\n");
      out.write("           <input type=\"radio\" value=\"9\" name=\"rate4\">9\n");
      out.write("           <input type=\"radio\" value=\"10\" name=\"rate4\">10<br><br>          \n");
      out.write("           \n");
      out.write("           \n");
      out.write("           \n");
      out.write("           \n");
      out.write("           <p>5.Computer/technical literacy</p><br>\n");
      out.write("           <input type=\"radio\" value=\"1\" name=\"rate5\">1\n");
      out.write("           <input type=\"radio\" value=\"2\" name=\"rate5\">2\n");
      out.write("           <input type=\"radio\" value=\"3\" name=\"rate5\">3\n");
      out.write("           <input type=\"radio\" value=\"4\" name=\"rate5\">4\n");
      out.write("           <input type=\"radio\" value=\"5\" name=\"rate5\">5\n");
      out.write("           <input type=\"radio\" value=\"6\" name=\"rate5\">6\n");
      out.write("           <input type=\"radio\" value=\"7\" name=\"rate5\">7\n");
      out.write("           <input type=\"radio\" value=\"8\" name=\"rate5\">8\n");
      out.write("           <input type=\"radio\" value=\"9\" name=\"rate5\">9\n");
      out.write("           <input type=\"radio\" value=\"10\" name=\"rate5\">10<br><br>\n");
      out.write("                    \n");
      out.write("          <p>6.Computer Programming</p><br>\n");
      out.write("           <input type=\"radio\" value=\"1\" name=\"rate6\">1\n");
      out.write("           <input type=\"radio\" value=\"2\" name=\"rate6\">2\n");
      out.write("           <input type=\"radio\" value=\"3\" name=\"rate6\">3\n");
      out.write("           <input type=\"radio\" value=\"4\" name=\"rate6\">4\n");
      out.write("           <input type=\"radio\" value=\"5\" name=\"rate6\">5\n");
      out.write("           <input type=\"radio\" value=\"6\" name=\"rate6\">6\n");
      out.write("           <input type=\"radio\" value=\"7\" name=\"rate6\">7\n");
      out.write("           <input type=\"radio\" value=\"8\" name=\"rate6\">8\n");
      out.write("           <input type=\"radio\" value=\"9\" name=\"rate6\">9\n");
      out.write("           <input type=\"radio\" value=\"10\" name=\"rate6\">10<br><br>\n");
      out.write("        \n");
      out.write("               \n");
      out.write("           <input type=\"submit\" value=\"submit\">\n");
      out.write("           \n");
      out.write("               \n");
      out.write("                 \n");
      out.write("         </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
