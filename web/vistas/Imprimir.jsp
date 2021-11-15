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
            @media print{
                .btn{
                    display: none;
                }
            }
        </style>
    </head>
    <body>
        <div class="container mt-4">
            <div class="col-lg-8">
                <div class="card p-2">
                    <h2 class="text-center">Empresa "SinFloo"</h2>  
                    <h4 class="text-center">Av. Panamericana 123 - Lima</h4>  
                    <h5 class="text-center">Cel. 910225993</h5>  
                    <div class="text-center">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Codigo</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="p" items="${myDetalle}" varStatus="index">
                                    <tr class="text-center">
                                        <td>${index.index+1}</td>                                                                                                   
                                        <td>C00${p[0]}</td>                                                                                                   
                                        <td>${p[1]}</td>                                                                                                                                         
                                        <td>S/.${p[3]}</td>                                                                                                     
                                        <td>${p[4]}</td>                                  
                                        <td>${p[7]}</td>                                  

                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-lg-5 ml-auto">
                        <table class="table table-borderless">                        
                            <tbody>
                                <tr>
                                    <td class="text-right">Descuento:</td>
                                    <td><input class="form-control" value="S/. ${datos[0]}" readonly="" style="color: #005AFF; font-weight: bold; font-size: 18px"></td>
                                </tr>
                                <tr>
                                    <td class="text-right">Sub Total :</td>
                                    <td><input class="form-control" value="S/. ${datos[1]}" readonly="" style="color: #005AFF; font-weight: bold; font-size: 18px"></td>
                                </tr>
                                <tr>
                                    <td class="text-right">IGV:</td>
                                    <td><input class="form-control" value="S/. ${datos[3]}" readonly="" style="color: #005AFF; font-weight: bold; font-size: 18px"></td>
                                </tr>
                                <tr>
                                    <td class="text-right">Total a Pagar :</td>
                                    <td><input class="form-control" value="S/. ${datos[2]}" readonly="" style="color: #005AFF; font-weight: bold; font-size: 18px"></td>
                                </tr>
                            </tbody>
                        </table>                                           
                    </div>
                </div>
                <br>
                <br>
                <div class="form-group ml-auto">
                    <a href="Controlador?accion=home" class="btn btn-outline-primary"> <i class="fa fa-external-link-alt"></i> Terminar Proceso</a>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script>
          window.print();
        </script>
    </body>

</html>
