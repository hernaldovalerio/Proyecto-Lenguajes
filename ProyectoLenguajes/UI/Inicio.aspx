<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="ModuloAdministracion.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Página principal</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="CSS/Estilos1.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>
    <center>
    <form id="form1" runat="server">        
        
        <div>
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
            <p class="font-blond"> Menú</p>
            <asp:Image ID="Image1" wi ImageUrl="C:\\Users\\T7\Documents\\GitHub\\Proyecto-Lenguajes\\ProyectoLenguajes\\UI\\img\\My_Two_Krabses_001.webp" Width="200" runat="server" />
            <asp:BulletedList ID="BL_ListaPlatillos" runat="server" BulletStyle="Circle" DisplayMode="LinkButton" OnClick="BL_ListaPlatillos_Click">
                <asp:ListItem ID="I_Cangreburger" Value="Cangreburger">Cangreburger    .............  10 $</asp:ListItem>
                <asp:ListItem ID="I_Pizza" Value="Pizza">Pizza .......................  40 $</asp:ListItem>
            </asp:BulletedList>
        </div>        
    </form>
    </center>
</body>
</html>
