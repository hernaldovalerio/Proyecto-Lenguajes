<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaPrincipal.aspx.cs" Inherits="ModuloAdministracion.PaginaPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pagina principal</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <link href="CSS/Administracion.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <a class="navbar-brand" href="PaginaPrincipal.aspx" style="text-align: center">Egoavil's</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>        
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link" href="DatosPersonales.aspx">Datos Personales</a>
                    <a class="nav-item nav-link" href="Pedidos.aspx">Pedidos</a>
                    <a class="nav-item nav-link" href="">Acerca de nosotros</a>                    
                </div>
            </div>
        </nav>
    <center>
    <form id="form2" runat="server">                
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
