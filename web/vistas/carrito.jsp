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
        <link href="https://fonts.googleapis.com/css2?family=Merriweather+Sans:wght@300&display=swap" rel="stylesheet">
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
                background-color: #fff  !important;
                font-family:  sans-serif !important;
                color: black !important;

            }

            .card .btn{
                display: inline-block;
                background: #999999 ;
                color: #111; 
                padding: 8px 30px;
                margin: 0px 0;
                border-radius: 30px;
                transition: background 0.5s;
            }
            .card .btn:hover{
                background-color: #111; 
                color:#232323 ;
            }
            .btn{
                color: #111;
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
            .cart-page{
                margin: 40px 350px;
            }
            table{
                width: 100%;
                border-collapse: collapse;
            }
            .cart-info{
                display: flex;
                flex-wrap:wrap ;

            }
            th{
                text-align: left;
                padding: 5px;
                color: #fff;
                background: #ff523b;
                font-weight: bold;
            }
            td{
                padding: 10px 5px;
            }
            td input{
                width: 40px;
                height: 30px;
                padding: 5px;
            }
            td a{
                color: #FF5032;
                font-size: 12px;
            }
            td img{
                width: 130px;
                height: 130px;
                margin-right: 10px;
            }

            .total-price{
                margin-top: 10px;
                display: flex;
                justify-content: flex-end;
            }

            .total-price table{
                border-top: 3px solid #ff523b;
                width: 100%;
                max-width: 370px;
            }
            td:last-child{
                text-align: right;
            }
            th:last-child{
                text-align: right;
            }
            .btn2{
                display: inline-block;
                background: #ff523b ;
                color: #fff; 
                padding: 8px 30px;
                margin: 10px 30px;
                border-radius: 30px;
                transition: background 0.5s;
                border: none;
                text-align: center;
                font-size: 105%;
            }
            .btn2:hover{
                background-color: #111; 
                color:#fff;
            }
            .btn{
             
                background: #ff523b ;
                color: #fff; 
                
                transition: background 0.5s;
                border: none;
                text-align: center;
            }
            .btn:hover{
                background-color: #111; 
                color:#fff;
            }
            .mb-3{
                background: #ff523b ;
                color: #fff; 
                
                transition: background 0.5s;
                border: none;
                text-align: center;
            }
            
            
        </style>
    </head>
    <body>
        <div class="cabezera">
            <div class="navbar" style=" font-family: 'Merriweather Sans', sans-serif;height: 90px; display: flex; align-items: center; font-size:110%; background: linear-gradient(0deg,#fff,#ffd6d6);margin-top: -10px;">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"><i class="fas fa-bars" style="color:black; width: 100%;"></i></span>
                </button>
                <a class="navbar-brand" style="color: black" href="#"><i><img src="img/logo1.png" width="70" height="70"></i>ZyKe Store</a>

                <div style="flex: 1; text-align: right;" id="navbarTogglerDemo03">
                    <ul style="display: inline-block; list-style-type: none;">
                        <li style=" display: inline-block; margin-right: 15px; ">
                            <a class="nav-link"style="text-decoration: none; color: black;  margin-left: -10px;margin-right: -30px;" href="./Controlador?accion=Nuevo"> Home<span class="sr-only">(current)</span></a>
                        </li>
                        <li style=" display: inline-block; margin-right: -1px; ">
                            <a class="nav-link"style="text-decoration: none; color: black;" href="./Controlador?accion=Oferta">Ofertas del Dia</a>
                        </li>                   
                        <li style=" display: inline-block; margin-right: 15px; margin-left: -15px; ">
                            <a class="nav-link"style="text-decoration: none; color: black;"href="./Controlador?accion=home">Seguir Comprando</a>
                        </li>                  
                    </ul>  
                    <ul role="group" style="display: inline-block; list-style-type: none; ">
                        <c:if test="${clientelogueado.id==null||clientelogueado.id==0}">
                            <a style="color: black; cursor: pointer" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fas fa-user" style="color: black;"></i> Iniciar Sesion</a> 
                            </c:if>                                              
                            <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                            <a style="color: black; cursor: pointer" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fas fa-user" style="color: black;"></i> ${clientelogueado.nombres}</a>  
                            </c:if>    
                        <div class="dropdown-menu text-center dropdown-menu-right" style="background: rgba(255, 255, 255,0.04); margin-top: -25px">
                            <c:if test="${clientelogueado.id==null||clientelogueado.id==0}">
                                <a style="color: black;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";' class="dropdown-item" href="#"><img src="img/logo02.png" width="60" height="60"/></a>                        
                                <a style="color:black;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";' class="dropdown-item" onclick="CargarModalLogueo()">Iniciar Sesion</a> 
                            </c:if>                                              
                            <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                                <a style="color: black;" onmouseover='this.style.color = "black";'  onmouseout='this.styl e.color =
                                                    "black";' class="dropdown-item" href="#"><img src="${clientelogueado.foto}" width="60" height="60"/></a>                       
                                <a style="color: black;" onmouseover='this.style.color = "black";'  onmouseout='this.s tyle.col
                                                    or = "black";' class="dropdown-item" onclick="CargarModalLogueo()">${clientelogueado.email}</a>  
                            </c:if>                      

                            <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                                <a style="color: black;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";'class="dropdown-item" href="./Controlador?accion=MisCompras">Mis Compras</a> 
                            </c:if>  
                            <c:if test="${clientelogueado.id==null||clientelogueado.id==0}">                            
                                <a style="color: black;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";' class="dropdown-item" onclick=" CargarModalLo
                                                    gueo()">Mis Compras</a> 
                            </c:if>   

                            <a  style="color: black;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";' class="dropdown-item" href="./Controlador?accion=Salir"> <i class="fas fa-sign-out-alt"> Salir</i></a>                        
                        </div>
                    </ul>     
                </div>
            </div>
            <!--Carrito Items -->
            <div class="small-container cart-page">
                <table>
                    <tr>
                        <th>Productos</th>
                        <th>Cantidad</th>
                        <th>Sub-Total</th>
                    </tr>
                    <c:forEach var="c" items="${Carrito}" varStatus="iterator"> 
                        <tr>
                            <td style="padding: 10px 5px;">
                                <div class="cart-info">
                                    <img src="${c.getImagen()}" width="60" height="60">
                                    <div>
                                        <h5>${c.getNombres()}</h5>
                                        <small >${c.getDescripcion()} </small>
                                        <br>
                                        <small>$${c.getPrecioCompra()} </small>
                                        <c:if test="${c.getEstadoProducto()=='20'}">
                                            <small>(20% Descuento)</small>
                                        </c:if>                                                         
                                        <c:if test="${c.getEstadoProducto()=='30'}">
                                            <small>(30% Descuento)</small>
                                        </c:if>                                                         
                                        <c:if test="${c.getEstadoProducto()=='40'}">
                                            <small>(40% Descuento)</small>
                                        </c:if>                                                         
                                        <c:if test="${c.getEstadoProducto()=='50'}">
                                            <small>(50% Descuento)</small>
                                        </c:if>                                                         
                                        <c:if test="${c.getEstadoProducto()=='60'}">
                                            <small>(60% Descuento)</small>
                                        </c:if>                                                         
                                        <c:if test="${c.getEstadoProducto()=='70'}">
                                            <small>(60% Descuento)</small>
                                        </c:if>  
                                        <br>
                                        <input type="hidden" id="item2" value="${c.getIdProducto()}">
                                        <a id="deleteItem" href="#" style="color: #FF5032; font-size: 12px;">Quitar</a>
                                    </div> 

                                </div>
                            </td>
                            <td>
                                <c:if test="${c.getCantidad()>0 }">
                                    <input type="hidden" id="item1" value="${c.getIdProducto()}">
                                    <input  style="width: 50px; height: 30px; padding: 5px;" type="number" min="1" max="10"  id="Cant" class=" form-control text-center" value="${c.getCantidad()}">
                                </c:if> 

                            </td>
                            <td>$${c.getSubTota()}
                                <c:if test="${c.getEstadoProducto()!='Normal'}">
                                    <br>
                                    <small>(-$${c.getSubTotalDes()})</small>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>

                </table>
                <div class="total-price">
                    <table>
                        <tr>
                            <td>Sub-Total</td>
                            <td> 
                                <c:if test="${subtotal!=',00'}">
                                    $ ${subtotal}
                                </c:if>
                                <c:if test="${subtotal==',00'}">
                                    $ 0,00
                                </c:if>  
                            </td>
                        </tr>
                        <tr>
                            <td>Descuento</td>
                            <td>
                                <c:if test="${totalDescuento!=',00'}">
                                    $ ${totalDescuento}
                                </c:if>    
                                <c:if test="${totalDescuento==',00'}">
                                    $ 0,00
                                </c:if>    
                            </td>
                        </tr>
                        <tr>
                            <td>IVA</td>
                            <td>
                                <c:if test="${igv!=',00'}">
                                    $ ${igv}
                                </c:if> 
                                <c:if test="${igv==',00'}">
                                    $ 0,00
                                </c:if> 
                            </td>
                        </tr>
                        <tr>
                            <td>Total</td>
                            <td>
                                <c:if test="${igv!=',00'}">
                                    $ ${totalPagar}
                                </c:if> 
                                <c:if test="${igv==',00'}">
                                    $ 0,00
                                </c:if> 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <c:if test="${Carrito.size()>0 && clientelogueado.id!=0}">
                                    <a href="#" data-toggle="modal" data-target="#myModalPago" class="btn2"><i class="fa fa-money-check-alt"></i> Generar Compra</a> 
                                </c:if>
                                <c:if test="${clientelogueado.id==0}">
                                    <a href="#" onclick="CargarModalLogueo()" data-toggle="modal" data-target="#myModalLogueo" class="btn2 btn-block"><i class="fa fa-sign-in-alt"></i> Iniciar Sesion</a> 
                                </c:if>
                            </td>

                        </tr>


                    </table>

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
                        <div class=" text-center" > 
                            <button type="button" class="close" data-dismiss="modal" style="margin-top:10px;">
                                <span aria-hidden="true" style="color:black">&times;</span>
                            </button>  
                            
                        </div>
                        
                        <div class="modal-body"> 
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="nav-tab-card">
                                        <form role="form" action="Controlador" method="POST">
                                            <div class="form-group">
                                                <label for="username" style="color:black">Nombres</label>
                                                <input  style="width: 300px;height: 30px; background: rgba(255, 143, 129,0.1); border: none; font-size: 10pt; color: black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" type="text" class="form-control" maxlength="20" name="txtnombre" placeholder="" required="">
                                            </div> <!-- form-group.// -->

                                            <div class="form-group">
                                                <label for="cardNumber" style="color:#000000">Nro Tarjeta</label>
                                                <div class="input-group">
                                                    <input style="width: 200px;height: 40px; background: rgba(255, 143, 129,0.1); border: none; font-size: 10pt; color:black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" type="text" id="numerocard" maxlength="16" class="form-control" name="txtnumero" placeholder="xxxx-xxxx-xxxx-xxxx" required="" >
                                                    <div class="input-group-append" >
                                                        <span class="input-group-text text-muted">
                                                            <div class="">                                                        
                                                                <img src="img/Visa2.png" width="60" height="20">
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
                                                            <input style="width: 200px;height: 30px; background: rgba(255, 143, 129,0.1); border: none; font-size: 10pt; color: black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" type="text" id="fecha" step="" class="form-control" placeholder="MM/YY" name="txtfecha" required="11111111111111">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label data-toggle="tooltip" style="color:black" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle" style="color:#FF5032"></i></label>
                                                        <input style="width: 80px;height: 30px; background: rgba(255, 143, 129,0.1); border: none; font-size: 10pt; color: black;  -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" type="text" maxlength="3" name="txtcodigo" id="codigo" class="form-control" required="">
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
                            var input3 = document.getElementById('numerocard'); input.addEventListener('input', function () {
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
                    });</script>     
                <script type="text/javascript">
                            $(document).ready(function () {
                    $("tr #Cant").click(function () {
                    var idp = $(this).parent().find("#item1").val();
                            var cantidad = $(this).parent().find('#Cant').val();
                            var url = "Controlador?accion=updateCantidad"; $("tr #Cant").load(url, {"arreglo[]": [idp, cantidad]});
                            location.href = "Controlador?accion=ListarCarrito"; });
                    });</script>
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
