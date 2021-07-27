<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministrarClientes.aspx.cs" Inherits="ModuloAdministracion.AdministrarClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />



    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="/CSS/Administracion2.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
</head>
<body>

    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <a class="navbar-brand" href="/IndexAdmin.aspx">&nbsp;&nbsp;<img src="/Imagenes/LogoPagWeb2.png" width="150" height="50" alt="" />
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link" href="AdministradorUsuarios.aspx">Usuarios</a>
                <a class="nav-item nav-link active" href="AdministrarClientes.aspx">Clientes</a>
                <a class="nav-item nav-link" href="AdministradorPedido.aspx">Pedidos</a>
                <a class="nav-item nav-link" href="AdministradorEstados.aspx">Estados</a>
                <a class="nav-item nav-link" href="MantenimientoPlatillos.aspx">Platos</a>
            </div>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a href="InicioSesion.aspx" class="btn btn-dark navbar-btn">
                        <img src="/Imagenes/Logoff.png" width="20" height="18" alt="" />&nbsp;&nbsp;&nbsp;Cerrar sesion</a>
                </li>
            </ul>
        </div>
    </nav>

    <br />

    <div class="container">
        <div class="row g-4">
            <div class="col-md-12 col-lg-12">
                <br />
                <h2 class="mb-4" style="text-align: center; color: white; font-family: 'Kaushan Script', cursive;">Mantenimiento de Clientes</h2>
                <form id="form1" runat="server" class="card" style="width: 200rem;">
                    <br />

                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                    <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Always">


                        <ContentTemplate>

                            <div class="row g-2">

                                <asp:Label ID="mensaje_lbl" class="form-text col-12" runat="server"></asp:Label>

                                <!-- Tabla -->
                                <div class="col-sm-12" style="overflow-x: auto">
                                    <small id="Help" class="form-text text-muted">Si estas en movil, deslize para mostrar mas contenido</small>
                                    <table id="dtBasicExample" class="table table-striped table-bordered" style="background-color: white">
                                        <%= DataGridCreation()%>
                                    </table>
                                </div>

                                <br />

                                <div class="d-flex h-100 align-items-center justify-content-center">
                                    <a runat="server" type="button" class="btn btn-secondary" href="/IndexAdmin.aspx" formnovalidate>Volver</a>
                                </div>

                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </form>
            </div>
        </div>
    </div>
</body>
</html>
