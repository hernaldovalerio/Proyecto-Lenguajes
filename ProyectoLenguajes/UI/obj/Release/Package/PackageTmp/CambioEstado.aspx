<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CambioEstado.aspx.cs" Inherits="ModuloAdministracion.CambioEstado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <link href="CSS/Administracion2.css" rel="stylesheet" />
</head>
<body>

    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <a class="navbar-brand" href="#">
                &nbsp;&nbsp;<img src="/Imagenes/LogoPagWeb2.png" width="150" height="50" alt=""/>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
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
                <h3 class="mb-4" style="text-align: center; color: white">Cambiar Estado</h3>
                <form id="form1" runat="server" class="card">
                    <div class="row g-2">
                        <!-- Estado -->
                        <div class="col-12">
                            <label runat="server" id="estado_lbl" for="estado_opt" class="col-form-label">Estado</label>
                            <select class="form-control" runat="server" id="estado_opt">
                                <option>A tiempo</option>
                                <option>Sobre Tiempo</option>
                                <option>Demorado</option>
                                <option>Anulado</option>
                                <option>Entregado</option>
                            </select>
                        </div>

                        <div class="d-flex h-100 align-items-center justify-content-center">
                                <asp:Button ID="aplicar_btn" runat="server" type="button" class="btn btn-primary" Text="Aplicar Cambios" OnClick="Actualizar_Click" />
                        </div>

                        <div class="d-flex h-100 align-items-center justify-content-center">
                                <a runat="server" type="button" class="btn btn-secondary" Text="Volver" href="AdministradorPedido.aspx" >Volver</a>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
