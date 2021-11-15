    
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
        </style>
    </head>
    <body>       
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#"><i><img src="img/logo.png" width="60" height="60"></i> SinFloo Store</a>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="./Controlador?accion=Nuevo"><i class="fas fa-home"></i> Home<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./Controlador?accion=Oferta"><i class="fas fa-plus-circle"></i> Ofertas del Dia</a>
                    </li>                   
                    <li class="nav-item">
                        <a class="nav-link" href="./Controlador?accion=home"><i class="fas fa-plus-circle"></i> Seguir Comprando</a>
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
            <div class="d-flex">
                <h2>Carrito</h2>     
                <%
                    Fecha fechaSistema = new Fecha();
                %>                     
                <p class="ml-auto"><%= fechaSistema.Fecha()%></p>                               
            </div>                    
            <div class="row">             
                <div class="col-lg-9">                 
                    <table class="table">
                        <thead class="thead-light">
                            <tr class="text-center">
                                <th>Item</th>                               
                                <th>Articulo</th>
                                <th>Descripcion</th>
                                <th>Precio</th>
                                <th>Cantidad</th>                       
                                <th>Total</th>                       
                                <th class="accion">Acciones</th>                       
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="c" items="${Carrito}" varStatus="iterator"> 
                                <tr class="text-center tr">
                                    <td>${iterator.index+1}</td>                                   
                                    <td>${c.getNombres()}                                       
                                        <c:if test="${c.getEstadoProducto()=='20'}">
                                            <img src="img/20.png" height="50" width="60"> 
                                        </c:if>                                                         
                                        <c:if test="${c.getEstadoProducto()=='30'}">
                                            <img src="img/30.png" height="50" width="60"> 
                                        </c:if>                                                         
                                        <c:if test="${c.getEstadoProducto()=='40'}">
                                            <img src="img/40.png" height="50" width="60"> 
                                        </c:if>                                                         
                                        <c:if test="${c.getEstadoProducto()=='50'}">
                                            <img src="img/50.png" height="50" width="60"> 
                                        </c:if>                                                         
                                        <c:if test="${c.getEstadoProducto()=='60'}">
                                            <img src="img/60.png" height="50" width="60"> 
                                        </c:if>                                                         
                                        <c:if test="${c.getEstadoProducto()=='70'}">
                                            <img src="img/70.png" height="50" width="60"> 
                                        </c:if>  
                                        <img src="${c.getImagen()}" width="60" height="60">
                                    </td>
                                    <td>${c.getDescripcion()}</td>
                                    <td>${c.getPrecioCompra()} 
                                        <c:if test="${c.getEstadoProducto()!='Normal'}">
                                            <input type="button" class=" btn-danger" value="-${c.getPrecioFinal()}">
                                        </c:if> 
                                    </td>
                                    <td>        
                                        <input type="hidden" id="item1" value="${c.getIdProducto()}">
                                        <input type="number" min="1" max="10"  id="Cant" class=" form-control text-center" value="${c.getCantidad()}">
                                    </td>   
                                    <td>${c.getSubTota()}
                                        <c:if test="${c.getEstadoProducto()!='Normal'}">
                                            <input type="button" class=" btn-primary" value="${c.getSubTotalDes()}">
                                        </c:if>
                                    </td>                         
                                    <td class="text-center">                                         
                                        <input type="hidden" id="item2" value="${c.getIdProducto()}">
                                        <a id="deleteItem" href="#" class="btn"><i class="fas fa-trash-alt"></i></a>                                            
                                    </td>                           
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>                    
                </div>
                <div class="col-lg-3 columnaresultado">                  
                    <div class="card">
                        <div class="card-header">
                            Generar Compra
                        </div>
                        <div class="card-body">
                            <label>Subtotal:</label>
                            <c:if test="${subtotal!=',00'}">
                                <a class="form-control text-center"><i class="h5">S/. ${subtotal}</i></a>
                            </c:if>
                            <c:if test="${subtotal==',00'}">
                                <a class="form-control text-center"><i class="h5">S/. 0,00</i></a>
                            </c:if>                            
                            <label>Descuento:</label>
                            <c:if test="${totalDescuento!=',00'}">
                                <a class="form-control text-center"><i class="h5" style="color: red">S/. ${totalDescuento}</i></a>
                            </c:if>    
                            <c:if test="${totalDescuento==',00'}">
                                <a class="form-control text-center"><i class="h5" style="color: red">S/. 0,00</i></a>
                            </c:if>    

                            <label>IGV:</label>
                            <c:if test="${igv!=',00'}">
                                <a class="form-control text-center"><i class="h5">S/. ${igv}</i></a>
                            </c:if> 
                            <c:if test="${igv==',00'}">
                                <a class="form-control text-center"><i class="h5">S/. 0,00</i></a>
                            </c:if> 


                            <label>Total a Pagar:</label>
                            <c:if test="${igv!=',00'}">
                                <a class="form-control text-center"><i class=" h4 primary">S/. ${totalPagar}</i></a>
                            </c:if> 
                            <c:if test="${igv==',00'}">
                                <a class="form-control text-center"><i class=" h4 primary">S/. 0,00</i></a>
                            </c:if> 

                        </div>
                        <div class="card-footer">                          
                            <!--<a href="Controlador?accion=GenerarCompra" class="btn btn-danger btn-block">Generar Compra</a>-->
                            <c:if test="${Carrito.size()>0 && clientelogueado.id!=0}">
                                <a href="#" data-toggle="modal" data-target="#myModalPago" class="btn btn-success btn-block"><i class="fa fa-money-check-alt"></i> Generar Compra</a> 
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
                <div class="modal-content col-sm-9">                   
                    <div class="modal-header text-center"> 
                        <label><i class="fa-dollar-sign"></i>Realizar Pago</label>
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
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
                                            <label for="username">Nombres</label>
                                            <input type="text" class="form-control" maxlength="20" name="txtnombre" placeholder="" required="">
                                        </div> <!-- form-group.// -->

                                        <div class="form-group">
                                            <label for="cardNumber">Nro Tarjeta</label>
                                            <div class="input-group">
                                                <input type="text" id="numerocard" maxlength="16" class="form-control" name="txtnumero" placeholder="xxxx-xxxx-xxxx-xxxx" required="" >
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
                                                    <label><span class="hidden-xs">Expiration</span> </label>
                                                    <div class="input-group">
                                                        <input type="text" id="fecha" step="" class="form-control" placeholder="MM/YY" name="txtfecha" required="11111111111111">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
                                                    <input type="text" maxlength="3" name="txtcodigo" id="codigo" class="form-control" required="">
                                                </div> <!-- form-group.// -->
                                            </div>
                                        </div> <!-- row.// -->
                                        <button type="submit" name="accion" value="RealizarPago" class="subscribe btn btn-primary btn-block"><i class="fab fa-amazon-pay"></i> Pagar S/. ${totalPagar}  </button>
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
                    var input3 = document.getElementById('numerocard');
                    input.addEventListener('input', function () {
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
                        var url = "Controlador?accion=updateCantidad";
                        $("tr #Cant").load(url, {"arreglo[]": [idp, cantidad]});
                        location.href = "Controlador?accion=ListarCarrito";
                    });
                });

            </script>
            <script  type="text/javascript">
                function CargarModalLogueo() {
                    document.getElementById("contenido").innerHTML = "";
                    $("#myModalLogueo").modal('show');
                    $("#contenido").load("Controlador?accion=IniciarSession");
                }
            </script>
    </body>
</html>
