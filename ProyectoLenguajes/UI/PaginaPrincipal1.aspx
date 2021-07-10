<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaPrincipal1.aspx.cs" Inherits="ModuloAdministracion.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Página principal</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="CSS/Estilos1.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body background="~/img/El Crustaceo Cascarudo.jpg">
    
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="PaginaPrincipal1.aspx">Inicio</a> 
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="DatosPersonales.aspx">Datos Personales</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Pedidos.aspx">Pedidos</a>
      </li>      
        <li class="nav-item">
        <a class="nav-link" href="#">Acerca de nosotros</a>
      </li>      
    </ul>       
  </div>
</nav>
    <center>
    <form id="form1" runat="server">                
        <div>
            <br />
            <p class="font-blond"> Menú</p>
            <& >
            
            <asp:BulletedList ID="BL_ListaPlatillos" runat="server" BulletStyle="Circle" DisplayMode="LinkButton" OnClick="BL_ListaPlatillos_Click">
                <asp:ListItem ID="I_Cangreburger" Value="Cangreburger">Cangreburger    ........................................................................................  10 $</asp:ListItem>
                <asp:ListItem ID="I_Color_Burger" Value="Color Burger">Color Burger    ..........................................................................................  20 $</asp:ListItem>
                <asp:ListItem ID="I_Cangreburger_con_mermelada_de_medusa" Value="Cangreburger con mermelada de medusa"> Cangreburger con mermelada de medusa ...............................  30 $</asp:ListItem>
                <asp:ListItem ID="I_Pizza" Value="Pizza de Don Cangrejo">Pizza de Don Cangrejo .....................................................................  40 $</asp:ListItem>
            </asp:BulletedList>
        </div>        
    </form>
    </center>
</body>
</html>
