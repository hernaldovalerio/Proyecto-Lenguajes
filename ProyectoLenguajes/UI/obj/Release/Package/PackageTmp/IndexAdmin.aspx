<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexAdmin.aspx.cs" Inherits="ModuloAdministracion.IndexAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <link href="CSS/Administracion2.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <a class="navbar-brand" href="#">&nbsp;&nbsp;<img src="/Imagenes/LogoPagWeb2.png" width="150" height="50" alt="" />
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon active"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link" href="AdministradorUsuarios.aspx">Usuarios</a>
                <a class="nav-item nav-link" href="AdministrarClientes.aspx">Clientes</a>
                <a class="nav-item nav-link" href="AdministradorPedido.aspx">Pedidos</a>
                <a class="nav-item nav-link" href="AdministradorEstados.aspx">Estados</a>
                <a class="nav-item nav-link" href="MantenimientoPlatillos.aspx">Platos</a>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row g-4">
            <div class="col-md-12 col-lg-12">
                <br />
                <br />
                <br />
                <h1 class="mb-3" style="text-align: center; color: white">¡Bienvenido al modulo de administracion ADMIN!</h1>
                <br />
                <form id="form1" runat="server" class="card">
                    <div class="row g-2">
                        
                        <br />
                        <h4 class="mb-3" style="text-align: center; color: black">Aqui podras realizar diferentes gestiones relacionadas a los usuarios, pedidos y platos, etc.</h4>
                        <h4 class="mb-3" style="text-align: center; color: black">¡Todo lo relacionado al restaurante Egoavil's!</h4>
                        <h4 class="mb-3" style="text-align: center; color: black">Para navegar entre las diferentes opciones, use la barra de navegación superior</h4>
                    </div>
                </form>

            </div>
        </div>
    </div>
    <div>
    </div>

</body>
</html>
