<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <title>Carrito de Compras</title>
        <style>
            body{
                background-color: #000000  !important;
                font-family:  sans-serif !important;
                color: white !important;

            }
            .cabezera{
                background: linear-gradient(45deg,#000000,#0A2012);
                padding-bottom: 540px;
            }
            table {
                //margin-left: -80px;
                width: 1100px;
                border-collapse: collapse;
                overflow: hidden;
                box-shadow: 0 0 20px rgba(0,0,0,0.1);
            }

            th,
            td {
                padding: 20px;
                background-color: rgba(255,255,255,0.2);
                color: #fff;
            }

            th {
                text-align: left;
            }

            thead {
                th {
                    background-color: #55608f;
                }
            }

            tbody {
                tr {
                    &:hover {
                        background-color: rgba(255,255,255,0.3);
                    }
                }
                td {
                    position: relative;
                    &:hover {
                        &:before {
                            content: "";
                            position: absolute;
                            left: 0;
                            right: 0;
                            top: -9999px;
                            bottom: -9999px;
                            background-color: rgba(255,255,255,0.2);
                            z-index: -1;
                            
                        }
                    }
                }
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
                        <li style=" display: inline-block; margin-right: 15px; ">
                            <a class="nav-link"style="text-decoration: none; color: #999999;"href="./Controlador?accion=home"><i class="fas fa-plus-circle"></i> Seguir Comprando</a>
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
                <h2>Mis Compras</h2>
                <div class="row">            
                    <table class="table tab-pane">
                        <thead class="thead-light">
                            <tr class="text-center">
                                <th>CODIGO DE COMPRA</th>                               
                                <th>Fecha de Compra</th>
                                <th>Monto</th>                                                   
                                <th>Descuento</th>                                                   
                                <th>IVA</th>                                                   
                                <th>MontoFinal</th>                                                   
                                <th>Codigo de Pago</th>                      
                                <th></th>                                                   
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="p" items="${myCompras}">
                                <tr class="text-center">
                                    <td>C00${p.getId()}</td>                                  
                                    <td>${p.getFecha()}</td>
                                    <td>$ ${p.getMonto()}</td>                                                                                                       
                                    <td style="color: #CC464B">$ -${p.getDescuento()}</td>   
                                    <td>$ ${p.getIgv()}</td>  
                                    <td>$ ${p.getMontofinal()}</td>                                                                                                       
                                    <td>P00${p.getIdPago()}</td>                                                                                                     
                                    <td>
                                        <a style="color:#257DDB" href="Controlador?accion=verDetalle&idcompra=${p.getId()}&monto=${p.getMontofinal()}">Ver Detalle</a>
                                    </td>                                                                                                       
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>             
                </div>          
            </div> 

            <!-- Modal Iniciar Session o Registrarse -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="container col-lg-9">                   
                        <div class="modal-content">                   
                            <div class="pr-2 pt-1">                         
                                <button type="button" class="close" data-dismiss="modal">
                                    <span aria-hidden="true">&times;</span>
                                </button>                    
                            </div>
                            <div class="text-center">                         
                                <img src="img/user.png" width="100" height="100">                         
                            </div>
                            <div class="modal-header text-center">                      
                                <ul class="nav nav-pills">                           
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="pill" href="#pills-iniciar">Iniciar Sesion</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="pill" href="#pills-registrar">Registrarse</a>
                                    </li>                          
                                </ul>  
                            </div>
                            <div class="modal-body"> 
                                <div class="tab-content" id="pills-tabContent">
                                    <!-- Iniciar Session -->
                                    <div class="tab-pane fade show active" id="pills-iniciar" role="tabpanel">
                                        <form action="Controlador">
                                            <div class="form-group">
                                                <label>Email address</label>
                                                <input type="email" name="txtemail" class="form-control" placeholder="email@example.com">
                                            </div>
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input type="password" name="txtpass" class="form-control" placeholder="Password">
                                            </div>                                   
                                            <button type="submit" name="accion" value="Validar" class="btn btn-danger btn-block">Iniciar</button>
                                        </form>
                                    </div>
                                    <!-- Registrarse -->
                                    <div class="tab-pane fade" id="pills-registrar" role="tabpanel">
                                        <form action="Controlador">                               
                                            <div class="form-group">
                                                <label>Nombres</label>
                                                <input type="text" name="txtnom" class="form-control" placeholder="Leo Perez">
                                            </div>
                                            <div class="form-group">
                                                <label>Dni</label>
                                                <input type="number" name="txtdni" class="form-control" placeholder="01245678">
                                            </div>
                                            <div class="form-group">
                                                <label>Email address</label>
                                                <input type="email" name="txtemail" class="form-control" placeholder="email@example.com">
                                            </div>
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input type="password" name="txtpass" class="form-control" placeholder="Password">
                                            </div>                                  
                                            <button type="submit" data-toggle="modal" data-target="#myModal" name="accion" value="Registrar" class="btn btn-danger btn-block">Crear Cuenta</button>
                                        </form>
                                    </div>                          
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        </div>
    </body>
</html>
