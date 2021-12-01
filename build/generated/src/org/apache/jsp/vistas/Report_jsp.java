package org.apache.jsp.vistas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Report_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("          <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.2/css/all.css\" integrity=\"sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"http://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css\" rel=\"stylesheet\" type=\"text/css\"/>  \n");
      out.write("        <title>Reportes</title>\n");
      out.write("        <style>\n");
      out.write("            .input-login {\n");
      out.write("                padding-left: 20px;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                font-weight: 600;\n");
      out.write("                letter-spacing: 1px;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                background: rgba(0, 0, 0,0.1);\n");
      out.write("                height: 40px;\n");
      out.write("                width: 180px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .input-login:hover {\n");
      out.write("                border: 2px solid #111;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("             <div class=\"navbar\" style=\" display: flex; align-items: center; background-color: black\">\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarTogglerDemo03\" aria-controls=\"navbarTogglerDemo03\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"><i class=\"fas fa-bars\" style=\"color:#fff; width: 100%;\"></i></span>\n");
      out.write("            </button>\n");
      out.write("            <a class=\"navbar-brand\" style=\"color: white\" href=\"#\"><i><img src=\"img/logo.png\" width=\"60\" height=\"60\"></i>ZyKe Store</a>\n");
      out.write("\n");
      out.write("            <div style=\"flex: 1; text-align: right;\" id=\"navbarTogglerDemo03\">\n");
      out.write("                <ul style=\"display: inline-block; list-style-type: none;\">         \n");
      out.write("                    <li style=\" display: inline-block; margin-right: 15px; \">\n");
      out.write("                        <a class=\"nav-link\"style=\"text-decoration: none; color: #999999;\"href=\"../index.jsp\"><i class=\"fas fa-home\" style=\"color: white\"></i> Home</a>\n");
      out.write("                    </li>                  \n");
      out.write("                </ul>  \n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div> \n");
      out.write("     <form name=\"Reportes\" action=\"/Progra4/Pdf\">\n");
      out.write("         <select name=\"select\">\n");
      out.write("             <option value=\"1\">Reportes de clientes</option>\n");
      out.write("             <option value=\"2\" selected>Reportes de Ventas</option>\n");
      out.write("             <option value=\"0\">Value 3</option>\n");
      out.write("         </select>\n");
      out.write("         <input class=\"btn btn-outline-warning\" type=\"submit\" value=\"VisualisarPDF\" name=\"btnVer\"> \n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
