
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
            <!-- Modal Add Producto -->
            <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="card">
                            <div class="card-header">
                                <h3>Agregar Producto</h3>
                            </div>                
                            <div class="card-body">
                                <form class="formulario" name="formulario1"id="formulario" action="Controlador?accion=GuardarProducto" method="POST" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <!-- <div class="form-group">
                                                <label>Nombres:</label>
                                                <input type="text" name="txtNombre" class="form-control">
                                            </div> -->  
                                            <!-- NOMBRE -->
                                            <div class="formulario__grupo" id="grupo__nombre">
                                                <label for="usuario" class="formulario__label">Ingrese nombre</label>
                                                <div class="formulario__grupo-input">
                                                    <input type="text" class="formulario__input" name="txtNombre" id="txtNombre" placeholder="Nombre...">
                                                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                </div>
                                                <!--MENSAJE DE ERROR NOMBRE -->  
                                                <p class="formulario__input-error" style="color: black" >El nombre tiene que ser de 4 a 40 dígitos.</p>
                                            </div>
                                            <!--Descripcion 
                                            <div class="form-group">
                                                <label>Descripcion</label>
                                                <textarea name="txtDescripcion" class="form-control"></textarea>
                                            </div> 
---->  
                                            <div class="formulario__grupo" id="grupo__Descripcion">
                                                <label for="" class="formulario__label">Ingrese Descripcion</label>
                                                <div class="formulario__grupo-input">
                                                    <input type="text" class="formulario__input" name="txtDescripcion" id="txtDescripcion" placeholder="Nombre...">
                                                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                </div>
                                            <!--    --MENSAJE DE ERROR Descripcion -->  
                                                <p class="formulario__input-error" style="color: black" >La Descripcion tiene que ser de 4 a 400 dígitos.</p>
                                            </div>

                                            <div class="form-group">                            
                                                <input type="file" name="txtFoto" placeholder="sad">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">  
                                            <!--
                                            <div class="form-group">
                                                <label>Precio</label>
                                                <input type="text" step="0.01" id="precio" name="txtPrecio" class="form-control">
                                            </div>  --> 
                                             <div class="formulario__grupo" id="grupo__Precio">
                                                <label for="" class="formulario__label">Ingrese Precio</label>
                                                <div class="formulario__grupo-input">
                                                    <input type="text" class="formulario__input" name="txtPrecio" id="txtPrecio" placeholder="Precio...">
                                                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                </div>
                                            <!--    --MENSAJE DE ERROR Precio -->  
                                                <p class="formulario__input-error" style="color: black" >La Precio tiene que tener.</p>
                                            </div>
                                            
                                            <div class="form-group">
                                                <!-- <label>Stock</label>grupo__Stock
                                                <input type="number" name="txtStock" class="form-control">
                                                -->  
                                                  <div class="formulario__grupo" id="grupo__Stock">
                                                <label for="" class="formulario__label">Ingrese Stock</label>
                                                <div class="formulario__grupo-input">
                                                    <input type="text" class="formulario__input" name="txtStock" id="txtStock" placeholder="Stock...">
                                                    <i class="formulario__validacion-estado fas fa-times-circle"></i>
                                                </div>
                                            <!--    --MENSAJE DE ERROR Precio -->  
                                                <p class="formulario__input-error" style="color: black" >Solo numero enteros no puedes ingresar numeros.</p>
                                            </div>
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
                                        <div class="form-group">
                                            <button class="btn btn-outline-dark" name="accion" value="GuardarProducto">Guardar</button>
                                        </div>
                                    </div>

                                </form>
                            </div>               
                        </div>
                    </div>
                </div>
            </div>
        </form>
       
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
            <button type="button" class="btn btn-outline-dark" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="fas fa-notes-medical"></i> Nuevo Producto</button>
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
const formulario = document.getElementById('formulario');
const inputs = document.querySelectorAll('#formulario input');
const expresiones = {
	txtNombre: /^[a-zA-Z0-9\_\- ]{4,160}$/, 
	txtPrecio: /^[0-9]+(,[0-9]+)?$/, 
	txtDescripcion: /^[a-zA-Z0-9\_\- ]{4,160}$/,
	txtStock: /^\d+$/
}
const validarFormulario = (e) => {
		switch (e.target.name) {
		case "txtNombre":
                     if(expresiones.txtNombre.test(e.target.value)){
                            document.getElementById('grupo__nombre').classList.remove('formulario__grupo-incorrecto');
                             document.getElementById('grupo__nombre').classList.add('formulario__grupo-correcto');
                             document.querySelector('#grupo__nombre i').classList.add('fa-check-circle');
                             document.querySelector('#grupo__nombre i').classList.remove('fa-times-circle');
                              document.querySelector('#grupo__nombre .formulario__input-error').classList.remove('formulario__input-error-activo');
                        }else {
                            document.getElementById('grupo__nombre').classList.add('formulario__grupo-incorrecto');
                            document.getElementById('grupo__nombre').classList.remove('formulario__grupo-correcto');
                            document.querySelector('#grupo__nombre i').classList.remove('fa-check-circle');
                             document.querySelector('#grupo__nombre i').classList.add('fa-times-circle');
                             document.querySelector('#grupo__nombre .formulario__input-error').classList.add('formulario__input-error-activo');
                        }
		break;
		case "txtPrecio":
			  if(expresiones.txtPrecio.test(e.target.value)){
                            document.getElementById('grupo__Precio').classList.remove('formulario__grupo-incorrecto');
                             document.getElementById('grupo__Precio').classList.add('formulario__grupo-correcto');
                               document.querySelector('#grupo__Precio i').classList.add('fa-check-circle');
                             document.querySelector('#grupo__Precio i').classList.remove('fa-times-circle');
                             document.querySelector('#grupo__Precio .formulario__input-error').classList.remove('formulario__input-error-activo');
                        }else {
                            document.getElementById('grupo__Precio').classList.add('formulario__grupo-incorrecto');
                            document.getElementById('grupo__Precio').classList.remove('formulario__grupo-correcto');
                           document.querySelector('#grupo__Precio i').classList.remove('fa-check-circle');
                             document.querySelector('#grupo__Precio i').classList.add('fa-times-circle');
                             document.querySelector('#grupo__Precio .formulario__input-error').classList.add('formulario__input-error-activo');
                        }
		break;
		case "txtDescripcion":
			  if(expresiones.txtDescripcion.test(e.target.value)){
                            document.getElementById('grupo__Descripcion').classList.remove('formulario__grupo-incorrecto');
                             document.getElementById('grupo__Descripcion').classList.add('formulario__grupo-correcto');
                               document.querySelector('#grupo__Descripcion i').classList.add('fa-check-circle');
                             document.querySelector('#grupo__Descripcion i').classList.remove('fa-times-circle');
                             document.querySelector('#grupo__Descripcion .formulario__input-error').classList.remove('formulario__input-error-activo');
                        }else {
                            document.getElementById('grupo__Descripcion').classList.add('formulario__grupo-incorrecto');
                            document.getElementById('grupo__Descripcion').classList.remove('formulario__grupo-correcto');
                           document.querySelector('#grupo__Descripcion i').classList.remove('fa-check-circle');
                             document.querySelector('#grupo__Descripcion i').classList.add('fa-times-circle');
                             document.querySelector('#grupo__Descripcion .formulario__input-error').classList.add('formulario__input-error-activo');
                        }
		break;
		case "txtStock":
			if(expresiones.txtStock.test(e.target.value)){
                            document.getElementById('grupo__Stock').classList.remove('formulario__grupo-incorrecto');
                             document.getElementById('grupo__Stock').classList.add('formulario__grupo-correcto');
                             document.querySelector('#grupo__Stock i').classList.add('fa-check-circle');
                             document.querySelector('#grupo__Stock i').classList.remove('fa-times-circle');;
                               document.querySelector('#grupo__Stock .formulario__input-error').classList.remove('formulario__input-error-activo');
                        }else {
                            document.getElementById('grupo__Stock').classList.add('formulario__grupo-incorrecto');
                            document.getElementById('grupo__Stock').classList.remove('formulario__grupo-correcto');
                            document.querySelector('#grupo__Stock i').classList.remove('fa-check-circle');
                             document.querySelector('#grupo__Stock i').classList.add('fa-times-circle');
                             document.querySelector('#grupo__Stock .formulario__input-error').classList.add('formulario__input-error-activo');
                        }
		break;
		
	}
}
inputs.forEach((input) => {
	input.addEventListener('keyup', validarFormulario);
	input.addEventListener('blur', validarFormulario);
});
        </script>
        <!--ERROR VALIDACIOONES-->
        <style>
            * {
	box-sizing: border-box;
}
main {
	max-width: 800px;
	width: 90%;
	margin: auto;
	padding: 40px;
}
.formulario {
	display: grid;
	grid-template-columns: 1fr 1fr;
	gap: 20px;
}
.formulario__label {
	display: block;
	font-weight: 700;
	padding: 10px;
	cursor: pointer;
}
.formulario__grupo-input {
	position: relative;
}
.formulario__input {
	width: 100%;
	background: #fff;
	border: 3px solid transparent;
	border-radius: 3px;
	height: 45px;
	line-height: 45px;
	padding: 0 40px 0 10px;
	transition: .3s ease all;
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
}
        </style>
    </body>
</html>