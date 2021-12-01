<%-- 
    Document   : Report
    Created on : 30-nov-2021, 17:11:03
    Author     : josue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link href="http://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>        
        <title>Reportes</title>
    </head>
    <body>
           <div class="navbar" style=" display: flex; align-items: center; background-color: black">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"><i class="fas fa-bars" style="color:#fff; width: 100%;"></i></span>
                </button>
                <a class="navbar-brand" style="color: white" href="#"><i></i>ZyKe Store</a>

                <div style="flex: 1; text-align: right;" id="navbarTogglerDemo03">
                    <ul style="display: inline-block; list-style-type: none;">         
                        <li style=" display: inline-block; margin-right: 15px; ">
                            <a class="nav-link"style="text-decoration: none; color: #999999;"href="../index.jsp"><i class="fas fa-home" style="color: white"></i> Home</a>
                        </li>                  
                    </ul>  

                </div>
            </div> 
        <form name="Reportes" action="/Progra4/Pdf">
            <br>
         <select name="select" style="margin-left: 55px">
             <option value="0">Selecciones un opcion</option>
             <option value="1">Reportes de clientes</option>
             <option value="2" selected>Reportes de Ventas</option>
             <option value="0">Selecciones un opcion</option>
         </select>
         <input class="btn btn-outline-warning" type="submit" value="VisualisarPDF" name="btnVer"> 
        </form>
    </body>
</html>
