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
        <style>
            .cabezera{
                background: linear-gradient(45deg,#000000,#0A2012);
                padding-bottom: 400px;
            }

        </style>
    </head>
    <body>
        <div class="cabezera">
            <div class="navbar" style=" display: flex; align-items: center">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"><i class="fas fa-bars" style="color:#fff; width: 100%;"></i></span>
                </button>
                <a class="navbar-brand" style="color: white" href="#"><i><img src="img/logo.png" width="60" height="60"></i>ZyKe Store</a>

                <div style="flex: 1; text-align: right;" id="navbarTogglerDemo03">
                    <ul style="display: inline-block; list-style-type: none;">
                        <li style=" display: inline-block; margin-right: 15px; ">
                            <a class="nav-link"style="text-decoration: none; color: #999999;" href="./Controlador?accion=Nuevo"><i class="fas fa-home"></i> Home<span class="sr-only">(current)</span></a>
                        </li>
                        <li style=" display: inline-block; margin-right: 15px; ">
                            <a class="nav-link"style="text-decoration: none; color: #999999;" href="./Controlador?accion=Oferta"><i class="fas fa-plus-circle"></i> Ofertas del Dia</a>
                        </li>                   
                        <li class="nav-item" style=" display: inline-block; margin-right: 15px; " >
                            <a class="nav-link " style="text-decoration: none; color: #999999;" href="./Controlador?accion=carrito"><i class="fas fa-cart-plus"></i> Carrito</a>
                        </li>                  
                    </ul>  
                    <ul role="group" style="display: inline-block; list-style-type: none; ">
                        <c:if test="${clientelogueado.id==null||clientelogueado.id==0}">
                            <a style="color: white; cursor: pointer" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fas fa-user-tie" style="color: whitesmoke;"></i> Iniciar Sesion</a> 
                            </c:if>                                              
                            <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                            <a style="color: white; cursor: pointer" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fas fa-user-tie" style="color: whitesmoke;"></i> ${clientelogueado.nombres}</a>  
                            </c:if>    
                        <div class="dropdown-menu text-center dropdown-menu-right" style="background: rgba(255, 255, 255,0.04); margin-top: -25px">
                            <c:if test="${clientelogueado.id==null||clientelogueado.id==0}">
                                <a style="color: whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "whitesmoke";' class="dropdown-item" href="#"><img src="img/usuario.png" width="60" height="60"/></a>                        
                                <a style="color:whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "whitesmoke";' class="dropdown-item" onclick="CargarModalLogueo()">Iniciar Sesion</a> 
                            </c:if>                                              
                            <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                                <a style="color: whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "whitesmoke";' class="dropdown-item" href="#"><img src="${clientelogueado.foto}" width="60" height="60"/></a>                       
                                <a style="color: whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "whitesmoke";' class="dropdown-item" onclick="CargarModalLogueo()">${clientelogueado.email}</a>  
                            </c:if>                      

                            <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                                <a style="color: whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "whitesmoke";'class="dropdown-item" href="./Controlador?accion=MisCompras">Mis Compras</a> 
                            </c:if>  
                            <c:if test="${clientelogueado.id==null||clientelogueado.id==0}">                            
                                <a style="color: whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "whitesmoke";' class="dropdown-item" onclick="CargarModalLogueo()">Mis Compras</a> 
                            </c:if>   

                            <a  style="color: whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "whitesmoke";' class="dropdown-item" href="./Controlador?accion=Salir"> <i class="fas fa-arrow-right"> Salir</i></a>                        
                        </div>
                    </ul>     
                </div>
            </div>
            <div class="container mt-4">                 
                <div class="card" style="background-color: rgba(255,255,255,0.9);">  
                    <div class="card-header d-flex">
                        <h2 style="COLOR:black">Detalle</h2>
                        <a href="Controlador?accion=MisCompras" style="color: #257DDB" class="pt-2 pl-4">Regresar</a>
                    </div>   
                    <div class="card-body">
                        <table class="table tab-pane">
                            <thead class="thead-light" >
                                <tr class="text-center" >
                                    <th style=" background-color: rgba(227,242,225,0.9);">Nro</th>                               
                                    <th style=" background-color: rgba(227,242,225,0.9);">COD-PROD</th>
                                    <th style=" background-color: rgba(227,242,225,0.9);">NOMBRE</th>                                                   
                                    <th style=" background-color: rgba(227,242,225,0.9);">IMAGEN</th>                                                   
                                    <th style=" background-color: rgba(227,242,225,0.9);">PRECIO</th>                                                   
                                    <th style=" background-color: rgba(227,242,225,0.9);">CANTIDAD</th>                                                   
                                    <th style=" background-color: rgba(227,242,225,0.9);">Descuento</th>                                                   
                                    <th style=" background-color: rgba(227,242,225,0.9);">Precio Final</th>                                                   
                                    <th style=" background-color: rgba(227,242,225,0.9);">SUBTOTAL</th>                                                   
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
                                        <td>$ ${p[3]}</td>                                                                                                     
                                        <td>${p[4]}</td>                                   
                                        <td>$ ${p[5]}</td>                                                                                                     
                                        <td>$ ${p[6]}</td>                                                                                                     
                                        <td>$ ${p[7]}</td>                                                                                                     
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table> 
                    </div>
                    <div class="card-footer d-flex">
                        <label class="col-sm-9 text-right mt-1" style="color:black">Monto Total de la Compra</label>
                        <input type="text" class=" text-center form-control col-sm-3" readonly=""  value="$ ${montoCompra}" style="font-size: 20px; font-family: monospace; color:black;">
                    </div>
                </div>          
            </div> 
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        </div>
    </body>
</html>
