
<%@page import="com.sinfloo.modelo.Producto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link href="http://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>        
        <title>Carrito de Compras</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand"  href="#"><i><img src="img/logo.png" width="50" height="40"></i> LT Store</a>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="./Controlador?accion=home"><i class="fas fa-home"></i> Home<span class="sr-only">(current)</span></a>
                    </li>                                 
                </ul>                                           
                <!--<ul class="navbar-nav btn-group my-2 my-lg-0" role="group">
                    <a style="color: white; cursor: pointer" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fas fa-user-tie"></i> ${logueo}</a>
                    <div class="dropdown-menu text-center dropdown-menu-right">
                        <a class="dropdown-item" href="#"><img src="img/user.png" alt="60" height="60"/></a>                        
                        <a class="dropdown-item" href="#">${user}</a>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#myModal">${correo}</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="Controlador?accion=MisCompras">Mis Compras</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="./Controlador?accion=Salir"> <i class="fas fa-arrow-right"> Salir</i></a>                        
                    </div>
                </ul>   -->  
            </div>
        </nav>
        <!-- Modal Add Producto -->
        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="card">
                        <div class="card-header">
                            <h3>Agregar Producto</h3>
                        </div>                
                        <div class="card-body">
                            <form action="Controlador?accion=GuardarProducto" method="POST" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Nombres:</label>
                                            <input type="text" name="txtNombre" class="form-control">
                                        </div>   
                                        <div class="form-group">
                                            <label>Descripcion</label>
                                            <textarea name="txtDescripcion" class="form-control"></textarea>
                                        </div> 
                                        <div class="form-group">                            
                                            <input type="file" name="txtFoto" placeholder="sad">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">  
                                        <div class="form-group">
                                            <label>Precio</label>
                                            <input type="number" step="0.01" id="precio" name="txtPrecio" class="form-control">
                                        </div> 
                                        <div class="form-group">
                                            <label>Stock</label>
                                            <input type="number" name="txtStock" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Categoria</label>
                                            <select class="form-control" name="txtcategoria">
                                                <option>Seleccionar</option>
                                                <c:forEach items="${categorias}" var="cat">
                                                    <option  value="${cat.id}">${cat.categoria}</option>
                                                </c:forEach>
                                            </select>
                                        </div>                                       
                                    </div>                                    
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-danger" name="accion" value="GuardarProducto">Guardar</button>
                                </div>
                            </form>
                        </div>               
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Edit Producto -->
        <div class="modal fade bd-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Actualizar Producto</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" id="contenido">

                    </div>                  
                </div>
            </div>
        </div>
        <div class="container mt-4">            
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="fas fa-notes-medical"></i> Nuevo Producto</button>
            <hr>
            <table class="table" id="myTable">
                <thead>
                    <tr class="text-center">
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>IMAGEN</th>                               
                        <th>DESCRIPCION</th>                               
                        <th>PRECIO</th>
                        <th>STOCK</th>
                        <th>CATEGORIA</th>
                        <th>ESTADO</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${productos}">
                        <tr class="text-center">
                            <td>${p.getId()}</td>
                            <td>${p.getNombres()}</td>
                            <td><img src="${p.getImagen()}" width="50" height="50"></td>
                            <td>${p.getDescripcion()}</td>                                    
                            <td>${p.getPrecio()}</td>
                            <td>${p.getStock()}</td>
                            <td>${p.getCategoria().getCategoria()}</td>                           
                            <td>${p.getEstado()}</td>                           
                            <td>
                                <a href="#" onclick="CargarModal(${p.getId()})" class="btn btn-outline-warning"><i class="fa fa-edit"></i></a>
                                <a onclick="Eliminar(${p.getId()})" class="btn btn-outline-danger" href="#"><i class="fa fa-trash-alt"></i></a>                               
                            </td>
                        </tr>
                    </c:forEach>                           
                </tbody>
            </table>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="http://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">

        </script>
        <script>
            $(document).ready(function () {
                $('#myTable').DataTable();
            });
        </script>
        <script>
            function CargarModal(id) {
                document.getElementById("contenido").innerHTML = "";
                $("#myModal").modal('show');
                $("#contenido").load("Controlador?accion=Editar", {id: id});
            }
        </script>
        <script>
            function Eliminar(id) {                            
                swal({
                    title: "Esta Seguro de Eliminar Producto "+id+"?",
                    text: "Una una Vez Eliminado, Debera Registrar de Nuevo!",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true
                }).then((willDelete) => {
                    if (willDelete) {
                        eliminar(id);
                        swal(" ¡Oh! ¡Registro Borrado! ", {
                            icon: "success",
                        }).then((willDelete) => {
                            if (willDelete) {
                                parent.location.href = "Controlador?accion=Productos";
                            }
                        });
                    }
                });
            }
            ;
            function eliminar(idp) {
                var url = "Controlador?accion=EliminarProducto&id=" + idp;
                $.ajax({
                    type: 'POST',
                    url: url,
                    async: true,
                    success: function (r) {
                    }
                });
            }
            ;

        </script>
    </body>
</html>
