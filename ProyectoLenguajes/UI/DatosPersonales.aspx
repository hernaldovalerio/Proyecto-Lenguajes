<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatosPersonales.aspx.cs" Inherits="ModuloAdministracion.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Mantinimiento Clientes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="CSS/Estilos1.css" rel="stylesheet" />
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
                    <a class="nav-item nav-link" href="AdministradorUsuarios.aspx">Datos Personales</a>
                    <a class="nav-item nav-link" href="AdministrarClientes.aspx">Pedidos</a>
                    <a class="nav-item nav-link" href="AdministradorPedido.aspx">Acerca de nosotros</a>                    
                </div>
            </div>
        </nav>
    <div class="col-xs-12">
        <h2>Datos Personales</h2>
    </div>
    <br />
    <br />
    <div class="container well" id="contenedor">
        <form id="form1" runat="server" class="form-horizontal">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Correo electrónico" class="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TxtCorreoElectronico" runat="server" class="form-control" placeholder="Introduzca su correo electronico" required="required" Style="width: 91%"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="form-group">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre" class="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="form-group">
                <asp:Label ID="lblContrasenna" runat="server" Text="Contraseña" Class="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TxtContrasenna" runat="server" Class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" Class="btn btn-success" />
            </div>
        </form>
    </div>
</body>
</html>
