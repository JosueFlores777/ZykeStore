$(document).ready(function () {
    function CargarModalLogueo() {
        document.getElementById("contenido").innerHTML = "";
        $("#myModalLogueo").modal('show');
        $("#contenido").load("Controlador?accion=IniciarSession");
    }
});
