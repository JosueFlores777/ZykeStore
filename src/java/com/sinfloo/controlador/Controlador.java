package com.sinfloo.controlador;

import com.sinfloo.config.Fecha;
import com.sinfloo.modelo.Carrito;
import com.sinfloo.modelo.Categoria;
import com.sinfloo.modelo.Cliente;
import com.sinfloo.modelo.ClienteDAO;
import com.sinfloo.modelo.Compra;
import com.sinfloo.modelo.ComprasDAO;
import com.sinfloo.modelo.DetalleCompra;
import com.sinfloo.modelo.Pago;
import com.sinfloo.modelo.Producto;
import com.sinfloo.modelo.ProductoDAO;
import com.sinfloo.modelo.Rol;
import com.sinfloo.modelo.Tarjeta;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DecimalFormat;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class Controlador extends HttpServlet {

    String email;
    String pass;
    DecimalFormat df = new DecimalFormat("#.00");
    Pago pago = new Pago();
    Cliente cl = new Cliente();
    ClienteDAO cldao = new ClienteDAO();
    ComprasDAO cdao = new ComprasDAO();
    ProductoDAO pdao = new ProductoDAO();
    Producto p = new Producto();
    int item = 0;
    int cantidad = 1;

    double sutotaldes = 0.0;
    double subtotal = 0.0;
    double totalPagar = 0.0;
    double totalDescuento = 0.0;

    List<Carrito> listaProductos = new ArrayList<>();
    List productos = new ArrayList();

    int idcompra;
    int idpago;
    double montopagar;
    int idProducto = 0;

    int idproeditado;

    Fecha fechaSistem = new Fecha();
    List<Categoria> categorias;
    List<Rol> roles;

    Producto producto;

    int idcliente;
    String accionPrincipal = "Otros";
    Cliente clientelogueado = new Cliente();

    int pag1 = 0;
    int pag2 = 0;
    List<Producto> Lpag = new ArrayList();
    List<Double> listapd = new ArrayList<>();
    double[] descuento = new double[6];
    List<Cliente> clientes = new ArrayList<>();

    int rpago = 0;

    String datos[] = new String[4];

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String accion = request.getParameter("accion");
        HttpSession session = request.getSession();
        session.setAttribute("clientelogueado", clientelogueado);

        categorias = pdao.ListarCategoria();
        request.setAttribute("categorias", categorias);

        roles = cldao.listarRol();
        request.setAttribute("roles", roles);

        Lpag = pdao.listar();
        request.setAttribute("paginacion", Lpag);

        switch (accion) {
            case "carrito":
                totalPagar = 0.0;
                totalDescuento = 0.0;
                for (int i = 0; i < listaProductos.size(); i++) {
                    totalDescuento = totalDescuento + listaProductos.get(i).getDescuento();
                    totalPagar = totalPagar + listaProductos.get(i).getSubTotal();
                    int pos;
                    switch (listaProductos.get(i).getEstadoProducto()) {
                        case "20":
                            pos = i;
                            totalDescuento = totalDescuento + (0.2 * listaProductos.get(pos).getSubTotal());
                            break;
                        case "30":
                            pos = i;
                            totalDescuento = totalDescuento + (0.3 * listaProductos.get(pos).getSubTotal());
                            break;
                        case "40":
                            pos = i;
                            totalDescuento = totalDescuento + (0.4 * listaProductos.get(pos).getSubTotal());
                            break;
                        case "50":
                            pos = i;
                            totalDescuento = totalDescuento + (0.5 * listaProductos.get(pos).getSubTotal());
                            break;
                        case "60":
                            pos = i;
                            totalDescuento = totalDescuento + (0.6 * listaProductos.get(pos).getSubTotal());
                            break;
                        case "70":
                            pos = i;
                            totalDescuento = totalDescuento + (0.7 * listaProductos.get(pos).getSubTotal());
                            break;

                    }

                }
                request.setAttribute("Carrito", listaProductos);
                datos[0] = df.format(totalDescuento);//Descuento
                request.setAttribute("totalDescuento", df.format(totalDescuento));
                datos[1] = df.format(totalPagar);//Subtotal
                request.setAttribute("subtotal", df.format(totalPagar));
                datos[2] = df.format(totalPagar - totalDescuento);//Total a PAgar
                request.setAttribute("totalPagar", df.format(totalPagar - totalDescuento));
                datos[3] = df.format((totalPagar - totalDescuento) * 0.18);//IGV
                request.setAttribute("igv", df.format((totalPagar - totalDescuento) * 0.18));
                session.setAttribute("clientelogueado", clientelogueado);
                request.getRequestDispatcher("vistas/carrito.jsp").forward(request, response);
                break;
            case "Oferta":
                accionPrincipal = "Oferta";
                productos = pdao.listarProductoOferta();
                request.setAttribute("productos", productos);
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
            case "Comprar":
                agregarCarrito(request);
                request.getRequestDispatcher("Controlador?accion=carrito").forward(request, response);
                break;
            case "AgregarCarrito":
                agregarCarrito(request);
                request.setAttribute("cont", listaProductos.size());
                accionPrincipal="Otros";
                if (accionPrincipal.equals("Oferta")) {
                    request.getRequestDispatcher("Controlador?accion=Oferta").forward(request, response);
                } else {
                    request.getRequestDispatcher("Controlador?accion=Home").forward(request, response);
                }
                break;
            case "deleteProducto":
                idProducto = Integer.parseInt(request.getParameter("id"));
                if (listaProductos != null) {
                    for (int j = 0; j < listaProductos.size(); j++) {
                        if (listaProductos.get(j).getIdProducto() == idProducto) {
                            listaProductos.remove(j);
                        }
                    }
                }
                break;
            case "updateCantidad":
                //Capturando del Metodo Solo Jquery
                String[] arreglo;
                arreglo = request.getParameterValues("arreglo[]");
                idProducto = Integer.parseInt(arreglo[0]);
                int cant = Integer.parseInt(arreglo[1]);
                //Capturando del Metodo Ajax
//                idProducto = Integer.parseInt(request.getParameter("id"));
//                int cant = Integer.parseInt(request.getParameter("cantidad"));
                for (int j = 0; j < listaProductos.size(); j++) {
                    if (listaProductos.get(j).getIdProducto() == idProducto) {
                        listaProductos.get(j).setCantidad(cant);
                        double sutotal = listaProductos.get(j).getPrecioCompra() * cant;
                        double sutotaldess = listaProductos.get(j).getPrecioFinal() * cant;
                        listaProductos.get(j).setSubTotal(sutotal);
                        listaProductos.get(j).setSubTota(df.format(sutotal));
                        listaProductos.get(j).setSubTotalDes(sutotaldess);
                    }
                }
                break;
            case "IniciarSession":
                request.getRequestDispatcher("vistas/iniciarSesion.jsp").forward(request, response);
                break;
            case "Validar":
                clientelogueado = new Cliente();
                email = request.getParameter("txtemail");
                pass = request.getParameter("txtpass");
                clientelogueado = cldao.Validar(email, pass);
                if (clientelogueado.getId() != 0) {
                    session.setAttribute("clientelogueado", clientelogueado);
                    request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                } else if (clientelogueado.getPass() == null) {
                    out.print(" <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>");
                    out.print("<div class='container mt-4'>");
                    out.print("<div class='col-sm-6'>");
                    out.print("<div class='card'>");
                    out.print("<div class='card-body'>");
                    out.print("<div class='alert alert-danger' role='alert'>");
                    out.print("<h3>Usuario no Registrado o Error de Contraseña<h3>");
                    out.print("</div>");
                    out.print("<a href='Controlador?accion=home' class='btn btn-outline-primary btn-lg'>Volver a Intentar</a>");
                    out.print("</div>");
                    out.print("</div>");
                    out.print("</div>");
                    out.print("</div>");
                }
                break;
            case "Registrar":
                String nom = request.getParameter("txtnom");
                String dni = request.getParameter("txtdni");
                String em = request.getParameter("txtemail");
                String pas = request.getParameter("txtpass");
                String dir = request.getParameter("txtpass");
                cl.setNombres(nom);
                cl.setDni(dni);
                cl.setEmail(em);
                cl.setPass(pas);
                cl.setDireccion(dir);
                cldao.AgregarCliente(cl);
                request.getRequestDispatcher("Controlador?accion=carrito").forward(request, response);
                break;
            case "Nuevo":
                listaProductos = new ArrayList();
                request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                break;
            case "BuscarProducto":
                String nombre = request.getParameter("txtBuscar");
                productos = pdao.buscar(nombre);
                request.setAttribute("cont", listaProductos.size());
                request.setAttribute("productos", productos);
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
            case "RealizarPago":
              
                    String nombres = request.getParameter("txtnombre");
                String numeroT = request.getParameter("txtnumero");
                String fechaE = request.getParameter("txtfecha");
                String codS = request.getParameter("txtcodigo");
                Tarjeta t = cdao.ListarId(numeroT);
                if (t.getNumero() != null) {
                    if (nombres.equals(t.getNombre()) && codS.equals(t.getCodigo())) {
                        montopagar = totalPagar - totalDescuento;
                        if (t.getSaldo() >= montopagar) {
                            if (clientelogueado.getId() != 0 && montopagar > 0) {
                                rpago = cdao.Pagar(montopagar, t.getId());
                                if (rpago == 1) {
                                    cdao.ActualizarPrecio(t.getSaldo() - montopagar, t.getId());
                                    request.getRequestDispatcher("Controlador?accion=GenerarCompra").forward(request, response);
                                }
                            } else {
                                montopagar = 0;
                                request.getRequestDispatcher("Controlador?accion=carrito").forward(request, response);
                            }
                        } else {
                            out.print(" <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>");
                            out.print("<div class='container mt-4'>");
                            out.print("<div class='col-sm-6'>");
                            out.print("<div class='card'>");
                            out.print("<div class='card-body'>");
                            out.print("<div class='alert alert-danger' role='alert'>");
                            out.print("<h3>Saldo Insuficiente...!!!<h3>");
                            out.print("</div>");
                            out.print("<a href='Controlador?accion=carrito' class='btn btn-outline-primary btn-lg'>Intente de Nuevo</a>");
                            out.print("</div>");
                            out.print("</div>");
                            out.print("</div>");
                            out.print("</div>");
                        }
                    } else {
                        out.print(" <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>");
                        out.print("<div class='container mt-4'>");
                        out.print("<div class='col-sm-6'>");
                        out.print("<div class='card'>");
                        out.print("<div class='card-body'>");
                        out.print("<div class='alert alert-danger' role='alert'>");
                        out.print("<h3>Datos de la Tarjeta no son Correctos<h3>");
                        out.print("</div>");
                        out.print("<a href='Controlador?accion=carrito' class='btn btn-outline-primary btn-lg'>Intente de Nuevo</a>");
                        out.print("</div>");
                        out.print("</div>");
                        out.print("</div>");
                        out.print("</div>");
                    }
                    request.setAttribute("montopagar", df.format(montopagar));
                } else {
                    out.print(" <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>");
                    out.print("<div class='container mt-4'>");
                    out.print("<div class='col-sm-6'>");
                    out.print("<div class='card'>");
                    out.print("<div class='card-body'>");
                    out.print("<div class='alert alert-danger' role='alert'>");
                    out.print("<h3>Error al Ingresar Datos de la Tarjeta<h3>");
                    out.print("</div>");
                    out.print("<a href='Controlador?accion=carrito' class='btn btn-outline-primary btn-lg'>Intente de Nuevo</a>");
                    out.print("</div>");
                    out.print("</div>");
                    out.print("</div>");
                    out.print("</div>");
                }
          
                break;
            case "GenerarCompra":
              int stonk= Integer.parseInt(request.getParameter("Cant"));
              if (p.setStock()<=stonk){
                idpago = cdao.IdPago();
                if (clientelogueado.getId() != 0 && listaProductos.size() != 0 && rpago == 1) {
                    if (totalPagar > 0.0) {
                        Compra co = new Compra();
                        co.setIdCliente(clientelogueado.getId());
                        co.setFecha(fechaSistem.FechaBD());
                        co.setMonto(totalPagar);
                        co.setDescuento(totalDescuento);
                        co.setIgv((totalPagar - totalDescuento) * 0.18);
                        co.setMontofinal(montopagar - totalDescuento);
                        co.setIdPago(idpago);
                        co.setEstado("Cancelado - En Proceso de Envio");
                        cdao.guardarCompra(co);
                        montopagar = 0;

                        idcompra = cdao.IdCompra();
                        for (int i = 0; i < listaProductos.size(); i++) {
                            DetalleCompra dc = new DetalleCompra();
                            dc.setIdcompra(idcompra);
                            dc.setIdproducto(listaProductos.get(i).getIdProducto());
                            dc.setCantidad(listaProductos.get(i).getCantidad());
                            dc.setPrecioCompra(listaProductos.get(i).getPrecioCompra());
                            double desc = listaProductos.get(i).getPrecioCompra() - listaProductos.get(i).getPrecioFinal();
                            dc.setDescuento(desc);
                            dc.setPreciofinal(listaProductos.get(i).getPrecioFinal());
                            dc.setSubtotal(listaProductos.get(i).getSubTotalDes());
                            cdao.guardarDetalleCompra(dc);
                        }
                        //------Actualizar Stock-----------------
                        for (Carrito listaProducto : listaProductos) {
                            Producto pro = new Producto();
                            pro.setId(listaProducto.getIdProducto());
                            pro.setStock(listaProducto.getCantidad());
                            pdao.ActualizarStock(pro);
                        }
                        //------Fin Metodo Actualizar Stock------
                        listaProductos = new ArrayList<>();
                        List compra = cdao.misCompras(clientelogueado.getId());
                        request.setAttribute("myCompras", compra);
                        request.getRequestDispatcher("Controlador?accion=Imprimir").forward(request, response);
                    } else {
                        request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                    }
                } else {
                    request.getRequestDispatcher("Controlador?accion=carrito").forward(request, response);
                }
              }else{  
                  request.getRequestDispatcher("Controlador?accion=home").forward(request, response);}
                break;
            case "MisCompras":
                if (clientelogueado.getId() != 0) {
                    List compra = cdao.misCompras(clientelogueado.getId());
                    request.setAttribute("myCompras", compra);
                    request.getRequestDispatcher("vistas/compras.jsp").forward(request, response);
                } else if (listaProductos.size() > 0) {
                    request.getRequestDispatcher("Controlador?accion=carrito").forward(request, response);
                } else {
                    request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                }
                break;
            case "verDetalle":
                double montocompra = 0;
                int idcompras = Integer.parseInt(request.getParameter("idcompra"));
                montocompra = Double.parseDouble(request.getParameter("monto"));
                List detalle = cdao.Detalle(idcompras);
                request.setAttribute("myDetalle", detalle);
                request.setAttribute("montoCompra", df.format(montocompra));
                request.getRequestDispatcher("vistas/DetalleCompra.jsp").forward(request, response);
                break;
            case "Imprimir":
                idcompra = cdao.IdCompra();
                List detalle1 = cdao.Detalle(idcompra);
                request.setAttribute("myDetalle", detalle1);
                request.setAttribute("datos", datos);
                request.getRequestDispatcher("vistas/Imprimir.jsp").forward(request, response);
                break;
//------------Mantenimiento Productos----------------!!!
            case "Productos":
                productos = pdao.listar();
                request.setAttribute("categorias", categorias);
                request.setAttribute("productos", productos);
                request.getRequestDispatcher("vistas/addProducto.jsp").forward(request, response);
                break;
            case "GuardarProducto":
                ArrayList<String> pro = new ArrayList<>();
                try {
                    FileItemFactory factory = new DiskFileItemFactory();
                    ServletFileUpload fileUpload = new ServletFileUpload(factory);
                    List items = fileUpload.parseRequest(request);
                    for (int i = 0; i < items.size(); i++) {
                        FileItem fileItem = (FileItem) items.get(i);
                        if (!fileItem.isFormField()) {
                            File file = new File("D:\\SinFloo\\Proyectos en Java\\CarritoCompras1.1\\web\\img\\productos\\" + fileItem.getName());
                            fileItem.write(file);
                            p.setImagen("img/productos/" + fileItem.getName());
                        } else {
                            pro.add(fileItem.getString());
                        }
                    }
                    p.setNombres(pro.get(0));
                    p.setDescripcion(pro.get(1));
                    p.setPrecio(Double.parseDouble(pro.get(2)));
                    p.setStock(Integer.parseInt(pro.get(3)));
                    p.setCategoria(new Categoria());
                    p.getCategoria().setId(Integer.parseInt(pro.get(4)));
                    pdao.AgregarNuevoProducto(p);

                } catch (Exception e) {
                    System.err.println("Debe Crear la Carpeta dentro de LocalHost: " + e);
                }
                request.getRequestDispatcher("Controlador?accion=Productos").forward(request, response);
                break;
            case "Editar":
                request.setAttribute("categorias", categorias);
                idproeditado = Integer.parseInt(request.getParameter("id"));
                producto = pdao.listarId(idproeditado);
                request.setAttribute("producto", producto);
                request.getRequestDispatcher("vistas/editProducto.jsp").forward(request, response);
                break;
            case "ActualizarProducto":
                p = new Producto();
                ArrayList<String> Apro = new ArrayList<>();
                try {
                    FileItemFactory factory = new DiskFileItemFactory();
                    ServletFileUpload fileUpload = new ServletFileUpload(factory);
                    List items = fileUpload.parseRequest(request);
                    for (int i = 0; i < items.size(); i++) {
                        FileItem fileItem = (FileItem) items.get(i);
                        if (!fileItem.isFormField()) {
                            if (!fileItem.getName().equals("")) {
                                File file = new File("D:\\SinFloo\\Proyectos en Java\\CarritoCompras1.1\\web\\img\\productos\\" + fileItem.getName());
                                fileItem.write(file);
                                p.setImagen("img/productos/" + fileItem.getName());
                            }
                        } else {
                            Apro.add(fileItem.getString());
                        }
                    }
                    p.setId(idproeditado);
                    p.setNombres(Apro.get(0));
                    p.setDescripcion(Apro.get(1));
                    p.setPrecio(Double.parseDouble(Apro.get(2)));
                    p.setStock(Integer.parseInt(Apro.get(3)));
                    p.setCategoria(new Categoria());
                    p.getCategoria().setId(Integer.parseInt(Apro.get(4)));
                    p.setEstado(Apro.get(5));
                    int r = pdao.ActualizarProducto(p);
                    if (r == 1) {
                        out.print(" <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>");
                        out.print("<div class='container mt-4'>");
                        out.print("<div class='col-sm-6'>");
                        out.print("<div class='card'>");
                        out.print("<div class='card-body'>");
                        out.print("<div class='alert alert-success' role='alert'>");
                        out.print("<h3>Producto Actualizado con Exito<h3>");
                        out.print("</div>");
                        out.print("<a href='Controlador?accion=Productos' class='btn btn-outline-primary btn-lg'>Volver</a>");
                        out.print("</div>");
                        out.print("</div>");
                        out.print("</div>");
                        out.print("</div>");
                    }
                    //request.getRequestDispatcher("Controlador?accion=Productos").forward(request, response);
                } catch (Exception e) {
                    System.err.println("Debe Crear la Carpeta dentro de LocalHost: " + e);
                }
                //request.getRequestDispatcher("Controlador?accion=Productos").forward(request, response);
                break;
            case "EliminarProducto":
                int deleteid = Integer.parseInt(request.getParameter("id"));
                pdao.EliminarProducto(deleteid);
//                request.getRequestDispatcher("Controlador?accion=Productos").forward(request, response);
                break;
//-----------Fin Mantenimeinto Producto--------------------------!!
            case "Salir":
                listaProductos = new ArrayList();
                clientelogueado = new Cliente();
                session.invalidate();
                request.getRequestDispatcher("Controlador?accion=Salirr").forward(request, response);
                break;
            case "ListarCarrito":
                request.getRequestDispatcher("Controlador?accion=carrito").forward(request, response);
                break;
            case "ListarCategoria":
                int idCat = Integer.parseInt(request.getParameter("idCat"));
                accionPrincipal = "Otros";
                if (idCat != 5) {
                    productos = pdao.listarxCategoria(idCat);
                    request.setAttribute("cont", listaProductos.size());
                    request.setAttribute("productos", productos);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                break;
//----------Manteniemitno Usuarios---------------
            case "Usuarios":
                clientelogueado = cldao.Validar(email, pass);
                clientes = cldao.listar();
                request.setAttribute("clientes", clientes);
                session.setAttribute("clientelogueado", clientelogueado);
                request.getRequestDispatcher("vistas/addUsuario.jsp").forward(request, response);
                break;
            case "GuardarUsuario":
                RegistraUsuario(request);
                request.getRequestDispatcher("Controlador?accion=Usuarios").forward(request, response);
                break;
            case "Registrarse":
                request.getRequestDispatcher("Controlador?accion=carrito").forward(request, response);
                RegistraUsuario(request);
                break;
            case "EditarUsuario":
                idcliente = Integer.parseInt(request.getParameter("id"));
                Cliente cliente = cldao.listarId(idcliente);
                request.setAttribute("cliente", cliente);
                request.getRequestDispatcher("vistas/editUsuario.jsp").forward(request, response);
                break;
            case "ActualizarUsuario":
                ArrayList<String> listausuarios;
                listausuarios = new ArrayList<>();
                Cliente cli = new Cliente();
                try {
                    FileItemFactory factory = new DiskFileItemFactory();
                    ServletFileUpload fileUpload = new ServletFileUpload(factory);
                    List items = fileUpload.parseRequest(request);
                    for (int i = 0; i < items.size(); i++) {
                        FileItem fileItem = (FileItem) items.get(i);
                        if (!fileItem.isFormField()) {
                            String nomfoto = fileItem.getName();
                            if (!"".equals(nomfoto)) {
                                File file = new File("D:\\SinFloo\\Proyectos en Java\\CarritoCompras1.1\\web\\img\\fotouser\\" + fileItem.getName());
                                fileItem.write(file);
                                cli.setFoto("img/fotouser/" + fileItem.getName());
                            }
                        } else {
                            listausuarios.add(fileItem.getString());
                        }
                    }
                    if (listausuarios.size() == 6) {
                        cli.setId(idcliente);
                        cli.setDni(listausuarios.get(0));
                        cli.setNombres(listausuarios.get(1));
                        cli.setDireccion(listausuarios.get(2));
                        cli.setEmail(listausuarios.get(3));
                        cli.setPass(listausuarios.get(4));
                        cli.setIdrol(2);
                    } else {
                        cli.setId(idcliente);
                        cli.setDni(listausuarios.get(0));
                        cli.setNombres(listausuarios.get(1));
                        cli.setDireccion(listausuarios.get(2));
                        cli.setEmail(listausuarios.get(3));
                        cli.setPass(listausuarios.get(4));
                        cli.setIdrol(Integer.parseInt(listausuarios.get(5)));
                    }

                    int r = cldao.ActualizarUsuario(cli);
                    if (r == 1) {
                        out.print(" <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>");
                        out.print("<div class='container mt-4'>");
                        out.print("<div class='col-sm-6'>");
                        out.print("<div class='card'>");
                        out.print("<div class='card-body'>");
                        out.print("<div class='alert alert-success' role='alert'>");
                        out.print("<h3>Usuario Actualizado con Exito<h3>");
                        out.print("</div>");
                        out.print("<a href='Controlador?accion=Usuarios' class='btn btn-outline-primary btn-lg'>Volver</a>");
                        out.print("</div>");
                        out.print("</div>");
                        out.print("</div>");
                        out.print("</div>");
                    }
                } catch (Exception e) {
                    System.err.println("Debe Crear la Carpeta dentro de LocalHost: " + e);
                }
                //request.getRequestDispatcher("Controlador?accion=Usuarios").forward(request, response);
                break;
            case "DeleteUsuario":
                int idcli = Integer.parseInt(request.getParameter("id"));
                if (idcli == clientelogueado.getId()) {
                    cldao.DeleteUsuario(idcli);
                    clientelogueado = new Cliente();
                    request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                } else {
                    cldao.DeleteUsuario(idcli);
                }

                //request.getRequestDispatcher("Controlador?accion=Usuarios").forward(request, response);
                break;
//----------Otros----------------------
            case "Listar":
                int idpag = Integer.parseInt(request.getParameter("id"));
                switch (idpag) {
                    case 1:
                        pag1 = Lpag.get(0).getId();
                        pag2 = Lpag.get(19).getId();
                        productos = pdao.listarPag(pag1, pag2);
                        break;
                    case 2:
                        pag1 = Lpag.get(20).getId();
                        pag2 = Lpag.get(Lpag.size() - 1).getId();
                        productos = pdao.listarPag(pag1, pag2);
                        break;
                    default:
                        productos = pdao.listarPag();
                }
                request.setAttribute("productos", productos);
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
            case "Reportes":
                
                break;
            default:
                //listaProductos=new ArrayList<>();
                productos = pdao.listarPag();
                request.setAttribute("categorias", categorias);
                request.setAttribute("roles", roles);
                request.setAttribute("cont", listaProductos.size());
                request.setAttribute("productos", productos);
                session.setAttribute("clientelogueado", clientelogueado);
                request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public void agregarCarrito(HttpServletRequest request) {
        Carrito car = new Carrito();
        int pos = 0;
        cantidad = 1;

        int idpp = Integer.parseInt(request.getParameter("id"));
        if (listaProductos.size() > 0) {
            for (int i = 0; i < listaProductos.size(); i++) {
                if (listaProductos.get(i).getIdProducto() == idpp) {
                    pos = i;
                }
            }
            if (idpp == listaProductos.get(pos).getIdProducto()) {
                cantidad = listaProductos.get(pos).getCantidad() + 1;
                subtotal = listaProductos.get(pos).getPrecioCompra() * cantidad;
                sutotaldes = listaProductos.get(pos).getPrecioFinal() * cantidad;
                listaProductos.get(pos).setSubTotal(subtotal);
                listaProductos.get(pos).setSubTota(df.format(subtotal));
                listaProductos.get(pos).setSubTotalDes(sutotaldes);
                listaProductos.get(pos).setCantidad(cantidad);
            } else {
                car = new Carrito();
                p = pdao.listarId(idpp);
                car.setIdProducto(p.getId());
                car.setNombres(p.getNombres());
                car.setImagen(p.getImagen());
                car.setDescripcion(p.getDescripcion());
                double pfinal;
                double subtotaldes;
                switch (p.getEstado()) {
                    case "20":
                        pfinal = p.getPrecio() * 0.2;
                        car.setPrecioFinal(pfinal);
                        subtotaldes = cantidad * pfinal;
                        car.setSubTotalDes(subtotaldes);
                        break;
                    case "30":
                        pfinal = p.getPrecio() * 0.3;
                        car.setPrecioFinal(pfinal);
                        subtotaldes = cantidad * pfinal;
                        car.setSubTotalDes(subtotaldes);
                        break;
                    case "40":
                        pfinal = p.getPrecio() * 0.40;
                        car.setPrecioFinal(pfinal);
                        subtotaldes = cantidad * pfinal;
                        car.setSubTotalDes(subtotaldes);
                        break;
                    case "50":
                        pfinal = p.getPrecio() * 0.5;
                        car.setPrecioFinal(pfinal);
                        subtotaldes = cantidad * pfinal;
                        car.setSubTotalDes(subtotaldes);
                        break;
                    case "60":
                        pfinal = p.getPrecio() * 0.6;
                        car.setPrecioFinal(pfinal);
                        subtotaldes = cantidad * pfinal;
                        car.setSubTotalDes(subtotaldes);
                        break;
                    case "70":
                        pfinal = p.getPrecio() * 0.7;//tu ide no acepta formato de dinero decimal es por ello revisa algun paquete
                        car.setPrecioFinal(pfinal);
                        subtotaldes = cantidad * pfinal;
                        car.setSubTotalDes(subtotaldes);
                        break;
                    default:
                        pfinal = p.getPrecio();
                        car.setPrecioFinal(pfinal);
                        subtotaldes = cantidad * pfinal;
                        car.setSubTotalDes(subtotaldes);
                        break;
                }
                car.setPrecioCompra(p.getPrecio());
                car.setCantidad(cantidad);
                subtotal = cantidad * p.getPrecio();
                car.setSubTotal(subtotal);
                car.setSubTota(df.format(subtotal));
                car.setEstadoProducto(p.getEstado());
                listaProductos.add(car);
            }
        } else {
            car = new Carrito();
            p = pdao.listarId(idpp);
            car.setIdProducto(p.getId());
            car.setNombres(p.getNombres());
            car.setImagen(p.getImagen());
            car.setDescripcion(p.getDescripcion());
            double pfinal;
            double subtotaldes;
            switch (p.getEstado()) {
                case "20":
                    pfinal = p.getPrecio() * 0.2;
                    car.setPrecioFinal(pfinal);
                    subtotaldes = cantidad * pfinal;
                    car.setSubTotalDes(subtotaldes);
                    break;
                case "30":
                    pfinal = p.getPrecio() * 0.3;
                    car.setPrecioFinal(pfinal);
                    subtotaldes = cantidad * pfinal;
                    car.setSubTotalDes(subtotaldes);
                    break;
                case "40":
                    DecimalFormat de = new DecimalFormat("#.00");
                    pfinal = p.getPrecio() * 0.4;
                    String d = de.format(pfinal);
                    String d1 = d.replaceAll(",", ".");
                    car.setPrecioFinal(Double.parseDouble(d1));
                    subtotaldes = cantidad * Double.parseDouble(d1);
                    car.setSubTotalDes(subtotaldes);
                    break;
                case "50":
                    pfinal = p.getPrecio() * 0.5;
                    car.setPrecioFinal(pfinal);
                    subtotaldes = cantidad * pfinal;
                    car.setSubTotalDes(subtotaldes);
                    break;
                case "60":
                    pfinal = p.getPrecio() * 0.6;
                    car.setPrecioFinal(pfinal);
                    subtotaldes = cantidad * pfinal;
                    car.setSubTotalDes(subtotaldes);
                    break;
                case "70":
                    pfinal = p.getPrecio() * 0.7;
                    car.setPrecioFinal(pfinal);
                    subtotaldes = cantidad * pfinal;
                    car.setSubTotalDes(subtotaldes);
                    break;
                default:
                    pfinal = p.getPrecio();
                    car.setPrecioFinal(pfinal);
                    subtotaldes = cantidad * pfinal;
                    car.setSubTotalDes(subtotaldes);
                    break;
            }
            car.setPrecioCompra(p.getPrecio());
            car.setCantidad(cantidad);
            subtotal = cantidad * p.getPrecio();
            car.setSubTotal(subtotal);
            car.setSubTota(df.format(subtotal));
            car.setEstadoProducto(p.getEstado());
            listaProductos.add(car);

        }
    }

    private void RegistraUsuario(HttpServletRequest request) {
        ArrayList<String> listausuario = new ArrayList<>();
        Cliente c = new Cliente();
        try {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload fileUpload = new ServletFileUpload(factory);
            List items = fileUpload.parseRequest(request);
            for (int i = 0; i < items.size(); i++) {
                FileItem fileItem = (FileItem) items.get(i);
                if (!fileItem.isFormField()) {
                    String nomfoto = fileItem.getName();
                    if (!"".equals(nomfoto)) {
                        File file = new File("C:\\Users\\josue\\Desktop\\ZykeStore\\web\\img\\fotouser" + fileItem.getName());
                        fileItem.write(file);
                        c.setFoto("img/fotouser/" + fileItem.getName());
                    }
                } else {
                    listausuario.add(fileItem.getString());
                }
            }
            if (listausuario.size() == 6) {
                c.setDni(listausuario.get(0));
                c.setNombres(listausuario.get(1));
                c.setDireccion(listausuario.get(2));
                c.setEmail(listausuario.get(3));
                c.setPass(listausuario.get(4));
                c.setIdrol(2);

            } else {
                c.setDni(listausuario.get(0));
                c.setNombres(listausuario.get(1));
                c.setDireccion(listausuario.get(2));
                c.setEmail(listausuario.get(3));
                c.setPass(listausuario.get(4));
                c.setIdrol(Integer.parseInt(listausuario.get(5)));

            }
            int r = cldao.AgregarUsuario(c);
        } catch (Exception e) {
            System.err.println("Debe Crear la Carpeta dentro de LocalHost: " + e);
        }
    }
}
