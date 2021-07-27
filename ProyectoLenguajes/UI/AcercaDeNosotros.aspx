<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AcercaDeNosotros.aspx.cs" Inherits="ModuloAdministracion.AcercaDeNosotros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title>Acerca de</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">

    <link href="CSS/Administracion2.css" rel="stylesheet" />

</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <a class="navbar-brand" href="/PaginaPrincipal.aspx">
            <img src="/Imagenes/LogoPagWeb2.png" width="150" height="50" alt="" />
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link" href="DatosPersonales.aspx">Datos Personales</a>
                <a class="nav-item nav-link" href="Pedidos.aspx">Carrito pedidos</a>
                <a class="nav-item nav-link" href="HistorialPedidos.aspx">Historial pedidos</a>
                <a class="nav-item nav-link active" href="AcercaDeNosotros.aspx">Acerca de nosotros</a>
            </div>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a href="InicioSesion.aspx" class="btn btn-dark navbar-btn">
                        <img src="/Imagenes/Logoff.png" width="20" height="18" alt="" />&nbsp;&nbsp;&nbsp;Cerrar sesion</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="row g-4" align="center">
            <div class="col-md-12 col-lg-12" align="center">
                <br />
                <h2 class="mb-4" style="text-align: center; color: white; font-family: 'Kaushan Script', cursive;">Sobre los Creadores</h2>
                <br />
                <form id="form1" runat="server" class="card" style="width: 27rem;">
                    <div class="row g-2">
                        <br />
                        <h3 class="mb-4" style="text-align: center; color: black;">Esto es el proyecto final para el curso LENGUAJES PARA APLICACIONES COMERCIALES</h3>
                        <br />
                        <h4 class="mb-4" style="text-align: center;">Elaborado por: </h4>
                        <div class="col-sm-6">
                            <img src="/Imagenes/Miguel.jpg" width="150" height="100" />
                        </div>
                        <div class="col-sm-6">
                            <h5 class="mb-4" style="text-align: left; font-family: 'Kaushan Script', cursive;">Miguel Egoavil Mathison</h5>
                        </div>
                        <br />

                        <div class="col-sm-6">
                            <img src="/Imagenes/Her.jfif" width="150" height="120" />
                        </div>
                        <div class="col-md-6">
                            <h5 class="mb-4" style="text-align: left; font-family: 'Kaushan Script', cursive;">Hernaldo Valerio Pineda</h5>
                        </div>
                        <br />
                        <div class="col-sm-6">
                            <img src="/Imagenes/Hansy.jfif" width="150" height="120" />
                        </div>
                        <div class="col-sm-6">
                            <h5 class="mb-4" style="text-align: left; font-family: 'Kaushan Script', cursive;">Hansy Gonzalez Carmona </h5>
                        </div>
                        <br />
                        <div class="col-sm-6">
                            <img src="/Imagenes/Sean.jfif" width="150" height="120" />
                        </div>
                        <div class="col-sm-6">
                            <h5 class="mb-4" style="text-align: left; font-family: 'Kaushan Script', cursive;">Sean Campos Siles</h5>
                        </div>
                        <br />
                        <br />
                        <h5 class="mb-4" style="text-align: center;">Provecho !!!</h5>

                    </div>

                </form>
                <br />
                <br />
            </div>
            <br />
            <br />
        </div>
    </div>
</body>
</html>
