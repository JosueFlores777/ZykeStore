<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito de Compras</title>
        <style>
            @media print{
                .btn{
                    display: none;
                }
            }
            @import url('https://fonts.googleapis.com/css2?family=Rajdhani:wght@600&display=swap');
            body {
                background: radial-gradient(#fff,#ffd6d6);
            }

            .page {
                background: #ffffff;
                display: block;
                margin: 0 auto;
                position: relative;
                box-shadow: 0 0 0.5cm rgba(0, 0, 0, 0.5);
            }

            .page[size="A4"] {
                width: 21cm;
                height: 29.7cm;
                overflow: hidden;
            }

            .bb {
                border-bottom: 3px solid #ccc;
            }

            /* Top Section */
            .top-content {
                padding-bottom: 15px;
            }

            .logo img {
                height: 60px;
            }

            .top-left p {
                margin: 0;
            }

            .top-left .graphic-path {
                height: 40px;
                position: relative;
            }

            .top-left .graphic-path::before {
                content: "";
                height: 20px;
                background-color: #615c60;
                position: absolute;
                left: 15px;
                right: 0;
                top: -15px;
                z-index: 2;
            }

            .top-left .graphic-path::after {
                content: "";
                height: 22px;
                width: 17px;
                background: #000000;
                position: absolute;
                top: -13px;
                left: 6px;
                transform: rotate(45deg);
            }

            .top-left .graphic-path p {
                color: #ffffff;
                height: 40px;
                left: 0;
                right: -100px;
                text-transform: uppercase;
                background-color: #FF7058;
                font: 26px;
                z-index: 3;
                position: absolute;
                padding-left: 10px;
            }

            /* User Store Section */
            .store-user {
                padding-bottom: 25px;
            }

            .store-user p {
                margin: 0;
                font-weight: 600;
            }

            .store-user .address {
                font-weight: 400;
            }

            .store-user h2 {
                color: #FF7058;
                font-family: 'Rajdhani', sans-serif;
            }

            .extra-info p span {
                font-weight: 400;
            }

            /* Product Section */
            thead {
                color: #ffffff;
                background: #FF7058;
            }

            .table td,
            .table th {
                text-align: center;
                vertical-align: middle;
            }

            tr th:first-child,
            tr td:first-child {
                text-align: left;
            }

            .media img {
                height: 60px;
                width: 60px;
            }

            .media p {
                font-weight: 400;
                margin: 0;
            }

            .media p.title {
                font-weight: 600;
            }

            /* Balance Info Section */
            .balance-info .table td,
            .balance-info .table th {
                padding: 0;
                border: 0;
            }

            .balance-info tr td:first-child {
                font-weight: 600;
            }

            tfoot {
                border-top: 2px solid #ccc;
            }

            tfoot td {
                font-weight: 600;
            }

            /* Cart BG */
            .cart-bg {
                height: 250px;
                bottom: 32px;
                left: -40px;
                opacity: 0.3;
                position: absolute;
            }

            /* Footer Section */
            footer {
                text-align: center;
                position: absolute;
                bottom: 30px;
                left: 75px;
            }

            footer hr {
                margin-bottom: -22px;
                border-top: 3px solid #ccc;
            }

            footer a {
                color: #FF7058;
            }

            footer p {
                padding: 6px;
                border: 3px solid #ccc;
                background-color: #ffffff;
                display: inline-block;
            }




        </style>
    </head>
    <body>
        <div class="my-5 page" size="A4">
            <div class="p-5">
                <section class="top-content bb d-flex justify-content-between">
                    <div class="logo">
                        <img src="img/logo1.png" alt="" class="img-fluid">
                    </div>
                    <div class="top-left">
                        <div class="graphic-path">
                            <p>ZyKe Store</p>
                        </div>
                        <div class="position-relative">
                            <p>ZyKe Store No.<span>XXXX</span></p>
                        </div>
                    </div>
                </section>
                <section class="product-area mt-4">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <td>Producto</td>
                                <td>Precio</td>
                                <td>Cantidad</td>
                                <td>Descuento</td>
                                <td>Sub-Total</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="p" items="${myDetalle}" varStatus="index">

                                <tr>
                                    <td>
                                        <div class="media">
                                            <img class="mr-3 img-fluid" src="${p[2]}" alt="${index.index+1}">
                                            <div class="media-body">
                                                <p class="mt-0 title">${p[1]}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>$${p[3]}</td>
                                    <td>${p[4]}</td>
                                    <td>$${p[7]}</td>
                                    <td>$${p[5]}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </section>

                <section class="balance-info">
                    <div class="row">
                        <div class="col-8">
                            <p class="m-0 font-weight-bold"> Nota: </p>
                            <p>La garantia solo cubre si el producto tiene una falla de fabrica</p>
                        </div>
                        <div class="col-4">
                            <table class="table border-0 table-hover">
                                <tr>
                                    <td>Sub Total:</td>
                                    <td>$${datos[1]}</td>
                                </tr>
                                <tr>
                                    <td>IVA:</td>
                                    <td>$${datos[3]}</td>
                                </tr>
                                <tr>
                                    <td>Descuento:</td>
                                    <td>$${datos[0]}</td>
                                </tr>
                                <tfoot>
                                    <tr>
                                        <td>Total:</td>
                                        <td>$${datos[2]}</td>
                                    </tr>
                                </tfoot>
                            </table>

                            <!-- Signature -->
                            <div class="col-12">
                                <img src="img/signature.png" class="img-fluid" alt="">
                                <p class="text-center m-0"> Alex Palma (Director)</p>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Cart BG -->
                <img src="img/cart.jpg" class="img-fluid cart-bg" alt="">

                <footer>
                    <hr>
                    <p class="m-0 text-center">
                        Puedes Visitar Nuestro Instragram - <a href="https://www.instagram.com/teamzyke/">@ZyKeStore</a>
                    </p>
                    <div class="social pt-3">
                        <span class="pr-2">
                            <i class="fas fa-mobile-alt"></i>
                            <span>6030-8381</span>
                        </span>
                        <span class="pr-2">
                            <i class="fas fa-envelope"></i>
                            <span>josue@gmail.com</span>
                        </span>
                        <span class="pr-2">
                            <i class="fab fa-facebook-f"></i>
                            <span>/Billy.7264</span>
                        </span>
                        <span class="pr-2">
                            <i class="fab fa-youtube"></i>
                            <span>/Fernanfloo</span>
                        </span>
                        <span class="pr-2">
                            <i class="fab fa-github"></i>
                            <span>/AlexPalma</span>
                        </span>
                    </div>
                </footer>
            </div>
        </div>

        <div class="container mt-4">
            <div class="col-lg-8">
                <div class="form-group ml-auto">
                    <a href="Controlador?accion=home" class="btn btn-outline-dark" style="text-align: center; margin: 1rem; padding: 1rem;" > <i class="fa fa-external-link-alt"></i> Terminar Proceso</a>
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
