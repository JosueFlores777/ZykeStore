package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.sinfloo.modelo.Carrito;
import com.sinfloo.modelo.Producto;
import java.util.List;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_if_test.release();
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.2/css/all.css\" integrity=\"sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay\" crossorigin=\"anonymous\">\r\n");
      out.write("        <link href=\"css/estilos.css\" rel=\"stylesheet\" type=\"text/css\"/>     \r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Merriweather+Sans:wght@300&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"icon\" href=\"img/logorack.png\">\r\n");
      out.write("        <style>\r\n");
      out.write("*{\r\n");
      out.write("    margin: 0;\r\n");
      out.write("    padding: 0;\r\n");
      out.write("    box-sizing: border-box;  \r\n");
      out.write("}\r\n");
      out.write("            nav ul li a{\r\n");
      out.write("                text-decoration: none;\r\n");
      out.write("                color: #111 !important;\r\n");
      out.write("                display: inline-block !important;\r\n");
      out.write("                margin-right: 30px !important;\r\n");
      out.write("                font-size:10px !important;\r\n");
      out.write("                color: #111 !important;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            body{\r\n");
      out.write("                background-color: #fff  !important;\r\n");
      out.write("                font-family: 'Merriweather Sans', sans-serif !important;\r\n");
      out.write("                color: #111 !important;\r\n");
      out.write("            }\r\n");
      out.write("            .container-1 .icon{\r\n");
      out.write("                font-size:10px;\r\n");
      out.write("                font-family:Verdana,Helvetica;\r\n");
      out.write("                font-weight:bold;\r\n");
      out.write("                color:111;\r\n");
      out.write("                border:0px;\r\n");
      out.write("                width:80px;\r\n");
      out.write("                height:30px;\r\n");
      out.write("                margin-right: 15px;\r\n");
      out.write("                background: rgba(255, 255, 255,0.04);\r\n");
      out.write("                -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            .fila{\r\n");
      out.write("                display: flex;\r\n");
      out.write("                align-items: center;\r\n");
      out.write("                flex-wrap: wrap;\r\n");
      out.write("                justify-content: space-around;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .col-2{\r\n");
      out.write("                flex-basis: 50%;\r\n");
      out.write("                min-width: 300px;\r\n");
      out.write("            }\r\n");
      out.write("            .col-2 img{\r\n");
      out.write("                max-width: 300%;\r\n");
      out.write("                padding: 50px ;\r\n");
      out.write("                margin-left: -300px;\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .col-2 h1{\r\n");
      out.write("                font-size: 50px ;\r\n");
      out.write("                line-height: 50px;\r\n");
      out.write("                margin: 25px 0;\r\n");
      out.write("                width: 300%;\r\n");
      out.write("            }\r\n");
      out.write("            .col-2 p{\r\n");
      out.write("                font-size: 20px ;\r\n");
      out.write("                line-height: 20px;\r\n");
      out.write("                margin: 25px 0;\r\n");
      out.write("                width: 250%;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .cabezera{\r\n");
      out.write("                background: radial-gradient(#fff,#ffd6d6);\r\n");
      out.write("            }\r\n");
      out.write("            .cabezera .fila{\r\n");
      out.write("                margin-top: 65px ;\r\n");
      out.write("                padding-bottom: 55px;\r\n");
      out.write("            }\r\n");
      out.write("            .btn{\r\n");
      out.write("                display: inline-block;\r\n");
      out.write("                background: #ff523b ;\r\n");
      out.write("                color: #fff; \r\n");
      out.write("                padding: 8px 30px;\r\n");
      out.write("                margin: 30px 0;\r\n");
      out.write("                border-radius: 30px;\r\n");
      out.write("                transition: background 0.5s;\r\n");
      out.write("            }\r\n");
      out.write("            .btn:hover{\r\n");
      out.write("                background-color: #2C2C2C; \r\n");
      out.write("                color:white;\r\n");
      out.write("            }\r\n");
      out.write("            nav ul li a:hover{\r\n");
      out.write("                color: #FF8F81;\r\n");
      out.write("            }\r\n");
      out.write("            .titulo{\r\n");
      out.write("                text-align: center;\r\n");
      out.write("                margin: 0 auto 80px;\r\n");
      out.write("                position: relative;\r\n");
      out.write("                line-height: 60px;\r\n");
      out.write("                color: #999999;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .titulo::after{\r\n");
      out.write("                content: '';\r\n");
      out.write("                background-color: #00A807;\r\n");
      out.write("                width: 80px;\r\n");
      out.write("                height: 5px;\r\n");
      out.write("                border-radius: 5px;\r\n");
      out.write("                position: absolute;\r\n");
      out.write("                bottom: 0;\r\n");
      out.write("                left: 50%;\r\n");
      out.write("                transform: translateX(-50%);\r\n");
      out.write("            }\r\n");
      out.write("            .categorias{\r\n");
      out.write("                margin: auto;\r\n");
      out.write("                margin-top: 40px;\r\n");
      out.write("                max-width: 1080px;\r\n");
      out.write("                padding: 10px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .col-3{\r\n");
      out.write("                margin-top: 30px;\r\n");
      out.write("                flex-basis: 30%;\r\n");
      out.write("                min-width: 250px;\r\n");
      out.write("                margin-bottom:30px;\r\n");
      out.write("            }\r\n");
      out.write("            .col-3 img{\r\n");
      out.write("                width: 135%;\r\n");
      out.write("              \r\n");
      out.write("                box-shadow: 0px 0px 8px #111;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            .contenedor-pequeno{\r\n");
      out.write("                max-width: 1080px;\r\n");
      out.write("                margin: auto;\r\n");
      out.write("                padding-left: 25px ;\r\n");
      out.write("                padding-right: 25px;\r\n");
      out.write("            }\r\n");
      out.write("            //Producto Carta \r\n");
      out.write("\r\n");
      out.write("            .col-4{\r\n");
      out.write("                display: flex;\r\n");
      out.write("                justify-content: center;\r\n");
      out.write("                align-items: center;\r\n");
      out.write("                min-height: 70vh;\r\n");
      out.write("                flex-basis: 25%;\r\n");
      out.write("                padding: 10px;\r\n");
      out.write("                min-width: 200px;\r\n");
      out.write("                margin-bottom: 50px;\r\n");
      out.write("                position: relative;\r\n");
      out.write("                \r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card{\r\n");
      out.write("                box-shadow: 0px 0px 8px #111;\r\n");
      out.write("                position: relative;\r\n");
      out.write("                width: 320px;\r\n");
      out.write("                height: 600px;\r\n");
      out.write("                background: radial-gradient(#1F1F1F,#111);\r\n");
      out.write("                border-radius: 20px;\r\n");
      out.write("                overflow: hidden;\r\n");
      out.write("                margin-bottom: 60px;\r\n");
      out.write("                \r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card:before{\r\n");
      out.write("\r\n");
      out.write("                content: '';\r\n");
      out.write("                position: absolute;\r\n");
      out.write("                top: 0;\r\n");
      out.write("                left: 0;\r\n");
      out.write("                width: 100%;\r\n");
      out.write("                height: 100%;\r\n");
      out.write("                background: #FF7058;\r\n");
      out.write("                clip-path: circle(200px at 80% 20%);\r\n");
      out.write("                transition: .5s ease-in-out;\r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card:hover:before{\r\n");
      out.write("\r\n");
      out.write("                clip-path: circle(350px at 80% -20%);\r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card::after{\r\n");
      out.write("                content: 'ZyKe';\r\n");
      out.write("                position: absolute;\r\n");
      out.write("                top: 40%;\r\n");
      out.write("                left: -10%;\r\n");
      out.write("                font-size: 8em;\r\n");
      out.write("                font-weight: 800;\r\n");
      out.write("                font-style: italic;\r\n");
      out.write("                color: rgba(255, 255, 255,0.05);\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .col-4 .card .img-box{\r\n");
      out.write("                position: absolute;\r\n");
      out.write("                top: 38%;\r\n");
      out.write("                transform: translateY(-50%);\r\n");
      out.write("                z-index: 12;\r\n");
      out.write("                width: 100%;\r\n");
      out.write("                height: 220px;\r\n");
      out.write("                transition: .5s; \r\n");
      out.write("                color:#fff;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .col-4 .card:hover .img-box{\r\n");
      out.write("                color:#fff;\r\n");
      out.write("                top: 0%;\r\n");
      out.write("                transform: translateY(0%);\r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card .img-box img{\r\n");
      out.write("                \r\n");
      out.write("                position: absolute;\r\n");
      out.write("                top: 75%;\r\n");
      out.write("                left: 52%;\r\n");
      out.write("                transform: translate(-50%,-50%);\r\n");
      out.write("                width: 300px;\r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card .contenedor-bx{\r\n");
      out.write("                 color:#fff;\r\n");
      out.write("                position: absolute;\r\n");
      out.write("                bottom: 40px;\r\n");
      out.write("                width: 100%;\r\n");
      out.write("                height: 50px;\r\n");
      out.write("                text-align: center;\r\n");
      out.write("                transition: 1s;\r\n");
      out.write("                z-index: 10;\r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card:hover .contenedor-bx{\r\n");
      out.write("                height: 220px; \r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .col-4 .card .contenedor-bx h4{\r\n");
      out.write("                color:#fff;\r\n");
      out.write("                position: relative;\r\n");
      out.write("                font-weight: 600;\r\n");
      out.write("                letter-spacing: 1px;\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card .contenedor-bx .tipo,.col-4 .card .contenedor-bx .tamaño{\r\n");
      out.write("                color:#fff;\r\n");
      out.write("                display: flex;\r\n");
      out.write("                justify-content: center;\r\n");
      out.write("                align-items: center;\r\n");
      out.write("                padding: 8px 20px;\r\n");
      out.write("                transition: 0.5s;\r\n");
      out.write("                opacity: 0;\r\n");
      out.write("                visibility: hidden;\r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card:hover .contenedor-bx .tipo{\r\n");
      out.write("                opacity: 1;\r\n");
      out.write("                visibility: visible;\r\n");
      out.write("                transition-delay:0.5s ;\r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card:hover .contenedor-bx .tamaño{\r\n");
      out.write("                opacity: 1;\r\n");
      out.write("                visibility: visible;\r\n");
      out.write("                transition-delay:0.6s ;\r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card .contenedor-bx .tipo h5,.col-4 .card .contenedor-bx .tamaño h5{ \r\n");
      out.write("                 color:#fff;\r\n");
      out.write("\r\n");
      out.write("                font-weight: 300;\r\n");
      out.write("                font-size: 14px;\r\n");
      out.write("                text-transform: uppercase;\r\n");
      out.write("                letter-spacing: 2px;\r\n");
      out.write("                margin-right: 10px;\r\n");
      out.write("                margin-bottom: 20px;\r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card .contenedor-bx a{\r\n");
      out.write("                display: inline-block;\r\n");
      out.write("                padding: 10px 20px;\r\n");
      out.write("                background: #FF5032;\r\n");
      out.write("                border-radius: 4px;\r\n");
      out.write("                margin-top: 3px;\r\n");
      out.write("                text-decoration: none;\r\n");
      out.write("                font-weight: 600;\r\n");
      out.write("                color: #fff;\r\n");
      out.write("                opacity: 0;\r\n");
      out.write("                border:none;\r\n");
      out.write("                transform: translateY(50px);\r\n");
      out.write("                transition: 0.5s;\r\n");
      out.write("                 margin-bottom: 5px;\r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card:hover .contenedor-bx a{\r\n");
      out.write("                opacity: 1;\r\n");
      out.write("                transform: translateY(-10px);\r\n");
      out.write("                transition-delay: 0.75s;\r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card .contenedor-bx button{\r\n");
      out.write("                margin-bottom: 5px;\r\n");
      out.write("                display: inline-block;\r\n");
      out.write("                border:none;\r\n");
      out.write("                padding: 10px 20px;\r\n");
      out.write("                background: #FF5032;\r\n");
      out.write("                border-radius: 4px;\r\n");
      out.write("                margin-top: 3px;\r\n");
      out.write("                text-decoration: none;\r\n");
      out.write("                font-weight: 600;\r\n");
      out.write("                color: #fff;\r\n");
      out.write("                opacity: 0;\r\n");
      out.write("                transform: translateY(50px);\r\n");
      out.write("                transition: 0.5s;\r\n");
      out.write("            }\r\n");
      out.write("            .col-4 .card:hover .contenedor-bx button{\r\n");
      out.write("                opacity: 1;\r\n");
      out.write("                transform: translateY(-10px);\r\n");
      out.write("                transition-delay: 0.75s;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .col-4 img{\r\n");
      out.write("                width: 100%;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("        <title>Zyke Store</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"cabezera\">\r\n");
      out.write("            <div class=\"navbar\" style=\"font-family: 'Merriweather Sans', sans-serif;height: 90px; display: flex; align-items: center; font-size:110%; background: rgba(20, 20, 20,0.1); margin-top: -10px;\">\r\n");
      out.write("\r\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarTogglerDemo03\" aria-controls=\"navbarTogglerDemo03\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                    <span class=\"navbar-toggler-icon\"><i class=\"fas fa-bars\" style=\"color:#111; width: 100%;\"></i></span>\r\n");
      out.write("                </button>  \r\n");
      out.write("                <div class=\"nav-item dropdown\" > \r\n");
      out.write("                    <a class=\"navbar-brand\" style=\"color: #111 ;font-size:120% \" href=\"#\" data-toggle=\"dropdown\"><img src=\"img/logo1.png\" width=\"70\" height=\"70\"> ZyKe Store</a>\r\n");
      out.write("                    <div class=\"dropdown-menu nav-item\"  style=\"background: rgba(255, 255, 255,0.6);\">  \r\n");
      out.write("                        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div style=\"flex: 1; text-align: right; margin-bottom: -20px\" id=\"navbarTogglerDemo03\">\r\n");
      out.write("                    <ul style=\"display: inline-block; list-style-type: none;\">\r\n");
      out.write("                        <li style=\" display: inline-block; margin-right: 30px; \">\r\n");
      out.write("                            <a style=\"text-decoration: none; color: #111; margin-left: -10px;margin-right: -30px;  \" class=\"nav-link\" href=\"./Controlador?accion=home\">Home<span class=\"sr-only\">(current)</span></a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item\" style=\" display: inline-block; margin-right: -1px;  \">\r\n");
      out.write("                            <a class=\"nav-link\"style=\"text-decoration: none; color: #111;\" href=\"./Controlador?accion=Oferta\"></i> Ofertas del Dia</a>\r\n");
      out.write("                        </li>                   \r\n");
      out.write("                        <li class=\"nav-item\" style=\" display: inline-block; margin-right: 15px;  \">\r\n");
      out.write("                            <a class=\"nav-link\"style=\"text-decoration: none; color: #111;\" href=\"./Controlador?accion=carrito\"> Carrito (<label style=\" font-weight: bold; color:#FF523B\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cont}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</label>)</a>\r\n");
      out.write("                        </li>                               \r\n");
      out.write("                    </ul>   \r\n");
      out.write("                    <ul style=\"display: inline-block; list-style-type: none;\">\r\n");
      out.write("                        <form action=\"Controlador\" class=\"container-1\" style=\" width: 300px; vertical-align: middle; white-space: nowrap; position: relative;\">\r\n");
      out.write("                            <button class=\"icon\" style=\"font-size: 80%; background: rgba(255, 255, 255,0.3); \" type=\"submit\" name=\"accion\" value=\"BuscarProducto\"><i class=\"fas fa-search\" style=\"color:#111; \"></i></button>\r\n");
      out.write("                            <input placeholder=\"Buscar\" class=\"\" style=\"width: 200px;height: 40px;margin-top: -3px; background: rgba(255, 255, 255,0.3); border: none; font-size: 12pt; float: left; color: #111; padding-left: 45px; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;\" name=\"txtBuscar\">\r\n");
      out.write("                        </form>  \r\n");
      out.write("\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <ul role=\"group\" style=\"display: inline-block; list-style-type: none; \">\r\n");
      out.write("                        ");
      if (_jspx_meth_c_if_3(_jspx_page_context))
        return;
      out.write("                                              \r\n");
      out.write("                            ");
      if (_jspx_meth_c_if_4(_jspx_page_context))
        return;
      out.write("    \r\n");
      out.write("                        <div class=\"dropdown-menu text-center dropdown-menu-right\" style=\"background: rgba(255, 255, 255,0.6); margin-top: -1px\">\r\n");
      out.write("                            ");
      if (_jspx_meth_c_if_5(_jspx_page_context))
        return;
      out.write("                                              \r\n");
      out.write("                            ");
      if (_jspx_meth_c_if_6(_jspx_page_context))
        return;
      out.write("                      \r\n");
      out.write("\r\n");
      out.write("                            ");
      if (_jspx_meth_c_if_7(_jspx_page_context))
        return;
      out.write("  \r\n");
      out.write("                            ");
      if (_jspx_meth_c_if_8(_jspx_page_context))
        return;
      out.write("   \r\n");
      out.write("\r\n");
      out.write("                            <a  style=\"color: black; font-family: 'Merriweather Sans', sans-serif !important;\" onmouseover='this.style.color = \"black\";'  onmouseout='this.style.color = \"black\";' class=\"dropdown-item\" href=\"./Controlador?accion=Salir\"> <i class=\"fas fa-sign-out-alt\"> Salir</i></a>                        \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </ul>     \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"fila\" style=\"margin-left:-100px; \">\r\n");
      out.write("                <div class=\"col-2\" style=\"\">\r\n");
      out.write("                    <h1 style=\"font-weight: bold; font-size: 70px\">Siente Un Verdadero <br> <br> Gamer!</h1>\r\n");
      out.write("                    <p style=\" font-size: 20px\"> Todos Nuestros Productos Van 100% Enfocados Para Los Verdaderos Gamers,\r\n");
      out.write("                        Esto Es Para Consentir A Los Mejores Gamers Del Pais. Se Parte De Ellos.</p>\r\n");
      out.write("                    <a href=\"\" class=\"btn\">Explora Ahora &#10140;</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-2\">\r\n");
      out.write("                    <img src=\"img/gamer2.png\" >\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"categorias\">\r\n");
      out.write("            <div class=\"contenedor-pequeno\" >\r\n");
      out.write("\r\n");
      out.write("                <div class=\"fila\">\r\n");
      out.write("                    <div class=\"col-3\">\r\n");
      out.write("                        <img src=\"img/category-1.png\" >\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-3\">\r\n");
      out.write("                        <img src=\"img/category-2.png\" >\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-3\">\r\n");
      out.write("                        <img src=\"img/category-3.png\" >\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container mt-4\">\r\n");
      out.write("            <div class=\"row\">  \r\n");
      out.write("\r\n");
      out.write("                ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("  \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>       \r\n");
      out.write("        <!-- Modal1 Iniciar Session o Registrarse -->\r\n");
      out.write("        <div class=\"modal fade\" id=\"myModalLogueo1\" tabindex=\"-1\" role=\"dialog\">\r\n");
      out.write("            <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\r\n");
      out.write("                <div class=\"container col-lg-9\">                   \r\n");
      out.write("                    <div class=\"modal-content\" id=\"contenido1\">                   \r\n");
      out.write("                        <!--Aqui el Contenido de Login y Registro-->\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- Modal Iniciar Session o Registrarse -->\r\n");
      out.write("        <div class=\"modal fade\" id=\"myModalLogueo\" tabindex=\"-1\" role=\"dialog\">\r\n");
      out.write("            <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\r\n");
      out.write("                <div class=\"container col-lg-9\">                   \r\n");
      out.write("                    <div class=\"modal-content\" id=\"contenido\">                   \r\n");
      out.write("                        <!--Aqui el Contenido de Login y Registro-->\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.js\" integrity=\"sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"js/funcionregistro.js\" type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("        </script>\r\n");
      out.write("        <script  type=\"text/javascript\">\r\n");
      out.write("            function CargarModalLogueo() {\r\n");
      out.write("                //document.getElementById(\"contenido\").innerHTML = \"\";\r\n");
      out.write("                $(\"#myModalLogueo\").modal('show');\r\n");
      out.write("                $(\"#contenido\").load(\"Controlador?accion=IniciarSession\");\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("        <script  type=\"text/javascript\">\r\n");
      out.write("            function CargarModalLogueo1() {\r\n");
      out.write("                //document.getElementById(\"contenido\").innerHTML = \"\";\r\n");
      out.write("                $(\"#myModalLogueo1\").modal('show');\r\n");
      out.write("                $(\"#contenido1\").load(\"Controlador?accion=IniciarSession\");\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("        <script  type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("        </script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.id!=null&&clientelogueado.id!=0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                            <a class=\"nav-link dropdown-item\"  style=\"color: #111;\" onmouseover='this.style.color = \"black\";'  onmouseout='this.style.color = \"black\";'  href=\"./Controlador?accion=Usuarios\"><i class=\"fa fa-angle-right\"></i> Usuarios</a>\r\n");
        out.write("\r\n");
        out.write("                            ");
        if (_jspx_meth_c_if_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                            ");
        if (_jspx_meth_c_if_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.idrol==1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                <a class=\"nav-link dropdown-item\"  style=\"color: #111;\" onmouseover='this.style.color = \"black\";'  onmouseout='this.style.color = \"black\";' href=\"./Controlador?accion=Productos\"><i class=\"fa fa-angle-right\"></i> Productos</a>                                                                         \r\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_if_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.idrol==1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                <a class=\"nav-link dropdown-item\" style=\"color: #111;\" onmouseover='this.style.color = \"black\";'  onmouseout='this.style.color = \"black\";' href=\"./Controlador?accion=Reportes\"><i class=\"fa fa-angle-right\"></i> Reportes</a>                                                                         \r\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }

  private boolean _jspx_meth_c_if_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_3.setPageContext(_jspx_page_context);
    _jspx_th_c_if_3.setParent(null);
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.id==null||clientelogueado.id==0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                            <a style=\"color: black; cursor: pointer\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\r\n");
        out.write("                                <i class=\"fas fa-user\" style=\"color: black;\"></i> Iniciar Sesion</a> \r\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
    return false;
  }

  private boolean _jspx_meth_c_if_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_4 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_4.setPageContext(_jspx_page_context);
    _jspx_th_c_if_4.setParent(null);
    _jspx_th_c_if_4.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.id!=null&&clientelogueado.id!=0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_4 = _jspx_th_c_if_4.doStartTag();
    if (_jspx_eval_c_if_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                            <a style=\"color: black; cursor: pointer\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\r\n");
        out.write("                                <i class=\"fas fa-user\" style=\"color: black;\"></i> ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.nombres}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</a>  \r\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
    return false;
  }

  private boolean _jspx_meth_c_if_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_5 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_5.setPageContext(_jspx_page_context);
    _jspx_th_c_if_5.setParent(null);
    _jspx_th_c_if_5.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.id==null||clientelogueado.id==0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_5 = _jspx_th_c_if_5.doStartTag();
    if (_jspx_eval_c_if_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                <a style=\"color: black;\" onmouseover='this.style.color = \"black\";'  onmouseout='this.style.color = \"black\";' class=\"dropdown-item\" href=\"#\"><img src=\"img/logo02.png\" width=\"60\" height=\"60\"/></a>                        \r\n");
        out.write("                                <a style=\"color:black;\" onmouseover='this.style.color = \"black\";'  onmouseout='this.style.color = \"black\";' class=\"dropdown-item\" onclick=\"CargarModalLogueo()\">Iniciar Sesion</a> \r\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_5.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_5);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_5);
    return false;
  }

  private boolean _jspx_meth_c_if_6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_6 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_6.setPageContext(_jspx_page_context);
    _jspx_th_c_if_6.setParent(null);
    _jspx_th_c_if_6.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.id!=null&&clientelogueado.id!=0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_6 = _jspx_th_c_if_6.doStartTag();
    if (_jspx_eval_c_if_6 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                <a style=\"color: black;\" onmouseover='this.style.color = \"black\";'  onmouseout='this.style.color = \"black\";' class=\"dropdown-item\" href=\"#\"><img src=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.foto}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" width=\"60\" height=\"60\"/></a>                       \r\n");
        out.write("                                <a style=\"color: black;\" onmouseover='this.style.color = \"black\";'  onmouseout='this.style.color = \"black\";' class=\"dropdown-item\" onclick=\"CargarModalLogueo()\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</a>  \r\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_6.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_6);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_6);
    return false;
  }

  private boolean _jspx_meth_c_if_7(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_7 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_7.setPageContext(_jspx_page_context);
    _jspx_th_c_if_7.setParent(null);
    _jspx_th_c_if_7.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.id!=null&&clientelogueado.id!=0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_7 = _jspx_th_c_if_7.doStartTag();
    if (_jspx_eval_c_if_7 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                <a style=\"color: black;\" onmouseover='this.style.color = \"black\";'  onmouseout='this.style.color = \"black\";'class=\"dropdown-item\" href=\"./Controlador?accion=MisCompras\">Mis Compras</a> \r\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_7.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_7);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_7);
    return false;
  }

  private boolean _jspx_meth_c_if_8(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_8 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_8.setPageContext(_jspx_page_context);
    _jspx_th_c_if_8.setParent(null);
    _jspx_th_c_if_8.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.id==null||clientelogueado.id==0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_8 = _jspx_th_c_if_8.doStartTag();
    if (_jspx_eval_c_if_8 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("                            \r\n");
        out.write("                                <a style=\"color: black;\" onmouseover='this.style.color = \"black\";'  onmouseout='this.style.color = \"black\";' class=\"dropdown-item\" onclick=\"CargarModalLogueo()\">Mis Compras</a> \r\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_8.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_8);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_8);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("p");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${productos}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                    <div class=\"col-4\" style=\"display: flex;\r\n");
          out.write("                justify-content: center;\r\n");
          out.write("                align-items: center;\r\n");
          out.write("                min-height: 70vh;\r\n");
          out.write("                flex-basis: 25%;\r\n");
          out.write("                padding: 10px;\r\n");
          out.write("                min-width: 285px;\r\n");
          out.write("                position: relative;\r\n");
          out.write("                \">\r\n");
          out.write("\r\n");
          out.write("                        <div class=\"card\">\r\n");
          out.write("                            <div class=\"img-box\">\r\n");
          out.write("\r\n");
          out.write("                                <img class=\"Razer\" src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getImagen()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\r\n");
          out.write("                            </div>\r\n");
          out.write("                            <div class=\"contenedor-bx\">\r\n");
          out.write("                                <h4>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getNombres()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h4>\r\n");
          out.write("                                <div class=\"tipo\">\r\n");
          out.write("                                    <span>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getDescripcion()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                </div>\r\n");
          out.write("                                <div class=\"tamaño\">\r\n");
          out.write("                                    ");
          if (_jspx_meth_c_if_9((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                    ");
          if (_jspx_meth_c_if_10((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                </div>\r\n");
          out.write("\r\n");
          out.write("                                <div class=\" col-sm-13 text-center\">                                         \r\n");
          out.write("                                    <div class=\"modal fade\" id=\"modalStock\" tabindex=\"20000\" role=\"dialog\" aria-labelledby=\"mySmallModalLabel\" aria-hidden=\"true\">\r\n");
          out.write("                                        <div class=\"modal-dialog modal-sm\" >\r\n");
          out.write("                                            <div class=\"modal-title\">                                                   \r\n");
          out.write("                                                <div class=\"modal-body\">\r\n");
          out.write("                                                    <img src=\"img/agotado.png\" style=\"position: absolute; z-index: 30000;\" >\r\n");
          out.write("                                                </div>\r\n");
          out.write("                                            </div>\r\n");
          out.write("                                        </div>\r\n");
          out.write("                                    </div>\r\n");
          out.write("\r\n");
          out.write("                                    ");
          if (_jspx_meth_c_if_17((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                </div> \r\n");
          out.write("                            </div>\r\n");
          out.write("                        </div>\r\n");
          out.write("                    </div>\r\n");
          out.write("\r\n");
          out.write("                ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_9(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_9 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_9.setPageContext(_jspx_page_context);
    _jspx_th_c_if_9.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_9.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getStock()==0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_9 = _jspx_th_c_if_9.doStartTag();
    if (_jspx_eval_c_if_9 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write(" \r\n");
        out.write("                                        <img src=\"img/agotado.png\" style=\"width: 55%;\"> \r\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_9.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_9.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_9);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_9);
    return false;
  }

  private boolean _jspx_meth_c_if_10(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_10 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_10.setPageContext(_jspx_page_context);
    _jspx_th_c_if_10.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_10.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getStock()!=0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_10 = _jspx_th_c_if_10.doStartTag();
    if (_jspx_eval_c_if_10 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write(" \r\n");
        out.write("                                        <h5>Precio:<span>$ ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getPrecio()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</span> </h5>\r\n");
        out.write("                                        ");
        if (_jspx_meth_c_if_11((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_10, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("\r\n");
        out.write("                                        ");
        if (_jspx_meth_c_if_12((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_10, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("                                                         \r\n");
        out.write("                                        ");
        if (_jspx_meth_c_if_13((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_10, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("                                                         \r\n");
        out.write("                                        ");
        if (_jspx_meth_c_if_14((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_10, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("                                                         \r\n");
        out.write("                                        ");
        if (_jspx_meth_c_if_15((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_10, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("                                                         \r\n");
        out.write("                                        ");
        if (_jspx_meth_c_if_16((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_10, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("  \r\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_10.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_10.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_10);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_10);
    return false;
  }

  private boolean _jspx_meth_c_if_11(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_10, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_11 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_11.setPageContext(_jspx_page_context);
    _jspx_th_c_if_11.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_10);
    _jspx_th_c_if_11.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getEstado()=='20'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_11 = _jspx_th_c_if_11.doStartTag();
    if (_jspx_eval_c_if_11 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                            <img src=\"img/20Off.png\" style=\"width: 40%;\"> \r\n");
        out.write("                                        ");
        int evalDoAfterBody = _jspx_th_c_if_11.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_11.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_11);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_11);
    return false;
  }

  private boolean _jspx_meth_c_if_12(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_10, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_12 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_12.setPageContext(_jspx_page_context);
    _jspx_th_c_if_12.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_10);
    _jspx_th_c_if_12.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getEstado()=='30'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_12 = _jspx_th_c_if_12.doStartTag();
    if (_jspx_eval_c_if_12 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                            <img src=\"img/30Off.png\" style=\"width: 40%;\"> \r\n");
        out.write("                                        ");
        int evalDoAfterBody = _jspx_th_c_if_12.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_12.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_12);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_12);
    return false;
  }

  private boolean _jspx_meth_c_if_13(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_10, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_13 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_13.setPageContext(_jspx_page_context);
    _jspx_th_c_if_13.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_10);
    _jspx_th_c_if_13.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getEstado()=='40'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_13 = _jspx_th_c_if_13.doStartTag();
    if (_jspx_eval_c_if_13 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                            <img src=\"img/40Off.png\" style=\"width: 40%;\"> \r\n");
        out.write("                                        ");
        int evalDoAfterBody = _jspx_th_c_if_13.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_13.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_13);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_13);
    return false;
  }

  private boolean _jspx_meth_c_if_14(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_10, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_14 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_14.setPageContext(_jspx_page_context);
    _jspx_th_c_if_14.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_10);
    _jspx_th_c_if_14.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getEstado()=='50'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_14 = _jspx_th_c_if_14.doStartTag();
    if (_jspx_eval_c_if_14 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                            <img src=\"img/50Off.png\" style=\"width: 40%;\"> \r\n");
        out.write("                                        ");
        int evalDoAfterBody = _jspx_th_c_if_14.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_14.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_14);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_14);
    return false;
  }

  private boolean _jspx_meth_c_if_15(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_10, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_15 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_15.setPageContext(_jspx_page_context);
    _jspx_th_c_if_15.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_10);
    _jspx_th_c_if_15.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getEstado()=='60'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_15 = _jspx_th_c_if_15.doStartTag();
    if (_jspx_eval_c_if_15 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                            <img src=\"img/60Off.png\" style=\"width: 40%;\"> \r\n");
        out.write("                                        ");
        int evalDoAfterBody = _jspx_th_c_if_15.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_15.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_15);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_15);
    return false;
  }

  private boolean _jspx_meth_c_if_16(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_10, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_16 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_16.setPageContext(_jspx_page_context);
    _jspx_th_c_if_16.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_10);
    _jspx_th_c_if_16.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getEstado()=='70'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_16 = _jspx_th_c_if_16.doStartTag();
    if (_jspx_eval_c_if_16 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                            <img src=\"img/70Off.png\" style=\"width: 40%;\"> \r\n");
        out.write("                                        ");
        int evalDoAfterBody = _jspx_th_c_if_16.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_16.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_16);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_16);
    return false;
  }

  private boolean _jspx_meth_c_if_17(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_17 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_17.setPageContext(_jspx_page_context);
    _jspx_th_c_if_17.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_17.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getStock()!=0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_17 = _jspx_th_c_if_17.doStartTag();
    if (_jspx_eval_c_if_17 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write(" \r\n");
        out.write("                                        ");
        if (_jspx_meth_c_if_18((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_17, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("\r\n");
        out.write("                                        ");
        if (_jspx_meth_c_if_19((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_17, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("\r\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_17.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_17.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_17);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_17);
    return false;
  }

  private boolean _jspx_meth_c_if_18(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_17, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_18 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_18.setPageContext(_jspx_page_context);
    _jspx_th_c_if_18.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_17);
    _jspx_th_c_if_18.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.id==null||clientelogueado.id==0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_18 = _jspx_th_c_if_18.doStartTag();
    if (_jspx_eval_c_if_18 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write(" \r\n");
        out.write("                                            <button data-toggle=\"modal\" onclick=\"CargarModalLogueo1()\" data-target=\"#myModalLogueo1\" class=\"btn btn2 btn-outline-primary\">Agregar a Carrito<i class=\"fas fa-cart-plus\"></i></button>\r\n");
        out.write("                                            <button data-toggle=\"modal\" onclick=\"CargarModalLogueo1()\" data-target=\"#myModalLogueo1\" class=\"btn btn-danger\">Comprar</button>\r\n");
        out.write("                                        ");
        int evalDoAfterBody = _jspx_th_c_if_18.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_18.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_18);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_18);
    return false;
  }

  private boolean _jspx_meth_c_if_19(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_17, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_19 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_19.setPageContext(_jspx_page_context);
    _jspx_th_c_if_19.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_17);
    _jspx_th_c_if_19.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${clientelogueado.id!=null&&clientelogueado.id!=0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_19 = _jspx_th_c_if_19.doStartTag();
    if (_jspx_eval_c_if_19 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                            <a href=\"Controlador?accion=AgregarCarrito&id=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" class=\"btn btn2 btn-outline-primary\">Agregar a Carrito<i class=\"fas fa-cart-plus\"></i></a>\r\n");
        out.write("                                            <a href=\"Controlador?accion=Comprar&id=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" class=\"btn btn-danger\">Comprar</a>\r\n");
        out.write("                                        ");
        int evalDoAfterBody = _jspx_th_c_if_19.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_19.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_19);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_19);
    return false;
  }
}
