1    
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="com.sinfloo.config.Fecha"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link href="css/estilos1.css" rel="stylesheet" type="text/css"/>
        <title>Carrito de Compras</title>
        <style>
            @media print{
                .btn,.accion,.modal-content,.modal,.fade{
                    display: none;
                }
            }

            nav ul li a{
                text-decoration: none;
                color: #999999;
                display: inline-block;
                margin-right: 30px;  
            }
            body{
                background-color: #000000  !important;
                font-family:  sans-serif !important;
                color: white !important;

            }
            .cabezera{
                background: linear-gradient(45deg,#000000,#0A2012);
                padding-bottom: 300px;
            }
            .card .btn{
                display: inline-block;
                background: #999999 ;
                color: #fff; 
                padding: 8px 30px;
                margin: 0px 0;
                border-radius: 30px;
                transition: background 0.5s;
            }
            .card .btn:hover{
                background-color: #fff; 
                color:#232323 ;
            }
            .btn{
                color: #fff;
                transition: background 0.5s;
            }
            .btn:hover{

                color:#232323 ;
            }
            .container-1 .icon{
                font-size:10px;
                font-family:Verdana,Helvetica;
                font-weight:bold;
                color:white;
                border:0px;
                width:80px;
                height:30px;
                margin-right: 15px;
                background: rgba(255, 255, 255,0.04);
                -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;
            }
            h2{
                font: bold 150%  sans-serif;

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
                                <a style="color: whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color  =  "whitesmoke";' class="dropdown-item" href="#"><img src="img/usuario.png" width="60" height="60"/></a>                        
                                <a style="color:whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "whitesmoke";' class="dropdown-item" onclick="CargarModalLogueo()">Iniciar Sesion</a> 
                            </c:if>                                              
                            <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                                <a style="color: whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this.styl e .color =
                                        "whitesmoke";' class="dropdown-item" href="#"><img src="${clientelogueado.foto}" width="60" height="60"/></a>                       
                                <a style="color: whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this. s tyle.col
                                        or = "whitesmoke";' class="dropdown-item" onclick="CargarModalLogueo()">${clientelogueado.email}</a>  
                            </c:if>                      

                            <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                                <a style="color: whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "whitesmoke";'class="dropdown-item" href="./Controlador?accion=MisCompras">Mis Compras</a> 
                            </c:if>  
                            <c:if test="${clientelogueado.id==null||clientelogueado.id==0}">                            
                                <a style="color: whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "whitesmoke";' class="dropdown-item" onclick=" CargarModalLo
                                        gueo()">Mis Compras</a> 
                            </c:if>   

                            <a  style="color: whitesmoke;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "whitesmoke";' class="dropdown-item" href="./Controlador?accion=Salir"> <i class="fas fa-arrow-right"> Salir</i></a>                        
                        </div>
                    </ul>     
                </div>
            </div>
            <div class="container mt-4" >
                <div class="d-flex">
                    <h2>Carrito</h2>     
                    <%
                        Fecha fechaSistema = new Fecha();
                    %>                     
                    <p class="ml-auto"><%= fechaSistema.Fecha()%></p>                               
                </div>                    
                <div class="row">             
                    <div class="col-lg-9">                 
                        <table class="table" >
                            <thead style="background-color: rgba(255,255,255,0.9);">
                                <tr >
                                    <th style=" background-color: rgba(227,242,225,0.5); color: black" >Item</th>                               
                                    <th style=" background-color: rgba(227,242,225,0.5); color: black">Articulo</th>
                                    <th style=" background-color: rgba(227,242,225,0.5); color: black">Descripcion</th>
                                    <th style=" background-color: rgba(227,242,225,0.5); color: black">Precio</th>
                                    <th style=" background-color: rgba(227,242,225,0.5); color: black">Cantidad</th>                       
                                    <th style=" background-color: rgba(227,242,225,0.5); color: black">Total</th>                       
                                    <th style=" background-color: rgba(227,242,225,0.5); color: black" class="accion">Acciones</th>                       
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="c" items="${Carrito}" varStatus="iterator"> 
                                    <tr class="text-center tr">
                                        <td>${iterator.index+1}</td>                                   
                                        <td style="  text-align: left;">${c.getNombres()}     
                                            <img src="${c.getImagen()}" width="60" height="60">
                                            <c:if test="${c.getEstadoProducto()=='20'}">
                                                <img src="img/20Off.png" style="width: 22%;"> 
                                            </c:if>                                                         
                                            <c:if test="${c.getEstadoProducto()=='30'}">
                                                <img src="img/30Off.png"  style="width: 22%;"> 
                                            </c:if>                                                         
                                            <c:if test="${c.getEstadoProducto()=='40'}">
                                                <img src="img/40Off.png"  style="width:22%;"> 
                                            </c:if>                                                         
                                            <c:if test="${c.getEstadoProducto()=='50'}">
                                                <img src="img/50Off.png" style="width: 22%;"> 
                                            </c:if>                                                         
                                            <c:if test="${c.getEstadoProducto()=='60'}">
                                                <img src="img/60Off.png"  style="width: 22%;"> 
                                            </c:if>                                                         
                                            <c:if test="${c.getEstadoProducto()=='70'}">
                                                <img src="img/70Off.png"  style="width: 22%;"> 
                                            </c:if>  

                                        </td>
                                        <td>${c.getDescripcion()}</td>
                                        <td>${c.getPrecioCompra()} 
                                            <c:if test="${c.getEstadoProducto()!='Normal'}">
                                                <input style="width: 50px;height: 30px;background: rgba(204, 70, 75,0.5); border: none; font-size: 10pt; color: #fff;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" type="button" class=" btn-danger" value="$ -${c.getPrecioFinal()}">
                                            </c:if> 
                                        </td>
                                        <td>  
                                          
                                            <c:if test="${c.getCantidad()>0 }">
                                                <input type="hidden" id="item1" value="${c.getIdProducto()}">
                                                <input style="width: 80px;height: 40px; background: rgba(29, 34, 31,0.3); border: none; font-size: 10pt; color: #fff;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" type="number" min="1" max="10"  id="Cant" class=" form-control text-center" value="${c.getCantidad()}">
                                 
                                            
                                            </c:if> 
                                              
                                        </td>   
                                        <td>${c.getSubTota()}
                                            <c:if test="${c.getEstadoProducto()!='Normal'}">
                                                <input style="width: 50px;height: 30px; background: rgba(3, 61, 127,0.5); border: none; font-size: 10pt; color: #fff;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" type="button" class=" btn-primary" value="$ ${c.getSubTotalDes()}">
                                            </c:if>
                                        </td>                         
                                        <td class="text-center">                                         
                                            <input type="hidden" id="item2" value="${c.getIdProducto()}">
                                            <a id="deleteItem" href="#" class="btn"><i class="fas fa-trash-alt" style="color:white;"></i></a>                                            
                                        </td>                           
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>                    
                    </div>
                    <div class="col-lg-3 columnaresultado ">                  
                        <div class="card" style="background-color: rgba(255,255,255,0.9);">
                            <div class="card-header" style="color:black">
                                Generar Compra
                            </div>
                            <div class="card-body" style="color:black">
                                <label >Subtotal:</label>
                                <c:if test="${subtotal!=',00'}">
                                    <a style="width: 215px;height: 40px; background: rgba(255, 255, 255,0.75); border: none; font-size: 10pt; color: black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" class="form-control text-center"><i class="h5" style="color:black">$ ${subtotal}</i></a>
                                </c:if>
                                <c:if test="${subtotal==',00'}">
                                    <a style="width: 215px;height: 40px; background: rgba(255, 255, 255,0.75); border: none; font-size: 10pt; color: black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" class="form-control text-center"><i class="h5" style="color:black">$ 0,00</i></a>
                                </c:if>                            
                                <label>Descuento:</label>
                                <c:if test="${totalDescuento!=',00'}">
                                    <a style="width: 215px;height: 40px; background: rgba(255, 255, 255,0.75); border: none; font-size: 10pt; color: black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" class="form-control text-center"><i class="h5" style="color: red">$ ${totalDescuento}</i></a>
                                </c:if>    
                                <c:if test="${totalDescuento==',00'}">
                                    <a style="width: 215px;height: 40px; background: rgba(255, 255, 255,0.75); border: none; font-size: 10pt; color: black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" class="form-control text-center"><i class="h5" style="color: red">$ 0,00</i></a>
                                </c:if>    

                                <label>IVA:</label>
                                <c:if test="${igv!=',00'}">
                                    <a style="width: 215px;height: 40px; background: rgba(255, 255, 255,0.75); border: none; font-size: 10pt; color: black; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" class="form-control text-center"><i class="h5" style="color:black">$ ${igv}</i></a>
                                </c:if> 
                                <c:if test="${igv==',00'}">
                                    <a style="width: 215px;height: 40px; background: rgba(255, 255, 255,0.75); border: none; font-size: 10pt; color: black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" class="form-control text-center"><i class="h5" style="color:black">$ 0,00</i></a>
                                </c:if> 


                                <label>Total a Pagar:</label>
                                <c:if test="${igv!=',00'}">
                                    <a style="width: 215px;height: 40px; background: rgba(255, 255, 255,0.75); border: none; font-size: 10pt; color: black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" class="form-control text-center"><i class=" h4 primary" style="color:black">$ ${totalPagar}</i></a>
                                </c:if> 
                                <c:if test="${igv==',00'}">
                                    <a style="width: 215px;height: 40px; background: rgba(255, 255, 255,0.75); border: none; font-size: 10pt; color:black; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" class="form-control text-center"><i class=" h4 primary" style="color:black">$ 0,00</i></a>
                                </c:if> 

                            </div>
                            <div class="card-footer">                          
                                <!--<a href="Controlador?accion=GenerarCompra" class="btn btn-danger btn-block">Generar Compra</a>-->
                                <c:if test="${Carrito.size()>0 && clientelogueado.id!=0}">
                                    <a href="#" data-toggle="modal" data-target="#myModalPago" class="btn"><i class="fa fa-money-check-alt"></i> Generar Compra</a> 
                                </c:if>
                                <c:if test="${clientelogueado.id==0}">
                                    <a href="#" onclick="CargarModalLogueo()" data-toggle="modal" data-target="#myModalLogueo" class="btn btn-info btn-block"><i class="fa fa-sign-in-alt"></i> Iniciar Sesion</a> 
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>          
            </div>
            <!-- Modal Iniciar Session o Registrarse -->
            <div class="modal fade" id="myModalLogueo" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="container col-lg-9">                   
                        <div class="modal-content" id="contenido">                   
                            <!------------------------->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Modal de Pago -->
            <div class="modal fade" id="myModalPago" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-dialog-centered" role="document">         
                    <div class="modal-content col-sm-9"  style="background-color: rgba(255,255,255,0.85);">                   
                        <div class="modal-header text-center" > 
                            <label style="color:black">  Realizar Pago</label>
                            <button type="button" class="close" data-dismiss="modal">
                                <span aria-hidden="true" style="color:black">&times;</span>
                            </button>  
                        </div>
                        <div class="modal-body"> 
                            <div class="tab-content" id="pills-tabContent">
                                <!-- Metodo Pago -->
                                <!-- <div class="tab-pane fade show active" id="pills-iniciar" role="tabpanel">
                                     <form action="Controlador">
                                         <div class="form-group">
                                             <label>Card address</label>
                                             <input type="text" class="form-control" placeholder="9999-9999-9999-9999">
                                         </div>
                                         <div class="form-group">
                                             <label>Codigo Seguridad</label>
                                             <input type="text" class="form-control" placeholder="xxxx">
                                         </div>
                                         <div class="form-group">
                                             <label>Monto</label>
                                             <input type="text" name="txtmonto" value="S/. ${totalPagar}" class="form-control h1">
                                         </div> 
                                         <button onclick="print()" type="submit" name="accion" value="RealizarPago" class="btn btn-info btn-block"><i class="fab fa-amazon-pay"></i> Pagar Ahora</button>
                                     </form>
                                 </div>
                             </div> -->
                                <ul class="nav bg-light nav-pills rounded nav-fill mb-3" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="pill" href="#nav-tab-card">
                                            <i class="fa fa-credit-card"></i> Credit Card
                                        </a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="nav-tab-card">
                                        <form role="form" action="Controlador" method="POST">
                                            <div class="form-group">
                                                <label for="username" style="color:black">Nombres</label>
                                                <input  style="width: 300px;height: 30px; background: rgba(29, 34, 31,0.3); border: none; font-size: 10pt; color: black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" type="text" class="form-control" maxlength="20" name="txtnombre" placeholder="" required="">
                                            </div> <!-- form-group.// -->

                                            <div class="form-group">
                                                <label for="cardNumber" style="color:#000000">Nro Tarjeta</label>
                                                <div class="input-group">
                                                    <input style="width: 200px;height: 40px; background: rgba(29, 34, 31,0.3); border: none; font-size: 10pt; color:black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" type="text" id="numerocard" maxlength="16" class="form-control" name="txtnumero" placeholder="xxxx-xxxx-xxxx-xxxx" required="" >
                                                    <div class="input-group-append" >
                                                        <span class="input-group-text text-muted">
                                                            <div class="">                                                        
                                                                <img src="img/Visa.png" width="60" height="20">
                                                            </div>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div> <!-- form-group.// -->                                       
                                            <div class="row">
                                                <div class="col-sm-8">
                                                    <div class="form-group">
                                                        <label><span class="hidden-xs" style="color:black">Expiration</span> </label>
                                                        <div class="input-group">
                                                            <input style="width: 200px;height: 30px; background: rgba(29, 34, 31,0.3); border: none; font-size: 10pt; color: black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" type="text" id="fecha" step="" class="form-control" placeholder="MM/YY" name="txtfecha" required="11111111111111">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label data-toggle="tooltip" style="color:black" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
                                                        <input style="width: 80px;height: 30px; background: rgba(29, 34, 31,0.3); border: none; font-size: 10pt; color: black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" type="text" maxlength="3" name="txtcodigo" id="codigo" class="form-control" required="">
                                                    </div> <!-- form-group.// -->
                                                </div>
                                            </div> <!-- row.// -->
                                            <button type="submit" name="accion" value="RealizarPago" class="subscribe btn btn-primary btn-block">Pagar <i class="fas fa-dollar-sign" ></i> ${totalPagar}  </button>
                                        </form>
                                    </div> <!-- tab-pane.// -->
                                </div> <!-- card-body.// -->
                            </div>
                        </div>
                    </div>
                </div>
                <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
                <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                <script src="js/funciones.js" type="text/javascript">
                </script>       
                <script>
                    $(document).ready(function () {
                    var input = document.getElementById('fecha');
                        var input2 = document.getElementById('codigo');
                        var input3 = document.getElementById('numerocard');                         input.addEventListener('input', function () {
                        if (this.value.length > 5) {
                            this.value = this.value.slice(0, 5);
                            }
                                });
                            input2.addEventListener('input', function () {
                        if (this.value.length > 3)
                            this.value = this.value.slice(0, 3);
                        });
                                input3.addEventListener('input', function () {
                        if (this.value.length > 19)
                            this.value = this.value.slice(0, 19);
                        });
                                });
                </script>     
                <script type="text/javascript">
                    //Actualizar Cantidad Con el Metodo Ajax
                    /*  $("tr #Cant").click(function (e) {
                    var idp = $(this).parent().find('#item1').val();
                      var cantidad = $(this).parent().find('#Cant').val();
                      console.log(idp, cantidad);
                      var url = "Controlador?accion=updateCantidad";
                     $.ajax({
                      type: 'POST',
                     url: url,
                      data: {id: idp, cantidad: cantidad},
                      success: function (respuesta) {
                      location.href = "Controlador?accion=ListarCarrito";
                     }
                      });
                     });*/

                      //Actualizar Cantidad con Solo Jquery
                      $(document).ready(function () {
                    $("tr #Cant").click(function () {
                        var idp = $(this).parent().find("#item1").val();
                            var cantidad = $(this).parent().find('#Cant').val();
                            var url = "Controlador?accion=updateCantidad";                             $("tr #Cant").load(url, {"arreglo[]": [idp, cantidad]});
                            location.href = "Controlador?accion=ListarCarrito";                         });
                            });

                </script>
                <script  type="text/javascript">
                    function CargarModalLogueo() {
                    document.getElementById("contenido").innerHTML = "";
                        $("#myModalLogueo").modal('show');
                        $("#contenido").load("Controlador?accion=IniciarSession");
                    }
                        </script>
            </div> 
        </div>
    </body>
</html>
