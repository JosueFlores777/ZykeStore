<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#"><i><img src="img/logo.png" width="50" height="40"></i> LT Store</a>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="./Controlador?accion=Nuevo"><i class="fas fa-home"></i> Home<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./Controlador?accion=home"><i class="fas fa-plus-circle"></i> Ofertas del Dia</a>
                    </li>                   
                    <li class="nav-item">
                        <a class="nav-link" href="./Controlador?accion=carrito"><i class="fas fa-cart-plus">(<label style="color: darkorange">${cont}</label>)</i> Carrito</a>
                    </li>                      
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
                        <a class="dropdown-item" href="./Controlador?accion=MisCompras">Mis Compras</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="./Controlador?accion=Salir"> <i class="fas fa-arrow-right"> Salir</i></a>                        
                    </div>
                </ul>       
            </div>
        </nav>
        <div class="container mt-4">                 
            <div class="card"> 
                <div class="card-header d-flex">
                    <h2>Detalle</h2>
                    <a href="Controlador?accion=MisCompras" class="pt-2 pl-4">Regresar</a>
                </div>   
                <div class="card-body">
                    <table class="table tab-pane">
                        <thead class="thead-light">
                            <tr class="text-center">
                                <th>Nro</th>                               
                                <th>COD-PROD</th>
                                <th>NOMBRE</th>                                                   
                                <th>IMAGEN</th>                                                   
                                <th>PRECIO</th>                                                   
                                <th>CANTIDAD</th>                                                   
                                <th>Descuento</th>                                                   
                                <th>Precio Final</th>                                                   
                                <th>SUBTOTAL</th>                                                   
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="p" items="${myDetalle}" varStatus="index">
                                <tr class="text-center">
                                    <td>${index.index+1}</td>                                                                                                   
                                    <td>C00${p[0]}</td>                                                                                                   
                                    <td>${p[1]}</td>
                                    <td>
                                        <img src="${p[2]}" height="70" width="70">
                                    </td>                                                                                                     
                                    <td>S/.${p[3]}</td>                                                                                                     
                                    <td>${p[4]}</td>                                   
                                    <td>S/.${p[5]}</td>                                                                                                     
                                    <td>S/.${p[6]}</td>                                                                                                     
                                    <td>S/.${p[7]}</td>                                                                                                     
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table> 
                </div>
                <div class="card-footer d-flex">
                    <label class="col-sm-9 text-right mt-1">Monto Total de la Compra</label>
                    <input type="text" class=" text-center form-control col-sm-3" readonly="" value="S/.${montoCompra}" style="font-size: 20px; font-family: monospace">
                </div>
            </div>          
        </div> 
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
