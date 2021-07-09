<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="ModuloAdministracion.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Página principal</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="CSS/Estilos1.css" rel="stylesheet" />
</head>
<body>
    <center>
    <form id="form1" runat="server">        
        <p class="font-blond"> Menú</p>
        <div>
            <asp:Image ID="Image1" wi ImageUrl="" Width="200" runat="server" />
            <asp:BulletedList ID="BL_ListaPlatillos" runat="server" BulletStyle="Circle" DisplayMode="LinkButton" OnClick="BL_ListaPlatillos_Click">
                <asp:ListItem ID="I_Cangreburger" Value="Cangreburger">Cangreburger    .............  10 $</asp:ListItem>
                <asp:ListItem ID="I_Pizza" Value="Platillo.aspx">Pizza .......................  40 $</asp:ListItem>
            </asp:BulletedList>
        </div>        
    </form>
    </center>
</body>
</html>
