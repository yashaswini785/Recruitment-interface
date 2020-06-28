package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class seeklogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    \n");
      out.write("<title>Login Form Design</title>\n");
      out.write("\n");

   response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
           response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setDateHeader("Expires", 0);
  
      out.write("\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write(" <div class=\"navbars\">\n");
      out.write("        <a href=\"#default\" class=\"logo\">Placement planner</a>\n");
      out.write("        <div class=\"header-right\">\n");
      out.write("        <a class=\"active\" href=\"#home\">Home</a>\n");
      out.write("         <a href=\"contact.html\">Contact</a>\n");
      out.write("        </div>\n");
      out.write("   </div>\n");
      out.write("    <div class=\"loginbox\">\n");
      out.write("    <img src=\"avatar.png\" class=\"avatar\">\n");
      out.write("        <h1>Login Here</h1>\n");
      out.write("        <form action=\"loginvalid\" method=\"post\">\n");
      out.write("             <p>Username</p>\n");
      out.write("            <input type=\"text\" name=\"name\" placeholder=\"Enter email\">\n");
      out.write("            <p>Password</p>\n");
      out.write("            <input type=\"password\" name=\"password\" placeholder=\"Enter Password\">\n");
      out.write("            <input type=\"submit\" name=\"\" value=\"Login\" >\n");
      out.write("            <a href=\"seekreg.html\">Not a member yet? Register Now</a>\n");
      out.write("           \n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
