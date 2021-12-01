package org.apache.jsp.vistas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.sinfloo.modelo.Producto;

public final class addProducto_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.2/css/all.css\" integrity=\"sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay\" crossorigin=\"anonymous\">\r\n");
      out.write("        <link href=\"http://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css\" rel=\"stylesheet\" type=\"text/css\"/>        \r\n");
      out.write("        <title>Carrito de Compras</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
      out.write("      \r\n");
      out.write("            <div class=\"navbar\" style=\" display: flex; align-items: center; background-color: black\">\r\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarTogglerDemo03\" aria-controls=\"navbarTogglerDemo03\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                    <span class=\"navbar-toggler-icon\"><i class=\"fas fa-bars\" style=\"color:#fff; width: 100%;\"></i></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <a class=\"navbar-brand\" style=\"color: white\" href=\"#\"><i><img src=\"img/logo.png\" width=\"60\" height=\"60\"></i>ZyKe Store</a>\r\n");
      out.write("\r\n");
      out.write("                <div style=\"flex: 1; text-align: right;\" id=\"navbarTogglerDemo03\">\r\n");
      out.write("                    <ul style=\"display: inline-block; list-style-type: none;\">         \r\n");
      out.write("                        <li style=\" display: inline-block; margin-right: 15px; \">\r\n");
      out.write("                            <a class=\"nav-link\"style=\"text-decoration: none; color: #999999;\"href=\"./Controlador?accion=home\"><i class=\"fas fa-home\" style=\"color: white\"></i> Home</a>\r\n");
      out.write("                        </li>                  \r\n");
      out.write("                    </ul>  \r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div> \r\n");
      out.write("            <!-- Modal Add Producto -->\r\n");
      out.write("            <div class=\"modal fade bd-example-modal-lg\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myLargeModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("                <div class=\"modal-dialog modal-lg\">\r\n");
      out.write("                    <div class=\"modal-content\">\r\n");
      out.write("                        <div class=\"card\">\r\n");
      out.write("                            <div class=\"card-header\">\r\n");
      out.write("                                <h3>Agregar Producto</h3>\r\n");
      out.write("                            </div>                \r\n");
      out.write("                            <div class=\"card-body\">\r\n");
      out.write("                                <form class=\"formulario\" name=\"formulario1\"id=\"formulario\" action=\"Controlador?accion=GuardarProducto\" method=\"POST\" enctype=\"multipart/form-data\">\r\n");
      out.write("                                    <div class=\"row\">\r\n");
      out.write("                                        <div class=\"col-sm-6\">\r\n");
      out.write("                                            <!-- <div class=\"form-group\">\r\n");
      out.write("                                                <label>Nombres:</label>\r\n");
      out.write("                                                <input type=\"text\" name=\"txtNombre\" class=\"form-control\">\r\n");
      out.write("                                            </div> -->  \r\n");
      out.write("                                            <!-- NOMBRE -->\r\n");
      out.write("                                            <div class=\"formulario__grupo\" id=\"grupo__nombre\">\r\n");
      out.write("                                                <label for=\"usuario\" class=\"formulario__label\">Ingrese nombre</label>\r\n");
      out.write("                                                <div class=\"formulario__grupo-input\">\r\n");
      out.write("                                                    <input type=\"text\" class=\"formulario__input\" name=\"txtNombre\" id=\"txtNombre\" placeholder=\"Nombre...\">\r\n");
      out.write("                                                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <!--MENSAJE DE ERROR NOMBRE -->  \r\n");
      out.write("                                                <p class=\"formulario__input-error\" style=\"color: black\" >El nombre tiene que ser de 4 a 40 dígitos.</p>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <!--Descripcion \r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                                <label>Descripcion</label>\r\n");
      out.write("                                                <textarea name=\"txtDescripcion\" class=\"form-control\"></textarea>\r\n");
      out.write("                                            </div> \r\n");
      out.write("---->  \r\n");
      out.write("                                            <div class=\"formulario__grupo\" id=\"grupo__Descripcion\">\r\n");
      out.write("                                                <label for=\"\" class=\"formulario__label\">Ingrese Descripcion</label>\r\n");
      out.write("                                                <div class=\"formulario__grupo-input\">\r\n");
      out.write("                                                    <input type=\"text\" class=\"formulario__input\" name=\"txtDescripcion\" id=\"txtDescripcion\" placeholder=\"Nombre...\">\r\n");
      out.write("                                                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            <!--    --MENSAJE DE ERROR Descripcion -->  \r\n");
      out.write("                                                <p class=\"formulario__input-error\" style=\"color: black\" >La Descripcion tiene que ser de 4 a 400 dígitos.</p>\r\n");
      out.write("                                            </div>\r\n");
      out.write("\r\n");
      out.write("                                            <div class=\"form-group\">                            \r\n");
      out.write("                                                <input type=\"file\" name=\"txtFoto\" placeholder=\"sad\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"col-sm-6\">  \r\n");
      out.write("                                            <!--\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                                <label>Precio</label>\r\n");
      out.write("                                                <input type=\"text\" step=\"0.01\" id=\"precio\" name=\"txtPrecio\" class=\"form-control\">\r\n");
      out.write("                                            </div>  --> \r\n");
      out.write("                                             <div class=\"formulario__grupo\" id=\"grupo__Precio\">\r\n");
      out.write("                                                <label for=\"\" class=\"formulario__label\">Ingrese Precio</label>\r\n");
      out.write("                                                <div class=\"formulario__grupo-input\">\r\n");
      out.write("                                                    <input type=\"text\" class=\"formulario__input\" name=\"txtPrecio\" id=\"txtPrecio\" placeholder=\"Precio...\">\r\n");
      out.write("                                                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            <!--    --MENSAJE DE ERROR Precio -->  \r\n");
      out.write("                                                <p class=\"formulario__input-error\" style=\"color: black\" >La Precio tiene que tener.</p>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            \r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                                <!-- <label>Stock</label>grupo__Stock\r\n");
      out.write("                                                <input type=\"number\" name=\"txtStock\" class=\"form-control\">\r\n");
      out.write("                                                -->  \r\n");
      out.write("                                                  <div class=\"formulario__grupo\" id=\"grupo__Stock\">\r\n");
      out.write("                                                <label for=\"\" class=\"formulario__label\">Ingrese Stock</label>\r\n");
      out.write("                                                <div class=\"formulario__grupo-input\">\r\n");
      out.write("                                                    <input type=\"text\" class=\"formulario__input\" name=\"txtStock\" id=\"txtStock\" placeholder=\"Stock...\">\r\n");
      out.write("                                                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            <!--    --MENSAJE DE ERROR Precio -->  \r\n");
      out.write("                                                <p class=\"formulario__input-error\" style=\"color: black\" >Solo numero enteros no puedes ingresar numeros.</p>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                                <label>Categoria</label>\r\n");
      out.write("                                                <select class=\"form-control\" name=\"txtcategoria\">\r\n");
      out.write("                                                    <option>Seleccionar</option>\r\n");
      out.write("                                                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                                </select>\r\n");
      out.write("                                            </div>                                       \r\n");
      out.write("                                        </div> \r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <button class=\"btn btn-outline-dark\" name=\"accion\" value=\"GuardarProducto\">Guardar</button>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                </form>\r\n");
      out.write("                            </div>               \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </form>\r\n");
      out.write("       \r\n");
      out.write("        <!-- Modal Edit Producto -->\r\n");
      out.write("        <div class=\"modal fade bd-example-modal-lg\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("            <div class=\"modal-dialog modal-lg\" role=\"document\">\r\n");
      out.write("                <div class=\"modal-content\">\r\n");
      out.write("                    <div class=\"modal-header\">\r\n");
      out.write("                        <h5 class=\"modal-title\" id=\"exampleModalLabel\">Actualizar Producto</h5>\r\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("                            <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("                        </button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"modal-body\" id=\"contenido\">\r\n");
      out.write("\r\n");
      out.write("                    </div>                  \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container mt-4\">            \r\n");
      out.write("            <button type=\"button\" class=\"btn btn-outline-dark\" data-toggle=\"modal\" data-target=\".bd-example-modal-lg\"><i class=\"fas fa-notes-medical\"></i> Nuevo Producto</button>\r\n");
      out.write("            <hr>\r\n");
      out.write("            <table class=\"table\" id=\"myTable\">\r\n");
      out.write("                <thead>\r\n");
      out.write("                    <tr class=\"text-center\">\r\n");
      out.write("                        <th>ID</th>\r\n");
      out.write("                        <th>NOMBRE</th>\r\n");
      out.write("                        <th>IMAGEN</th>                               \r\n");
      out.write("                        <th>DESCRIPCION</th>                               \r\n");
      out.write("                        <th>PRECIO</th>\r\n");
      out.write("                        <th>STOCK</th>\r\n");
      out.write("                        <th>CATEGORIA</th>\r\n");
      out.write("                        <th>ESTADO</th>\r\n");
      out.write("                        <th>ACCIONES</th>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </thead>\r\n");
      out.write("                <tbody>\r\n");
      out.write("                    ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("                           \r\n");
      out.write("                </tbody>\r\n");
      out.write("            </table>\r\n");
      out.write("        </div>\r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.js\" integrity=\"sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"http://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js\"></script>\r\n");
      out.write("        <script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\">\r\n");
      out.write("        </script>\r\n");
      out.write("        <script>\r\n");
      out.write("            $(document).ready(function () {\r\n");
      out.write("                $('#myTable').DataTable();\r\n");
      out.write("            });\r\n");
      out.write("        </script>\r\n");
      out.write("        <script>\r\n");
      out.write("            function CargarModal(id) {\r\n");
      out.write("                document.getElementById(\"contenido\").innerHTML = \"\";\r\n");
      out.write("                $(\"#myModal\").modal('show');\r\n");
      out.write("                $(\"#contenido\").load(\"Controlador?accion=Editar\", {id: id});\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("        <script>\r\n");
      out.write("            function Eliminar(id) {                            \r\n");
      out.write("                swal({\r\n");
      out.write("                    title: \"Esta Seguro de Eliminar Producto \"+id+\"?\",\r\n");
      out.write("                    text: \"Una una Vez Eliminado, Debera Registrar de Nuevo!\",\r\n");
      out.write("                    icon: \"warning\",\r\n");
      out.write("                    buttons: true,\r\n");
      out.write("                    dangerMode: true\r\n");
      out.write("                }).then((willDelete) => {\r\n");
      out.write("                    if (willDelete) {\r\n");
      out.write("                        eliminar(id);\r\n");
      out.write("                        swal(\" ¡Oh! ¡Registro Borrado! \", {\r\n");
      out.write("                            icon: \"success\",\r\n");
      out.write("                        }).then((willDelete) => {\r\n");
      out.write("                            if (willDelete) {\r\n");
      out.write("                                parent.location.href = \"Controlador?accion=Productos\";\r\n");
      out.write("                            }\r\n");
      out.write("                        });\r\n");
      out.write("                    }\r\n");
      out.write("                });\r\n");
      out.write("            }\r\n");
      out.write("            ;\r\n");
      out.write("            function eliminar(idp) {\r\n");
      out.write("                var url = \"Controlador?accion=EliminarProducto&id=\" + idp;\r\n");
      out.write("                $.ajax({\r\n");
      out.write("                    type: 'POST',\r\n");
      out.write("                    url: url,\r\n");
      out.write("                    async: true,\r\n");
      out.write("                    success: function (r) {\r\n");
      out.write("                    }\r\n");
      out.write("                });\r\n");
      out.write("            }\r\n");
      out.write("            ;\r\n");
      out.write("const formulario = document.getElementById('formulario');\r\n");
      out.write("const inputs = document.querySelectorAll('#formulario input');\r\n");
      out.write("const expresiones = {\r\n");
      out.write("\ttxtNombre: /^[A-Za-záéíóúÁÉÍÓÚñÑ ]{3,25}$/, \r\n");
      out.write("\ttxtPrecio: /^[0-9]+(,[0-9]+)?$/, \r\n");
      out.write("\ttxtDescripcion: /^[a-zA-Z0-9\\_\\-]{4,160}$/,\r\n");
      out.write("\ttxtStock: /^\\d+$/\r\n");
      out.write("}\r\n");
      out.write("const validarFormulario = (e) => {\r\n");
      out.write("\t\tswitch (e.target.name) {\r\n");
      out.write("\t\tcase \"txtNombre\":\r\n");
      out.write("                     if(expresiones.txtNombre.test(e.target.value)){\r\n");
      out.write("                            document.getElementById('grupo__nombre').classList.remove('formulario__grupo-incorrecto');\r\n");
      out.write("                             document.getElementById('grupo__nombre').classList.add('formulario__grupo-correcto');\r\n");
      out.write("                             document.querySelector('#grupo__nombre i').classList.add('fa-check-circle');\r\n");
      out.write("                             document.querySelector('#grupo__nombre i').classList.remove('fa-times-circle');\r\n");
      out.write("                              document.querySelector('#grupo__nombre .formulario__input-error').classList.remove('formulario__input-error-activo');\r\n");
      out.write("                        }else {\r\n");
      out.write("                            document.getElementById('grupo__nombre').classList.add('formulario__grupo-incorrecto');\r\n");
      out.write("                            document.getElementById('grupo__nombre').classList.remove('formulario__grupo-correcto');\r\n");
      out.write("                            document.querySelector('#grupo__nombre i').classList.remove('fa-check-circle');\r\n");
      out.write("                             document.querySelector('#grupo__nombre i').classList.add('fa-times-circle');\r\n");
      out.write("                             document.querySelector('#grupo__nombre .formulario__input-error').classList.add('formulario__input-error-activo');\r\n");
      out.write("                        }\r\n");
      out.write("\t\tbreak;\r\n");
      out.write("\t\tcase \"txtPrecio\":\r\n");
      out.write("\t\t\t  if(expresiones.txtPrecio.test(e.target.value)){\r\n");
      out.write("                            document.getElementById('grupo__Precio').classList.remove('formulario__grupo-incorrecto');\r\n");
      out.write("                             document.getElementById('grupo__Precio').classList.add('formulario__grupo-correcto');\r\n");
      out.write("                               document.querySelector('#grupo__Precio i').classList.add('fa-check-circle');\r\n");
      out.write("                             document.querySelector('#grupo__Precio i').classList.remove('fa-times-circle');\r\n");
      out.write("                             document.querySelector('#grupo__Precio .formulario__input-error').classList.remove('formulario__input-error-activo');\r\n");
      out.write("                        }else {\r\n");
      out.write("                            document.getElementById('grupo__Precio').classList.add('formulario__grupo-incorrecto');\r\n");
      out.write("                            document.getElementById('grupo__Precio').classList.remove('formulario__grupo-correcto');\r\n");
      out.write("                           document.querySelector('#grupo__Precio i').classList.remove('fa-check-circle');\r\n");
      out.write("                             document.querySelector('#grupo__Precio i').classList.add('fa-times-circle');\r\n");
      out.write("                             document.querySelector('#grupo__Precio .formulario__input-error').classList.add('formulario__input-error-activo');\r\n");
      out.write("                        }\r\n");
      out.write("\t\tbreak;\r\n");
      out.write("\t\tcase \"txtDescripcion\":\r\n");
      out.write("\t\t\t  if(expresiones.txtDescripcion.test(e.target.value)){\r\n");
      out.write("                            document.getElementById('grupo__Descripcion').classList.remove('formulario__grupo-incorrecto');\r\n");
      out.write("                             document.getElementById('grupo__Descripcion').classList.add('formulario__grupo-correcto');\r\n");
      out.write("                               document.querySelector('#grupo__Descripcion i').classList.add('fa-check-circle');\r\n");
      out.write("                             document.querySelector('#grupo__Descripcion i').classList.remove('fa-times-circle');\r\n");
      out.write("                             document.querySelector('#grupo__Descripcion .formulario__input-error').classList.remove('formulario__input-error-activo');\r\n");
      out.write("                        }else {\r\n");
      out.write("                            document.getElementById('grupo__Descripcion').classList.add('formulario__grupo-incorrecto');\r\n");
      out.write("                            document.getElementById('grupo__Descripcion').classList.remove('formulario__grupo-correcto');\r\n");
      out.write("                           document.querySelector('#grupo__Descripcion i').classList.remove('fa-check-circle');\r\n");
      out.write("                             document.querySelector('#grupo__Descripcion i').classList.add('fa-times-circle');\r\n");
      out.write("                             document.querySelector('#grupo__Descripcion .formulario__input-error').classList.add('formulario__input-error-activo');\r\n");
      out.write("                        }\r\n");
      out.write("\t\tbreak;\r\n");
      out.write("\t\tcase \"txtStock\":\r\n");
      out.write("\t\t\tif(expresiones.txtStock.test(e.target.value)){\r\n");
      out.write("                            document.getElementById('grupo__Stock').classList.remove('formulario__grupo-incorrecto');\r\n");
      out.write("                             document.getElementById('grupo__Stock').classList.add('formulario__grupo-correcto');\r\n");
      out.write("                             document.querySelector('#grupo__Stock i').classList.add('fa-check-circle');\r\n");
      out.write("                             document.querySelector('#grupo__Stock i').classList.remove('fa-times-circle');;\r\n");
      out.write("                               document.querySelector('#grupo__Stock .formulario__input-error').classList.remove('formulario__input-error-activo');\r\n");
      out.write("                        }else {\r\n");
      out.write("                            document.getElementById('grupo__Stock').classList.add('formulario__grupo-incorrecto');\r\n");
      out.write("                            document.getElementById('grupo__Stock').classList.remove('formulario__grupo-correcto');\r\n");
      out.write("                            document.querySelector('#grupo__Stock i').classList.remove('fa-check-circle');\r\n");
      out.write("                             document.querySelector('#grupo__Stock i').classList.add('fa-times-circle');\r\n");
      out.write("                             document.querySelector('#grupo__Stock .formulario__input-error').classList.add('formulario__input-error-activo');\r\n");
      out.write("                        }\r\n");
      out.write("\t\tbreak;\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("inputs.forEach((input) => {\r\n");
      out.write("\tinput.addEventListener('keyup', validarFormulario);\r\n");
      out.write("\tinput.addEventListener('blur', validarFormulario);\r\n");
      out.write("});\r\n");
      out.write("        </script>\r\n");
      out.write("        <!--ERROR VALIDACIOONES-->\r\n");
      out.write("        <style>\r\n");
      out.write("            * {\r\n");
      out.write("\tbox-sizing: border-box;\r\n");
      out.write("}\r\n");
      out.write("main {\r\n");
      out.write("\tmax-width: 800px;\r\n");
      out.write("\twidth: 90%;\r\n");
      out.write("\tmargin: auto;\r\n");
      out.write("\tpadding: 40px;\r\n");
      out.write("}\r\n");
      out.write(".formulario {\r\n");
      out.write("\tdisplay: grid;\r\n");
      out.write("\tgrid-template-columns: 1fr 1fr;\r\n");
      out.write("\tgap: 20px;\r\n");
      out.write("}\r\n");
      out.write(".formulario__label {\r\n");
      out.write("\tdisplay: block;\r\n");
      out.write("\tfont-weight: 700;\r\n");
      out.write("\tpadding: 10px;\r\n");
      out.write("\tcursor: pointer;\r\n");
      out.write("}\r\n");
      out.write(".formulario__grupo-input {\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("}\r\n");
      out.write(".formulario__input {\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\tbackground: #fff;\r\n");
      out.write("\tborder: 3px solid transparent;\r\n");
      out.write("\tborder-radius: 3px;\r\n");
      out.write("\theight: 45px;\r\n");
      out.write("\tline-height: 45px;\r\n");
      out.write("\tpadding: 0 40px 0 10px;\r\n");
      out.write("\ttransition: .3s ease all;\r\n");
      out.write("}\r\n");
      out.write(".formulario__input:focus {\r\n");
      out.write("\tborder: 3px solid #0075FF;\r\n");
      out.write("\toutline: none;\r\n");
      out.write("\tbox-shadow: 3px 0px 30px rgba(163,163,163, 0.4);\r\n");
      out.write("}\r\n");
      out.write(".formulario__input-error {\r\n");
      out.write("\tfont-size: 12px;\r\n");
      out.write("\tmargin-bottom: 0;\r\n");
      out.write("\tdisplay: none;\r\n");
      out.write("}\r\n");
      out.write(".formulario__input-error-activo {\r\n");
      out.write("\tdisplay: block;\r\n");
      out.write("}\r\n");
      out.write(".formulario__validacion-estado {\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\tright: 10px;\r\n");
      out.write("\tbottom: 15px;\r\n");
      out.write("\tz-index: 100;\r\n");
      out.write("\tfont-size: 16px;\r\n");
      out.write("\topacity: 0;\r\n");
      out.write("}\r\n");
      out.write(".formulario__checkbox {\r\n");
      out.write("\tmargin-right: 10px;\r\n");
      out.write("}\r\n");
      out.write(".formulario__grupo-terminos, \r\n");
      out.write(".formulario__mensaje,\r\n");
      out.write(".formulario__grupo-btn-enviar {\r\n");
      out.write("\tgrid-column: span 2;\r\n");
      out.write("}\r\n");
      out.write(".formulario__mensaje {\r\n");
      out.write("\theight: 45px;\r\n");
      out.write("\tline-height: 45px;\r\n");
      out.write("\tbackground: #F66060;\r\n");
      out.write("\tpadding: 0 15px;\r\n");
      out.write("\tborder-radius: 3px;\r\n");
      out.write("\tdisplay: none;\r\n");
      out.write("}\r\n");
      out.write(".formulario__mensaje-activo {\r\n");
      out.write("\tdisplay: block;\r\n");
      out.write("}\r\n");
      out.write(".formulario__mensaje p {\r\n");
      out.write("\tmargin: 0;\r\n");
      out.write("}\r\n");
      out.write(".formulario__grupo-btn-enviar {\r\n");
      out.write("\tdisplay: flex;\r\n");
      out.write("\tflex-direction: column;\r\n");
      out.write("\talign-items: center;\r\n");
      out.write("}\r\n");
      out.write(".formulario__btn {\r\n");
      out.write("\theight: 45px;\r\n");
      out.write("\tline-height: 45px;\r\n");
      out.write("\twidth: 30%;\r\n");
      out.write("\tbackground: #000;\r\n");
      out.write("\tcolor: #fff;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("\tborder: none;\r\n");
      out.write("\tborder-radius: 3px;\r\n");
      out.write("\tcursor: pointer;\r\n");
      out.write("\ttransition: .1s ease all;\r\n");
      out.write("}\r\n");
      out.write(".formulario__btn:hover {\r\n");
      out.write("\tbox-shadow: 3px 0px 30px rgba(163,163,163, 1);\r\n");
      out.write("}\r\n");
      out.write(".formulario__mensaje-exito {\r\n");
      out.write("\tfont-size: 14px;\r\n");
      out.write("\tcolor: #119200;\r\n");
      out.write("\tdisplay: none;\r\n");
      out.write("}\r\n");
      out.write(".formulario__mensaje-exito-activo {\r\n");
      out.write("\tdisplay: block;\r\n");
      out.write("}\r\n");
      out.write("/* ----- -----  Estilos para Validacion ----- ----- */\r\n");
      out.write(".formulario__grupo-correcto .formulario__validacion-estado {\r\n");
      out.write("\tcolor: #1ed12d;\r\n");
      out.write("\topacity: 1;\r\n");
      out.write("}\r\n");
      out.write(".formulario__grupo-incorrecto .formulario__label {\r\n");
      out.write("\tcolor: #bb2929;\r\n");
      out.write("}\r\n");
      out.write(".formulario__grupo-incorrecto .formulario__validacion-estado {\r\n");
      out.write("\tcolor: #bb2929;\r\n");
      out.write("\topacity: 1;\r\n");
      out.write("}\r\n");
      out.write(".formulario__grupo-incorrecto .formulario__input {\r\n");
      out.write("\tborder: 3px solid #bb2929;\r\n");
      out.write("}\r\n");
      out.write("/* ----- -----  Mediaqueries ----- ----- */\r\n");
      out.write("@media screen and (max-width: 800px) {\r\n");
      out.write("\t.formulario {\r\n");
      out.write("\t\tgrid-template-columns: 1fr;\r\n");
      out.write("\t}\r\n");
      out.write("\t.formulario__grupo-terminos, \r\n");
      out.write("\t.formulario__mensaje,\r\n");
      out.write("\t.formulario__grupo-btn-enviar {\r\n");
      out.write("\t\tgrid-column: 1;\r\n");
      out.write("\t}\r\n");
      out.write("\t.formulario__btn {\r\n");
      out.write("\t\twidth: 100%;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("        </style>\r\n");
      out.write("    </body>\r\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${categorias}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("cat");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                        <option  value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cat.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cat.categoria}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\r\n");
          out.write("                                                    ");
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

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setVar("p");
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${productos}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                        <tr class=\"text-center\">\r\n");
          out.write("                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getNombres()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                            <td><img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getImagen()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" width=\"50\" height=\"50\"></td>\r\n");
          out.write("                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getDescripcion()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>                                    \r\n");
          out.write("                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getPrecio()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getStock()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getCategoria().getCategoria()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>                           \r\n");
          out.write("                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getEstado()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>                           \r\n");
          out.write("                            <td>\r\n");
          out.write("                                <a href=\"#\" onclick=\"CargarModal(");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(")\" class=\"btn btn-outline-warning\"><i class=\"fa fa-edit\"></i></a>\r\n");
          out.write("                                <a onclick=\"Eliminar(");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(")\" class=\"btn btn-outline-danger\" href=\"#\"><i class=\"fa fa-trash-alt\"></i></a>                               \r\n");
          out.write("                            </td>\r\n");
          out.write("                        </tr>\r\n");
          out.write("                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }
}
