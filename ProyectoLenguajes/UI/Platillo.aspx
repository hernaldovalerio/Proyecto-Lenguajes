<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Platillo.aspx.cs" Inherits="ModuloAdministracion.Platillo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Platillo</title>    
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="CSS/Estilos1.css" rel="stylesheet" />
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
    <center>
    <form id="form1" runat="server">
        <br />
        <p>PLATILLO</p>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/cangreburger.jpg" Height="200" Width="300" />
        <br />
        <br />
        <asp:Label ID="Lbl_Platillo" runat="server" Text="Platillo"></asp:Label>
        <br />
        <asp:Label ID="Lbl_precio" runat="server" Text="Precio"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Bttn_Regresar" runat="server" Text="Regresar" onclick="Regresar_Click" />
        <asp:Button ID="Bttn_AgregarPedido" runat="server" Text="Agregar orden" onclick="AgregarPedido_Click" />
    </form>
    </center>
</body> 
</html>
