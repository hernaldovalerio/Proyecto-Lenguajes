<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministrarClientes.aspx.cs" Inherits="ModuloAdministracion.AdministrarClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="CSS/Administracion.css" rel="stylesheet" />
</head>
<body>

    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <a class="navbar-brand" href="#" style="text-align: center">Egoavil's</a>
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
            </div>
        </nav>

    <div class="container">
        <div class="row g-4">
            <div class="col-md-12 col-lg-12">
                <h3 class="mb-4" style="text-align: center; color: white">Mantenimiento de Clientes</h3>
                <form id="form1" runat="server" class="card">
                    <br />

                    <div class="row g-2">

                        <!-- Email -->
                        <div class="col-12">
                            <label for="email_txt" class="col-form-label">Email</label>
                            <input type="email" runat="server" class="form-control" id="email_txt" placeholder="Introduzca Email" required="required" />
                            <br />
                            <asp:Button ID="buscar_btn" type="button" runat="server" class="btn btn-info" Text="Buscar" OnClick="Unnamed1_Click" />
                            <asp:Button ID="cancelar_btn" type="button" runat="server" class="btn btn-secondary" Text="Cancelar" OnClick="Unnamed2_Click" />
                        </div>

                        <br />

                        <!-- Estado -->
                        <div class="col-sm-3">
                            <label for="estado_txt" class="col-form-label">Estado</label>
                            <input type="text" runat="server" class="form-control" id="estado" required="required" disabled />
                        </div>

                        <br />

                        <div class="d-flex h-100 align-items-center justify-content-center">
                            <asp:Button ID="bloquear_btn" runat="server" type="button" class="btn btn-dark" Text="Bloquear" />
                        </div>

                        <br />

                        <!-- Tabla -->
                        <div class="form-group d-flex h-100 align-items-center justify-content-center">
                            <table id="dtBasicExample" class="table table-striped table-bordered" style="background-color: white">
                                <%= DataGridCreation()%>
                            </table>
                        </div>

                        <br />

                        <div class="d-flex h-100 align-items-center justify-content-center">
                            <asp:Button ID="volver_btn" runat="server" type="button" class="btn btn-primary" Text="Volver" />
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
