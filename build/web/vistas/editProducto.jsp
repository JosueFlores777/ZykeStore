
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
        <form action="Controlador?accion=ActualizarProducto" method="POST" enctype="multipart/form-data">
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Nombres:</label>
                        <input type="text" name="txtNombre" value="${producto.nombres}" class="form-control">
                    </div>   
                    <div class="form-group">
                        <label>Descripcion</label>
                        <textarea name="txtDescripcion" class="form-control" style="height: 150px">${producto.descripcion}</textarea>
                    </div> 
                    <div class="form-group">                            
                        <input type="file" name="txtFoto">
                    </div>
                </div>
                <div class="col-sm-6">  
                    <div class="form-group">
                        <label>Precio</label>
                        <input type="text" value="${producto.precio}" name="txtPrecio" class="form-control">
                    </div> 
                    <div class="form-group">
                        <label>Stock</label>
                        <input type="text"  value="${producto.stock}" name="txtStock" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Categoria</label>
                        <select class="form-control" name="txtCategoria">
                            <option>Seleccionar</option>
                            <c:forEach items="${categorias}" var="cat">
                                <option  value="${cat.id}"
                                         <c:if test="${cat.id == producto.categoria.id}">
                                             selected
                                         </c:if>
                                         >${cat.categoria}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Estado</label>
                        <select class="form-control" name="txtEstado">                                        
                            <option>Normal</option>                                            
                            <option value="20">20% Descuento</option>                                            
                            <option value="30">30% Descuento</option>                                            
                            <option value="40">40% Descuento</option>                                            
                            <option value="50">50% Descuento</option>                                            
                            <option value="60">60% Descuento</option>                                            
                            <option value="70">70% Descuento</option>                                            
                        </select>
                    </div>
                </div>                                    
            </div>
            <div class="form-group">
                <button type="submit" name="accion" value="ActualizarProducto"class="btn btn-success">Actualizar</button>
            </div>
        </form>                      

        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="http://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    </body>
</html>
