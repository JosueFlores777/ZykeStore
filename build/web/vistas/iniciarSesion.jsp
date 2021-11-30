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
    <style>


        body {
            height: 100vh;
            font-family: 'Poppins', sans-serif;

        }

        .login-container {
            height: 33.75em;
            width: 60em;
            margin: 6em -24em;
            border-radius: 10px;
            display: flex;
            justify-content: space-between;
            overflow: hidden;
            background: radial-gradient(#fff,#ffd6d6);
        }

        .login-info-container {
            width: 50%;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            padding-top: 0.5rem;
            background-color:#fff;
            position: relative;
            z-index: 3;
        }

        .image-container-login {
            padding: 1rem;
            width: 3.5%;
            box-sizing: border-box;
            display: flex;
            position: relative;
            z-index: 1;
            top: 0;
            left: -4.2rem;

        }
        .image-container-login-2 {

            width: 3.5%;

            display: flex;
            position: relative;
            z-index: 1;
            top: 0;
            left: -4.2rem;

        }
        .title-login {
            text-transform: capitalize;
            font-size: 2.25rem;
            font-weight: 600;
            letter-spacing: 1px;
            color: #111;
        }

        .social-login {
            width: 100%;
            display: flex;
            justify-content: space-evenly;
            cursor: pointer;

        }

        .social-login-element {
            width: 12.5rem;
            height: 3.75rem;
            font-size: 1.2rem;
            font-weight: 700;
            letter-spacing: 0.5px;
            border-radius: 5px;
            border: 1px solid #FF5032;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .social-login-element img {
            width: 1.875rem;
            height: 1.875rem;
            position: relative;
            top: 0;
            left: -0.625rem;
        }

        .social-login-element:hover {
            background-color: #fff;
        }

        .login-info-container-login  p {
            font-size: 1.25em;
            margin-top: 1.5em;
            background-color: #111;
        }

        .inputs-container-login {
            height: 55%;
            width: 85%;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            align-items: center;
        }

        .input-login, .btn-login {
            width: 90%;
            height: 3.125rem;
            font-size: 1em;
        }

        .input-login {
            padding-left: 20px;
            border: none;
            border-radius: 5px;
            font-weight: 600;
            letter-spacing: 1px;
            box-sizing: border-box;
            background: rgba(233, 215, 215,0.4);
        }

        .input-login:hover {
            border: 2px solid #FF5032;
        }

        .btn-login {
            width: 80%;
            letter-spacing: 1px;
            text-transform: uppercase;
            color: white;
            border: none;
            border-radius: 5px;
            background-color: #FF5032;
            cursor: pointer;

        }

        .inputs-container-login p {
            margin: 0;
        }

        .span-login {
            color: #FF8F81;
            font-weight: 600;
            cursor: pointer;
        }
        .modal-content{
            background-color: rgba(255, 255, 255,0.001) !important;
            border: none;
            width: 1px;
        }

    </style>
    <body >
        
        <div class="login-container">
            <div class="image-container-login-2">
                <img src="img/login2.png" style="">
            </div>
            <!-- Iniciar Session -->
            <div class="login-info-container fade show active" id="pills-iniciar" role="tabpanel">
                <h1 class="title-login" style="margin-top:3rem;margin-bottom:4rem;">Iniciar Sesion</h1>
                <form class="inputs-container-login" action="Controlador">
                    <input class="input-login"  type="text" name="txtemail" required="" class="form-control" placeholder="Correo">
                    <input class="input-login" type="text" placeholder="Contraseña" type="password" name="txtpass" required=""  class="form-control">

                    <button class="btn-login" type="submit" name="accion" value="Validar" >Iniciar Sesion</button>
                    <p>¿No tienes cuenta? <a class="span-login" data-toggle="pill" href="#pills-registrar">Registrate</a></p>
                </form>
            </div>
            <div class="image-container-login">
                <img src="img/login1.png" style="">
            </div>
            <!-- Registrarse -->
            <div class="login-info-container fade" id="pills-registrar" role="tabpanel">
                <h1 class="title-login">Registrarse</h1>
                <form action="Controlador?accion=Registrarse" method="POST" enctype="multipart/form-data">
                    <input class="input-login" type="number" id="dni" name="txtDni" class="form-control" placeholder="Dui">
                    <input class="input-login" type="text" name="txtNom" class="form-control" placeholder="Nombre">
                    <input class="input-login" type="text" name="txtDir" class="form-control" placeholder="Dirrecion">
                    <input class="input-login" type="email" name="txtCorreo" class="form-control" placeholder="Correo" >
                    <input class="input-login" type="password" name="txtPass" class="form-control" placeholder="Contraseña">
                    <input class="input-login" type="file" name="file">
                    <button class="btn-login" type="submit" name="accion" value="Registrarse">Registrarse</button>
                    <p>¿Ya tienes cuenta? <a class="span-login" data-toggle="pill" href="#pills-iniciar">Iniciar Sesion</a></p>
                    </p>
                </form>
            </div>
            
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="http://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">

        </script>
        <script>
            $(document).ready(function () {
                var input = document.getElementById('dni');
                input.addEventListener('input', function () {
                    if (this.value.length > 8)
                        this.value = this.value.slice(0, 8);
                });
            });
        </script>
    </body>

</html>
