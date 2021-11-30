<%@page import="com.sinfloo.modelo.Carrito"%>
<%@page import="com.sinfloo.modelo.Producto"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>     
        <link href="https://fonts.googleapis.com/css2?family=Merriweather+Sans:wght@300&display=swap" rel="stylesheet">
        <link rel="icon" href="img/logorack.png">
        <style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;  
}
            nav ul li a{
                text-decoration: none;
                color: #111 !important;
                display: inline-block !important;
                margin-right: 30px !important;
                font-size:10px !important;
                color: #111 !important;
            }

            body{
                background-color: #fff  !important;
                font-family: 'Merriweather Sans', sans-serif !important;
                color: #111 !important;
            }
            .container-1 .icon{
                font-size:10px;
                font-family:Verdana,Helvetica;
                font-weight:bold;
                color:111;
                border:0px;
                width:80px;
                height:30px;
                margin-right: 15px;
                background: rgba(255, 255, 255,0.04);
                -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;
            }


            .fila{
                display: flex;
                align-items: center;
                flex-wrap: wrap;
                justify-content: space-around;
            }

            .col-2{
                flex-basis: 50%;
                min-width: 300px;
            }
            .col-2 img{
                max-width: 300%;
                padding: 50px ;
                margin-left: -300px;

            }

            .col-2 h1{
                font-size: 50px ;
                line-height: 50px;
                margin: 25px 0;
                width: 300%;
            }
            .col-2 p{
                font-size: 20px ;
                line-height: 20px;
                margin: 25px 0;
                width: 250%;
            }

            .cabezera{
                background: radial-gradient(#fff,#ffd6d6);
            }
            .cabezera .fila{
                margin-top: 65px ;
                padding-bottom: 55px;
            }
            .btn{
                display: inline-block;
                background: #ff523b ;
                color: #fff; 
                padding: 8px 30px;
                margin: 30px 0;
                border-radius: 30px;
                transition: background 0.5s;
            }
            .btn:hover{
                background-color: #2C2C2C; 
                color:white;
            }
            nav ul li a:hover{
                color: #FF8F81;
            }
            .titulo{
                text-align: center;
                margin: 0 auto 80px;
                position: relative;
                line-height: 60px;
                color: #999999;
            }

            .titulo::after{
                content: '';
                background-color: #00A807;
                width: 80px;
                height: 5px;
                border-radius: 5px;
                position: absolute;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
            }
            .categorias{
                margin: auto;
                margin-top: 40px;
                max-width: 1080px;
                padding: 10px;
            }

            .col-3{
                margin-top: 30px;
                flex-basis: 30%;
                min-width: 250px;
                margin-bottom:30px;
            }
            .col-3 img{
                width: 135%;
              
                box-shadow: 0px 0px 8px #111;
            }


            .contenedor-pequeno{
                max-width: 1080px;
                margin: auto;
                padding-left: 25px ;
                padding-right: 25px;
            }
            //Producto Carta 

            .col-4{
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 70vh;
                flex-basis: 25%;
                padding: 10px;
                min-width: 200px;
                margin-bottom: 50px;
                position: relative;
                
            }
            .col-4 .card{
                box-shadow: 0px 0px 8px #111;
                position: relative;
                width: 320px;
                height: 600px;
                background: radial-gradient(#1F1F1F,#111);
                border-radius: 20px;
                overflow: hidden;
                margin-bottom: 60px;
                
            }
            .col-4 .card:before{

                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: #FF7058;
                clip-path: circle(200px at 80% 20%);
                transition: .5s ease-in-out;
            }
            .col-4 .card:hover:before{

                clip-path: circle(350px at 80% -20%);
            }
            .col-4 .card::after{
                content: 'ZyKe';
                position: absolute;
                top: 40%;
                left: -10%;
                font-size: 8em;
                font-weight: 800;
                font-style: italic;
                color: rgba(255, 255, 255,0.05);

            }

            .col-4 .card .img-box{
                position: absolute;
                top: 38%;
                transform: translateY(-50%);
                z-index: 12;
                width: 100%;
                height: 220px;
                transition: .5s; 
                color:#fff;
            }

            .col-4 .card:hover .img-box{
                color:#fff;
                top: 0%;
                transform: translateY(0%);
            }
            .col-4 .card .img-box img{
                
                position: absolute;
                top: 75%;
                left: 52%;
                transform: translate(-50%,-50%);
                width: 300px;
            }
            .col-4 .card .contenedor-bx{
                 color:#fff;
                position: absolute;
                bottom: 40px;
                width: 100%;
                height: 50px;
                text-align: center;
                transition: 1s;
                z-index: 10;
            }
            .col-4 .card:hover .contenedor-bx{
                height: 220px; 
            }

            .col-4 .card .contenedor-bx h4{
                color:#fff;
                position: relative;
                font-weight: 600;
                letter-spacing: 1px;

            }
            .col-4 .card .contenedor-bx .tipo,.col-4 .card .contenedor-bx .tamaño{
                color:#fff;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 8px 20px;
                transition: 0.5s;
                opacity: 0;
                visibility: hidden;
            }
            .col-4 .card:hover .contenedor-bx .tipo{
                opacity: 1;
                visibility: visible;
                transition-delay:0.5s ;
            }
            .col-4 .card:hover .contenedor-bx .tamaño{
                opacity: 1;
                visibility: visible;
                transition-delay:0.6s ;
            }
            .col-4 .card .contenedor-bx .tipo h5,.col-4 .card .contenedor-bx .tamaño h5{ 
                 color:#fff;

                font-weight: 300;
                font-size: 14px;
                text-transform: uppercase;
                letter-spacing: 2px;
                margin-right: 10px;
                margin-bottom: 20px;
            }
            .col-4 .card .contenedor-bx a{
                display: inline-block;
                padding: 10px 20px;
                background: #FF5032;
                border-radius: 4px;
                margin-top: 3px;
                text-decoration: none;
                font-weight: 600;
                color: #fff;
                opacity: 0;
                border:none;
                transform: translateY(50px);
                transition: 0.5s;
                 margin-bottom: 5px;
            }
            .col-4 .card:hover .contenedor-bx a{
                opacity: 1;
                transform: translateY(-10px);
                transition-delay: 0.75s;
            }
            .col-4 .card .contenedor-bx button{
                margin-bottom: 5px;
                display: inline-block;
                border:none;
                padding: 10px 20px;
                background: #FF5032;
                border-radius: 4px;
                margin-top: 3px;
                text-decoration: none;
                font-weight: 600;
                color: #fff;
                opacity: 0;
                transform: translateY(50px);
                transition: 0.5s;
            }
            .col-4 .card:hover .contenedor-bx button{
                opacity: 1;
                transform: translateY(-10px);
                transition-delay: 0.75s;
            }

            .col-4 img{
                width: 100%;
            }
        </style>
        <title>Zyke Store</title>
    </head>
    <body>
        <div class="cabezera">
            <div class="navbar" style="font-family: 'Merriweather Sans', sans-serif;height: 90px; display: flex; align-items: center; font-size:110%; background: rgba(20, 20, 20,0.1); margin-top: -10px;">

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"><i class="fas fa-bars" style="color:#111; width: 100%;"></i></span>
                </button>  
                <div class="nav-item dropdown" > 
                    <a class="navbar-brand" style="color: #111 ;font-size:120% " href="#" data-toggle="dropdown"><img src="img/logo1.png" width="70" height="70"> ZyKe Store</a>
                    <div class="dropdown-menu nav-item"  style="background: rgba(255, 255, 255,0.6);">  
                        <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                            <a class="nav-link dropdown-item"  style="color: #111;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";'  href="./Controlador?accion=Usuarios"><i class="fa fa-angle-right"></i> Usuarios</a>

                            <c:if test="${clientelogueado.idrol==1}">
                                <a class="nav-link dropdown-item"  style="color: #111;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";' href="./Controlador?accion=Productos"><i class="fa fa-angle-right"></i> Productos</a>                                                                         
                            </c:if>
                            <c:if test="${clientelogueado.idrol==1}">
                                <a class="nav-link dropdown-item" style="color: #111;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";' href="./Controlador?accion=Reportes"><i class="fa fa-angle-right"></i> Reportes</a>                                                                         
                            </c:if>
                        </c:if>
                    </div>
                </div>

                <div style="flex: 1; text-align: right; margin-bottom: -20px" id="navbarTogglerDemo03">
                    <ul style="display: inline-block; list-style-type: none;">
                        <li style=" display: inline-block; margin-right: 30px; ">
                            <a style="text-decoration: none; color: #111; margin-left: -10px;margin-right: -30px;  " class="nav-link" href="./Controlador?accion=home">Home<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item" style=" display: inline-block; margin-right: -1px;  ">
                            <a class="nav-link"style="text-decoration: none; color: #111;" href="./Controlador?accion=Oferta"></i> Ofertas del Dia</a>
                        </li>                   
                        <li class="nav-item" style=" display: inline-block; margin-right: 15px;  ">
                            <a class="nav-link"style="text-decoration: none; color: #111;" href="./Controlador?accion=carrito"> Carrito (<label style=" font-weight: bold; color:#FF523B">${cont}</label>)</a>
                        </li>                               
                    </ul>   
                    <ul style="display: inline-block; list-style-type: none;">
                        <form action="Controlador" class="container-1" style=" width: 300px; vertical-align: middle; white-space: nowrap; position: relative;">
                            <button class="icon" style="font-size: 80%; background: rgba(255, 255, 255,0.3); " type="submit" name="accion" value="BuscarProducto"><i class="fas fa-search" style="color:#111; "></i></button>
                            <input placeholder="Buscar" class="" style="width: 200px;height: 40px;margin-top: -3px; background: rgba(255, 255, 255,0.3); border: none; font-size: 12pt; float: left; color: #111; padding-left: 45px; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;" name="txtBuscar">
                        </form>  

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
                        <div class="dropdown-menu text-center dropdown-menu-right" style="background: rgba(255, 255, 255,0.6); margin-top: -1px">
                            <c:if test="${clientelogueado.id==null||clientelogueado.id==0}">
                                <a style="color: black;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";' class="dropdown-item" href="#"><img src="img/logo02.png" width="60" height="60"/></a>                        
                                <a style="color:black;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";' class="dropdown-item" onclick="CargarModalLogueo()">Iniciar Sesion</a> 
                            </c:if>                                              
                            <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                                <a style="color: black;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";' class="dropdown-item" href="#"><img src="${clientelogueado.foto}" width="60" height="60"/></a>                       
                                <a style="color: black;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";' class="dropdown-item" onclick="CargarModalLogueo()">${clientelogueado.email}</a>  
                            </c:if>                      

                            <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                                <a style="color: black;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";'class="dropdown-item" href="./Controlador?accion=MisCompras">Mis Compras</a> 
                            </c:if>  
                            <c:if test="${clientelogueado.id==null||clientelogueado.id==0}">                            
                                <a style="color: black;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";' class="dropdown-item" onclick="CargarModalLogueo()">Mis Compras</a> 
                            </c:if>   

                            <a  style="color: black; font-family: 'Merriweather Sans', sans-serif !important;" onmouseover='this.style.color = "black";'  onmouseout='this.style.color = "black";' class="dropdown-item" href="./Controlador?accion=Salir"> <i class="fas fa-sign-out-alt"> Salir</i></a>                        
                        </div>
                    </ul>     
                </div>
            </div>
            <div class="fila" style="margin-left:-100px; ">
                <div class="col-2" style="">
                    <h1 style="font-weight: bold; font-size: 70px">Siente Un Verdadero <br> <br> Gamer!</h1>
                    <p style=" font-size: 20px"> Todos Nuestros Productos Van 100% Enfocados Para Los Verdaderos Gamers,
                        Esto Es Para Consentir A Los Mejores Gamers Del Pais. Se Parte De Ellos.</p>
                    <a href="" class="btn">Explora Ahora &#10140;</a>
                </div>
                <div class="col-2">
                    <img src="img/gamer2.png" >
                </div>
            </div>
        </div>
        <div class="categorias">
            <div class="contenedor-pequeno" >

                <div class="fila">
                    <div class="col-3">
                        <img src="img/category-1.png" >
                    </div>
                    <div class="col-3">
                        <img src="img/category-2.png" >
                    </div>
                    <div class="col-3">
                        <img src="img/category-3.png" >
                    </div>
                </div>

            </div>
        </div>
        <div class="container mt-4">
            <div class="row">  

                <c:forEach var="p" items="${productos}">
                    <div class="col-4" style="display: flex;
                justify-content: center;
                align-items: center;
                min-height: 70vh;
                flex-basis: 25%;
                padding: 10px;
                min-width: 285px;
                position: relative;
                ">

                        <div class="card">
                            <div class="img-box">

                                <img class="Razer" src="${p.getImagen()}">
                            </div>
                            <div class="contenedor-bx">
                                <h4>${p.getNombres()}</h4>
                                <div class="tipo">
                                    <span>${p.getDescripcion()}</span>


                                </div>
                                <div class="tamaño">
                                    <c:if test="${p.getStock()==0}"> 
                                        <img src="img/agotado.png" style="width: 55%;"> 
                                    </c:if>

                                    <c:if test="${p.getStock()!=0}"> 
                                        <h5>Precio:<span>$ ${p.getPrecio()}</span> </h5>
                                        <c:if test="${p.getEstado()=='20'}">
                                            <img src="img/20Off.png" style="width: 40%;"> 
                                        </c:if>
                                        <c:if test="${p.getEstado()=='30'}">
                                            <img src="img/30Off.png" style="width: 40%;"> 
                                        </c:if>                                                         
                                        <c:if test="${p.getEstado()=='40'}">
                                            <img src="img/40Off.png" style="width: 40%;"> 
                                        </c:if>                                                         
                                        <c:if test="${p.getEstado()=='50'}">
                                            <img src="img/50Off.png" style="width: 40%;"> 
                                        </c:if>                                                         
                                        <c:if test="${p.getEstado()=='60'}">
                                            <img src="img/60Off.png" style="width: 40%;"> 
                                        </c:if>                                                         
                                        <c:if test="${p.getEstado()=='70'}">
                                            <img src="img/70Off.png" style="width: 40%;"> 
                                        </c:if>  
                                    </c:if>
                                </div>

                                <div class=" col-sm-13 text-center">                                         
                                    <div class="modal fade" id="modalStock" tabindex="20000" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-sm" >
                                            <div class="modal-title">                                                   
                                                <div class="modal-body">
                                                    <img src="img/agotado.png" style="position: absolute; z-index: 30000;" >
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <c:if test="${p.getStock()!=0}"> 
                                        <c:if test="${clientelogueado.id==null||clientelogueado.id==0}"> 
                                            <button data-toggle="modal" onclick="CargarModalLogueo1()" data-target="#myModalLogueo1" class="btn btn2 btn-outline-primary">Agregar a Carrito<i class="fas fa-cart-plus"></i></button>
                                            <button data-toggle="modal" onclick="CargarModalLogueo1()" data-target="#myModalLogueo1" class="btn btn-danger">Comprar</button>
                                        </c:if>
                                        <c:if test="${clientelogueado.id!=null&&clientelogueado.id!=0}">
                                            <a href="Controlador?accion=AgregarCarrito&id=${p.getId()}" class="btn btn2 btn-outline-primary">Agregar a Carrito<i class="fas fa-cart-plus"></i></a>
                                            <a href="Controlador?accion=Comprar&id=${p.getId()}" class="btn btn-danger">Comprar</a>
                                        </c:if>
                                    </c:if>
                                </div> 
                            </div>
                        </div>
                    </div>

                </c:forEach>  
            </div>
        </div>       
        <!-- Modal1 Iniciar Session o Registrarse -->
        <div class="modal fade" id="myModalLogueo1" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="container col-lg-9">                   
                    <div class="modal-content" id="contenido1">                   
                        <!--Aqui el Contenido de Login y Registro-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Iniciar Session o Registrarse -->
        <div class="modal fade" id="myModalLogueo" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="container col-lg-9">                   
                    <div class="modal-content" id="contenido">                   
                        <!--Aqui el Contenido de Login y Registro-->
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/funcionregistro.js" type="text/javascript">

        </script>
        <script  type="text/javascript">
            function CargarModalLogueo() {
                //document.getElementById("contenido").innerHTML = "";
                $("#myModalLogueo").modal('show');
                $("#contenido").load("Controlador?accion=IniciarSession");
            }
        </script>
        <script  type="text/javascript">
            function CargarModalLogueo1() {
                //document.getElementById("contenido").innerHTML = "";
                $("#myModalLogueo1").modal('show');
                $("#contenido1").load("Controlador?accion=IniciarSession");
            }
        </script>
        <script  type="text/javascript">

        </script>
    </body>
</html>
