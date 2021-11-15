
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
        <form action="Controlador?accion=ActualizarUsuario" method="POST" enctype="multipart/form-data">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Actualizar Usuario</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default"><i class="far fa-address-card"></i></span>
                        </div>
                        <input type="number" id="dni" name="txtDni" value="${cliente.dni}" class="form-control" placeholder="46184659">
                    </div>                                                   
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default"><i class="fa fa-user-plus"></i></span>
                        </div>
                        <input type="text" name="txtNom" value="${cliente.nombres}" class="form-control" placeholder="Nombres Apellidos">
                    </div>                                                   
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default"><i class="far fa-address-card"></i></span>
                        </div>
                        <input type="text" name="txtDir" value="${cliente.direccion}" class="form-control" placeholder="Av. Los Almaos N°356">
                    </div>                                                   
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default"><i class="fas fa-at"></i></span>
                        </div>
                        <input type="email" name="txtCorreo" value="${cliente.email}" class="form-control" placeholder="example@gmail.com" >
                    </div>                                                   
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default"><i class="fa fa-unlock-alt"></i></span>
                        </div>
                        <input type="text" name="txtPass" value="${cliente.pass}" class="form-control" value="12345678">
                    </div> 
                    <c:if test="${clientelogueado.idrol==1}">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-default"><i class="fa fa-user"></i></span>
                            </div>
                            <select class="form-control" name="txtRol">                                    
                                <c:forEach items="${roles}" var="rol">
                                    <option value="${rol.id}"
                                            <c:if test="${rol.id==cliente.idrol}">
                                                selected     
                                            </c:if>
                                            >${rol.rol}</option>
                                </c:forEach>
                            </select>
                        </div> 
                    </c:if>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default"><i class="fas fa-cloud-upload-alt"></i></span>
                        </div>
                        <input type="file" name="file">
                    </div>     
                    <div class="ml-auto po">
                        <button type="submit" name="accion" value="ActualizarUsuario" class="btn btn-outline-primary"><i class="fa fa-save"></i> Actualizar</button>
                    </div>
                </div>                  
            </div>
        </form>           
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">

        </script>
        <script>
            $(document).ready(function () {
                var input = document.getElementById('dni');
                input.addEventListener('input', function () {
                    if (this.value.length > 8)
                        this.value = this.value.slice(0, 8);
                })
            });
        </script>
    </body>
</html>
