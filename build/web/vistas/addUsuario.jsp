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
        <style>
            .input-login {
                padding-left: 20px;
                border: none;
                border-radius: 5px;
                font-weight: 600;
                letter-spacing: 1px;
                box-sizing: border-box;
                background: rgba(0, 0, 0,0.1);
                height: 40px;
                width: 465px;
            }

            .input-login:hover {
                border: 2px solid #111;
            }
        </style>
    </head>
    <body>
        <div class="navbar" style=" display: flex; align-items: center; background-color: black">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"><i class="fas fa-bars" style="color:#fff; width: 100%;"></i></span>
            </button>
            <a class="navbar-brand" style="color: white" href="#"><i><img src="img/logo.png" width="60" height="60"></i>ZyKe Store</a>

            <div style="flex: 1; text-align: right;" id="navbarTogglerDemo03">
                <ul style="display: inline-block; list-style-type: none;">         
                    <li style=" display: inline-block; margin-right: 15px; ">
                        <a class="nav-link"style="text-decoration: none; color: #999999;"href="./Controlador?accion=home"><i class="fas fa-home" style="color: white"></i> Home</a>
                    </li>                  
                </ul>  

            </div>
        </div>       
        <!-- Modal Edit Producto -->
        <div class="modal fade bd-example-modal-lg" id="myModalEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">                   
                    <div id="contenido">

                    </div>                  
                </div>
            </div>
        </div>
        <!------------Modal Add Usuario--------------->     
        <div class="modal fade" id="myModalAdd" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <form action="Controlador?accion=GuardarUsuario" method="POST" enctype="multipart/form-data">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Agregar Usuario</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="input-group mb-3">
                                <!-- <input type="number" id="dni" name="txtDni" class="form-control" placeholder="12345678-9">-->
                                <div class="formulario__grupo" id="grupo__DUI">

                                    <div class="formulario__grupo-input">
                                        <input type="text" class="input-login" name="txtDni" id="dni" placeholder="DUI">
                                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                    </div>
                                    <!--MENSAJE DE ERROR NOMBRE -->  
                                    <p class="formulario__input-error" style="color: black" >El DUI tiene que ser de 4 a 40 dígitos.</p>
                                </div>
                            </div>                                                   
                            <div class="input-group mb-3">
                                
                                <input type="text" name="txtNom" class="input-login" placeholder="Nombre Apellidos">
                            </div>                                                   
                            <div class="input-group mb-3">
                                
                                <input type="text" name="txtDir" class="input-login" placeholder="Av. Los Almaos N°356">
                            </div>                                                   
                            <div class="input-group mb-3">
                                
                                <input type="email" name="txtCorreo" class="input-login" placeholder="example@gmail.com" >
                            </div>                                                   
                            <div class="input-group mb-3">
                                
                                <input type="password" name="txtPass" class="input-login"  placeholder="************">
                            </div> 
                            <div class="input-group mb-3">
                                
                                <select class="input-login" name="txtRol" id="Rol">                                    
                                    <c:forEach items="${roles}" var="rol">
                                        <option  value="${rol.id}">${rol.rol}</option>
                                    </c:forEach>
                                </select>
                            </div> 
                            <div class="input-login">
                                
                                <input type="file" name="file">
                            </div>     
                            <div class="ml-auto po">
                                <button type="submit" name="accion" value="GuardarUsuario"  class="btn btn-outline-dark" style="height: 45px; margin-top: 20px;"><i class="fa fa-save"></i> Guardar</button>
                            </div>
                        </div>                  
                    </div>
                </form>
            </div>
        </div>
        <div class="container mt-4"> 
            <c:if test="${clientelogueado.idrol==1}">
                <button type="button" class="btn btn-outline-dark" data-toggle="modal" data-target="#myModalAdd">Nuevo Usuario</button>
            </c:if>
            <hr>
            <table class="table" id="myTable">
                <thead>
                    <tr class="text-center">
                        <th>ID</th>
                        <th>DUI</th>
                        <th>NOMBRES</th>                               
                        <th>DIRECCION</th>                               
                        <th>EMAIL</th>
                        <th>PASSWORD</th>
                        <th>FOTO</th>                    
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <c:if test="${clientelogueado.idrol==1}">
                        <c:forEach var="c" items="${clientes}" varStatus="iterator" >
                            <tr class="text-center">
                                <td>${iterator.index+1}</td>
                                <td>${c.dni}</td>                        
                                <td>${c.nombres}</td>                                    
                                <td>${c.direccion}</td>
                                <td>${c.email}</td>
                                <td>${c.pass}</td>
                                <td><img src="${c.foto}" width="50" height="50"></td>                       
                                <td>                               
                                    <a href="#" onclick="CargarModal(${c.id})" class="btn btn-outline-warning"><i class="fa fa-edit"></i></a>
                                    <input type="hidden" id="idCliente" value="${c.id}">
                                    <input type="hidden" id="idRol" value="${clientelogueado.idrol}">
                                    <a id="idEliminar" class="btn btn-outline-danger" href="#"><i class="fa fa-trash-alt"></i></a>
                                </td>
                            </tr>
                        </c:forEach> 
                    </c:if>
                    <c:if test="${clientelogueado.idrol!=1}">
                        <tr class="text-center">
                            <td>${iterator.index+1}</td>
                            <td>${clientelogueado.dni}</td>                        
                            <td>${clientelogueado.nombres}</td>                                    
                            <td>${clientelogueado.direccion}</td>
                            <td>${clientelogueado.email}</td>
                            <td>${clientelogueado.pass}</td>                     
                            <td><img src="${clientelogueado.foto}" width="50" height="50"></td>                       
                            <td>                               
                                <a href="#" onclick="CargarModal(${clientelogueado.id})" class="btn btn-outline-warning"><i class="fa fa-edit"></i></a>
                                <input type="hidden" id="idCliente" value="${clientelogueado.id}">
                                <input type="hidden" id="idRol" value="${clientelogueado.idrol}">
                                <a onclick="Eliminar(${p.getId()})" class="btn btn-outline-danger" href="#"><i class="fa fa-trash-alt"></i></a>    
                            </td>
                        </tr>
                    </c:if>                        

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
                    function CargarModal(id) {
                    document.getElementById("contenido").innerHTML = "";
                            $("#myModalEdit").modal('show');
                            $("#contenido").load("Controlador?accion=EditarUsuario", {id: id});
                    }
        </script>
        <script>
            $(document).ready(function () {
            $('#myTable').DataTable();
            });        </script>
        <script>
                    $(document).ready(function () {
            var input = document.getElementById('dni');
                    input.addEventListener('input', function () {
                    if (this.value.length > 8)
                            this.value = this.value.slice(0, 8);
                    })
            });        </script>
        <script>
                    $(document).ready(function () {
            $("tr #idEliminar").click(function (e) {
            e.preventDefault();
                    var idp = $(this).parent().find('#idCliente').val();
                    var idr = $(this).parent().find('#idRol').val();
                    //alert(idr);
                    swal({
                    title: "Esta Seguro de Eliminar?",
                            text: "Una una Vez Eliminado, Debera Registrar de Nuevo!",
                            icon: "warning",
                            buttons: true,
                            dangerMode: true
                    }).then((willDelete) = > {
            if (willDelete) {
            eliminar(idp);
                    swal(" ¡Oh! ¡Registro Borrado! ", {
                    icon: "success",
                    }).then((willDelete) = > {
            if (willDelete) {
            if (idr != 1) {
            console.log(idr);
                    parent.location.href = "Controlador?accion=home";
            } else {
            parent.location.href = "Controlador?accion=Usuarios";
            }
            }
            });
            }
            });
            });
                    function eliminar(idp) {
                    var url = "Controlador?accion=DeleteUsuario&id=" + idp;
                            $.ajax({
                            type: 'POST',
                                    url: url,
                                    async: true,
                                    success: function (r) {
                                    }
                            });
                    }
            });
                    const formulario = document.getElementById('formulario');
                    const inputs = document.querySelectorAll('#formulario input');
                    const expresiones = {
                    txtNom:  /^[A-Za-záéíóúÁÉÍÓÚñÑ ]{3,25}$/,
                            txtCorreo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
                            txtDni: /^\d{8}-\d{1}$/,
                            txtPass:  /^[A-Za-záéíóúÁÉÍÓÚñÑ ]{3,25}$/,
                            Direccion:/^[A-Za-záéíóúÁÉÍÓÚñÑ ]{3,25}$/
                            }


            const validarFormulario = (e) = > {
            switch (e.target.name) {
            case "txtNom":
                    if (expresiones.txtNom.test(e.target.value)){
            document.getElementById('grupo__nombre').classList.remove('formulario__grupo-incorrecto');
                    document.getElementById('grupo__nombre').classList.add('formulario__grupo-correcto');
                    document.querySelector('#grupo__nombre i').classList.add('fa-check-circle');
                    document.querySelector('#grupo__nombre i').classList.remove('fa-times-circle');
                    document.querySelector('#grupo__nombre .formulario__input-error').classList.remove('formulario__input-error-activo');
            } else {
            document.getElementById('grupo__nombre').classList.add('formulario__grupo-incorrecto');
                    document.getElementById('grupo__nombre').classList.remove('formulario__grupo-correcto');
                    document.querySelector('#grupo__nombre i').classList.remove('fa-check-circle');
                    document.querySelector('#grupo__nombre i').classList.add('fa-times-circle');
                    document.querySelector('#grupo__nombre .formulario__input-error').classList.add('formulario__input-error-activo');
            }
            break;
                    case "txtDir":
                    if (expresiones.txtDir.test(e.target.value)){
            document.getElementById('grupo__Direc').classList.remove('formulario__grupo-incorrecto');
                    document.getElementById('grupo__Direc').classList.add('formulario__grupo-correcto');
                    document.querySelector('#grupo__Direc i').classList.add('fa-check-circle');
                    document.querySelector('#grupo__Direc i').classList.remove('fa-times-circle');
                    document.querySelector('#grupo__Direc .formulario__input-error').classList.remove('formulario__input-error-activo');
            } else {
            document.getElementById('grupo__Direc').classList.add('formulario__grupo-incorrecto');
                    document.getElementById('grupo__Direc').classList.remove('formulario__grupo-correcto');
                    document.querySelector('#grupo__Direc i').classList.remove('fa-check-circle');
                    document.querySelector('#grupo__Direc i').classList.add('fa-times-circle');
                    document.querySelector('#grupo__Direc .formulario__input-error').classList.add('formulario__input-error-activo');
            }
            break;
                    case "txtPass":
                    if (expresiones.txtPass.test(e.target.value)){
            document.getElementById('grupo__password').classList.remove('formulario__grupo-incorrecto');
                    document.getElementById('grupo__password').classList.add('formulario__grupo-correcto');
                    document.querySelector('#grupo__password i').classList.add('fa-check-circle');
                    document.querySelector('#grupo__password i').classList.remove('fa-times-circle');
                    document.querySelector('#grupo__password .formulario__input-error').classList.remove('formulario__input-error-activo');
            } else {
            document.getElementById('grupo__password').classList.add('formulario__grupo-incorrecto');
                    document.getElementById('grupo__password').classList.remove('formulario__grupo-correcto');
                    document.querySelector('#grupo__password i').classList.remove('fa-check-circle');
                    document.querySelector('#grupo__password i').classList.add('fa-times-circle');
                    document.querySelector('#grupo__password .formulario__input-error').classList.add('formulario__input-error-activo');
            }
            break;
                    case "txtCorreo":
                    if (expresiones.txtCorreo.test(e.target.value)){
            document.getElementById('grupo__correo').classList.remove('formulario__grupo-incorrecto');
                    document.getElementById('grupo__correo').classList.add('formulario__grupo-correcto');
                    document.querySelector('#grupo__correo i').classList.add('fa-check-circle');
                    document.querySelector('#grupo__correo i').classList.remove('fa-times-circle'); ;
                    document.querySelector('#grupo__correo .formulario__input-error').classList.remove('formulario__input-error-activo');
            } else {
            document.getElementById('grupo__correo').classList.add('formulario__grupo-incorrecto');
                    document.getElementById('grupo__correo').classList.remove('formulario__grupo-correcto');
                    document.querySelector('#grupo__correo i').classList.remove('fa-check-circle');
                    document.querySelector('#grupo__correo i').classList.add('fa-times-circle');
                    document.querySelector('#grupo__correo .formulario__input-error').classList.add('formulario__input-error-activo');
            }
            break;
                    case "txtDni":
                    if (expresiones.txtDni.test(e.target.value)){
            document.getElementById('grupo__DUI').classList.remove('formulario__grupo-incorrecto');
                    document.getElementById('grupo__DUI').classList.add('formulario__grupo-correcto');
                    document.querySelector('#grupo__DUI i').classList.add('fa-check-circle');
                    document.querySelector('#grupo__DUI i').classList.remove('fa-times-circle'); ;
                    document.querySelector('#grupo__DUI .formulario__input-error').classList.remove('formulario__input-error-activo');
            } else {
            document.getElementById('grupo__DUI').classList.add('formulario__grupo-incorrecto');
                    document.getElementById('grupo__DUI').classList.remove('formulario__grupo-correcto');
                    document.querySelector('#grupo__DUI i').classList.remove('fa-check-circle');
                    document.querySelector('#grupo__DUI i').classList.add('fa-times-circle');
                    document.querySelector('#grupo__DUI .formulario__input-error').classList.add('formulario__input-error-activo');
            }
            break;
            }
            }


            inputs.forEach((input) = > {
            input.addEventListener('keyup', validarFormulario);
                    input.addEventListener('blur', validarFormulario);
                    });

        </script>


        <style>* {
                box-sizing: border-box;
            }




            .formulario__label {
                display: block;
                font-weight: 700;
                padding: 10px;
                cursor: pointer;
            }



            .formulario__input:focus {
                border: 3px solid #0075FF;
                outline: none;
                box-shadow: 3px 0px 30px rgba(163,163,163, 0.4);
            }

            .formulario__input-error {
                font-size: 12px;
                margin-bottom: 0;
                display: none;
            }

            .formulario__input-error-activo {
                display: block;
            }

            .formulario__validacion-estado {
                position: absolute;
                right: 10px;
                bottom: 15px;
                z-index: 100;
                font-size: 16px;
                opacity: 0;
            }

            .formulario__checkbox {
                margin-right: 10px;
            }

            .formulario__grupo-terminos, 
            .formulario__mensaje,
            .formulario__grupo-btn-enviar {
                grid-column: span 2;
            }

            .formulario__mensaje {
                height: 45px;
                line-height: 45px;
                background: #F66060;
                padding: 0 15px;
                border-radius: 3px;
                display: none;
            }

            .formulario__mensaje-activo {
                display: block;
            }

            .formulario__mensaje p {
                margin: 0;
            }

            .formulario__grupo-btn-enviar {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .formulario__btn {
                height: 45px;
                line-height: 45px;
                width: 30%;
                background: #000;
                color: #fff;
                font-weight: bold;
                border: none;
                border-radius: 3px;
                cursor: pointer;
                transition: .1s ease all;
            }

            .formulario__btn:hover {
                box-shadow: 3px 0px 30px rgba(163,163,163, 1);
            }

            .formulario__mensaje-exito {
                font-size: 14px;
                color: #119200;
                display: none;
            }

            .formulario__mensaje-exito-activo {
                display: block;
            }

            /* ----- -----  Estilos para Validacion ----- ----- */
            .formulario__grupo-correcto .formulario__validacion-estado {
                color: #1ed12d;
                opacity: 1;
            }

            .formulario__grupo-incorrecto .formulario__label {
                color: #bb2929;
            }

            .formulario__grupo-incorrecto .formulario__validacion-estado {
                color: #bb2929;
                opacity: 1;
            }

            .formulario__grupo-incorrecto .formulario__input {
                border: 3px solid #bb2929;
            }


            /* ----- -----  Mediaqueries ----- ----- */
            @media screen and (max-width: 800px) {
                .formulario {
                    grid-template-columns: 1fr;
                }

                .formulario__grupo-terminos, 
                .formulario__mensaje,
                .formulario__grupo-btn-enviar {
                    grid-column: 1;
                }

                .formulario__btn {
                    width: 100%;
                }
            }</style>
    </body>
</html>
