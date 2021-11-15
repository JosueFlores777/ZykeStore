<%@page import="com.sinfloo.modelo.Carrito"%>
<%@page import="com.sinfloo.modelo.Producto"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>       
        <link rel="icon" href="img/logorack.png">
        <title>Carrito de Compras SinFloo</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <!-- <nav class="navbar navbar-expand-lg" style="background-color: #000000;">-->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>         
            <div class="nav-item dropdown">
                <a class="navbar-brand" style="color: white" href="#" data-toggle="dropdown"><img src="img/logo.png" width="60" height="60"> SinFloo Store</a>
                <div class="dropdown-menu nav-item bg-dark">  
                    <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                        <a class="nav-link dropdown-item" style="color: #005AFF" href="./Controlador?accion=Usuarios"><i class="fa fa-angle-right"></i> Usuarios</a>
                        <div class="dropdown-divider"></div> 
                        <c:if test="${clientelogueado.idrol==1}">
                            <a class="nav-link dropdown-item" style="color: #005AFF" href="./Controlador?accion=Productos"><i class="fa fa-angle-right"></i> Productos</a>                                                                         
                        </c:if>
                    </c:if>
                </div>
            </div>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="./Controlador?accion=home"><i class="fas fa-home" style="color: white"></i> Home<span class="sr-only">(current)</span></a>
                    </li>
                    <!--<li class="nav-item dropdown">
                        <a class="nav-link" id="dropdownMenuButton" data-toggle="dropdown" href="./Controlador?accion=Nuevo"><i class="fas fa-sliders-h" style="color: white"></i> Categorias</a>
                        <div class="dropdown-menu nav-item bg-dark">
                            <c:forEach var="cat" items="${categorias}">
                                <a class="nav-link dropdown-toggle" href="Controlador?accion=ListarCategoria&idCat=${cat.id}"><i class="fa fa-angle-right"></i>${cat.categoria}</a>
                                <div class="dropdown-divider"></div>
                            </c:forEach>                          
                        </div>
                    </li>-->
                    <li class="nav-item">
                        <a class="nav-link" href="./Controlador?accion=Oferta"><i class="fas fa-plus-circle" style="color: white"></i> Ofertas del Dia</a>
                    </li>                   
                    <li class="nav-item">
                        <a class="nav-link" href="./Controlador?accion=carrito"><i class="fas fa-cart-plus" style="color: white">(<label style="color:darkorange">${cont}</label>)</i> Carrito</a>
                    </li>                               
                </ul>   
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <form action="Controlador" class="form-inline my-2 my-lg-0">
                        <input placeholder="Buscar" class="form-control mr-sm" name="txtBuscar">
                        <button class="btn btn-outline-primary my-2 my-sm-0 ml-2" type="submit" name="accion" value="BuscarProducto"><i class="fas fa-search"></i> Buscar</button>
                    </form>  

                </ul>
                <ul class="navbar-nav btn-group my-2 my-lg-0" role="group">
                    <c:if test="${clientelogueado.id==null||clientelogueado.id==0}">
                        <a style="color: white; cursor: pointer" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fas fa-user-tie"></i> Iniciar Sesion</a> 
                        </c:if>                                              
                        <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                        <a style="color: white; cursor: pointer" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fas fa-user-tie"></i> ${clientelogueado.nombres}</a>  
                        </c:if>    
                    <div class="dropdown-menu text-center dropdown-menu-right">
                        <c:if test="${clientelogueado.id==null||clientelogueado.id==0}">
                            <a class="dropdown-item" href="#"><img src="img/usuario.png" width="60" height="60"/></a>                        
                            <a class="dropdown-item" onclick="CargarModalLogueo()">Iniciar Sesion</a> 
                        </c:if>                                              
                        <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                            <a class="dropdown-item" href="#"><img src="${clientelogueado.foto}" width="60" height="60"/></a>                       
                            <a class="dropdown-item" onclick="CargarModalLogueo()">${clientelogueado.email}</a>  
                        </c:if>                      
                        <div class="dropdown-divider"></div>
                        <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                            <a class="dropdown-item" href="./Controlador?accion=MisCompras">Mis Compras</a> 
                        </c:if>  
                        <c:if test="${clientelogueado.id==null||clientelogueado.id==0}">                            
                            <a class="dropdown-item" onclick="CargarModalLogueo()">Mis Compras</a> 
                        </c:if>   
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="./Controlador?accion=Salir"> <i class="fas fa-arrow-right"> Salir</i></a>                        
                    </div>
                </ul>     
            </div>
        </nav>
        <div class="container mt-4">
            <div class="row">             
                <c:forEach var="p" items="${productos}">
                    <div class="col-sm-4"><!--Solo va cambiar aqui puedes configurar de acuerdo al gusto-->
                        <div class="form-group">
                            <div class="card">
                                <div class="card-header">
                                    <div><i class="fab fa-product-hunt"></i> ${p.getNombres()} </div>
                                    <!--<div class="col-lg-4"><i class="fas fa-box-open"></i> ${p.getStock()}</div>-->
                                </div>
                                <div class="card-body">
                                    <label class="btn btn-outline-warning"><i class="">S/. ${p.getPrecio()}</i></label>
                                    <c:if test="${p.getEstado()=='20'}">
                                        <img src="img/20.png" height="60" width="70"> 
                                    </c:if>                                                         
                                    <c:if test="${p.getEstado()=='30'}">
                                        <img src="img/30.png" height="60" width="70"> 
                                    </c:if>                                                         
                                    <c:if test="${p.getEstado()=='40'}">
                                        <img src="img/40.png" height="60" width="70"> 
                                    </c:if>                                                         
                                    <c:if test="${p.getEstado()=='50'}">
                                        <img src="img/50.png" height="60" width="70"> 
                                    </c:if>                                                         
                                    <c:if test="${p.getEstado()=='60'}">
                                        <img src="img/60.png" height="60" width="70"> 
                                    </c:if>                                                         
                                    <c:if test="${p.getEstado()=='70'}">
                                        <img src="img/70.png" height="60" width="70"> 
                                    </c:if>                                                         
                                </div>
                                <div class="text-center">                             
                                    <img src="${p.getImagen()}" style="height: 150px;width:90%; padding: 10px">
                                </div>
                                <br>
                                <div class="card-footer">
                                    <div class="col-sm-14">
                                        <label>${p.getDescripcion()}</label>
                                    </div>
                                    <div class=" col-sm-13 text-center">                                         
                                        <div class="modal fade" id="modalStock" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-sm" >
                                                <div class="modal-title">                                                   
                                                    <div class="modal-body">
                                                        <img src="img/agotadogeco.png">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <c:if test="${p.getStock()==0}"> 
                                            <button data-toggle="modal" data-target="#modalStock" class="btn btn2 btn-outline-primary">Agregar a Carrito<i class="fas fa-cart-plus"></i></button>
                                            <button data-toggle="modal" data-target="#modalStock" class="btn btn-danger">Comprar</button>
                                        </c:if>
                                        <c:if test="${p.getStock()!=0}"> 
                                            <c:if test="${clientelogueado.id==null||clientelogueado.id==0}"> 
                                                <button data-toggle="modal" onclick="CargarModalLogueo1()" data-target="#myModalLogueo1" class="btn btn2 btn-outline-primary">Agregar a Carrito<i class="fas fa-cart-plus"></i></button>
                                                <button data-toggle="modal" onclick="CargarModalLogueo1()" data-target="#myModalLogueo1" class="btn btn-danger">Comprar</button>
                                            </c:if>
                                            <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                                                <a href="Controlador?accion=AgregarCarrito&id=${p.getId()}" class="btn btn2 btn-outline-primary">Agregar a Carrito<i class="fas fa-cart-plus"></i></a>
                                                <a href="Controlador?accion=Comprar&id=${p.getId()}" class="btn btn-danger">Comprar</a>
                                            </c:if>
                                        </c:if>
                                    </div>                         
                                </div>
                            </div>
                        </div>
                    </div>                    
                </c:forEach>  
            </div>
        </div>       
        <!-- Modal1 Iniciar Session o Registrarse -->
        <div class="modal fade" id="myModalLogueo1" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="container col-lg-9">                   
                    <div class="modal-content" id="contenido1">                   
                        <!--Aqui el Contenido de Login y Registro-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Iniciar Session o Registrarse -->
        <div class="modal fade" id="myModalLogueo" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="container col-lg-9">                   
                    <div class="modal-content" id="contenido">                   
                        <!--Aqui el Contenido de Login y Registro-->
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/funcionregistro.js" type="text/javascript">

        </script>
        <script  type="text/javascript">
            function CargarModalLogueo() {
                //document.getElementById("contenido").innerHTML = "";
                $("#myModalLogueo").modal('show');
                $("#contenido").load("Controlador?accion=IniciarSession");
            }
        </script>
        <script  type="text/javascript">
            function CargarModalLogueo1() {
                //document.getElementById("contenido").innerHTML = "";
                $("#myModalLogueo1").modal('show');
                $("#contenido1").load("Controlador?accion=IniciarSession");
            }
        </script>
        <script  type="text/javascript">

        </script>
    </body>
</html>
