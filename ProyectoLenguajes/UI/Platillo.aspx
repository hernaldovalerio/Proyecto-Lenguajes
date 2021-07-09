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
          <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Datos Personales</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Confirmar pedidos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Modificar pedidos</a>
      </li>      
    </ul>       
  </div>
</nav>
    <center>
    <form id="form1" runat="server">
        <br />
        <p>Platillo</p>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/cangreburger.jpg" Height="200" Width="300" />
        <br />
        <br />
        <asp:Label ID="Lbl_Platillo" runat="server" Text="Platillo"></asp:Label>
        <br />
        <asp:Label ID="Lbl_precio" runat="server" Text="Precio"></asp:Label>
    </form>
    </center>
</body> 
</html>
