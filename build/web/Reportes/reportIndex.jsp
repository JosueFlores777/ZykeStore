<%-- 
    Document   : reportIndex
    Created on : 21-nov-2021, 18:18:57
    Author     : josue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form name="Reportes" action="/ZykeStore/Pdf">
               
                        <input type="text" name="txtBuscar" class="form-control"  placeholder="Buscar">
                         <input class="btn btn-outline-warning" type="submit" value="Visualisar PDF" name="btnVer"> 
                 
                </form>
    </body>
</html>
