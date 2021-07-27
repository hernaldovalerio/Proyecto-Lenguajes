<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaPrincipal.aspx.cs" Inherits="ModuloAdministracion.PaginaPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title>Página principal</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <link href="CSS/Administracion2.css" rel="stylesheet" />
</head>
<body>

    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <a class="navbar-brand" href="">
            <img src="/Imagenes/LogoPagWeb2.png" width="150" height="50" alt="" />
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link" href="DatosPersonales.aspx">Datos Personales</a>
                <a class="nav-item nav-link" href="Pedidos.aspx">Carrito pedidos</a>
                <a class="nav-item nav-link" href="HistorialPedidos.aspx">Historial pedidos</a>                
                <a class="nav-item nav-link" href="AcercaDeNosotros.aspx">Acerca de nosotros</a>
            </div>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a href="InicioSesion.aspx" class="btn btn-dark navbar-btn">
                        <img src="/Imagenes/Logoff.png" width="20" height="18" alt="" />&nbsp;&nbsp;&nbsp;Cerrar sesion</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="row g-4">
            <div class="col-md-12 col-lg-12">
                <div align="center">
                    <image class="mb-4" style="text-align: center; color: white" width="200" height="80" src="https://www.todoloquequiero.com/wp-content/uploads/2020/03/IMG_3854.png"/>
                </div>                
                <form id="form2" runat="server" class="card">
                    <center>
                        <small id="Help" class="form-text text-muted">Para quitar el filtro, deje el campo en blanco y vuelva presionar buscar</small>
                    </center>
                    <br />
                    <div>
                        <div align="center">
                    <asp:TextBox ID="TxtBx_BuscarPlatillo" runat="server"></asp:TextBox>
                    <asp:Button ID="Bttn_Buscar_platillo" runat="server" Text="Buscar" class="btn btn-info" OnClick="BuscarPlatillo_Click" Width="100" />
                            
                </div>
                        <asp:Label ID="Lbl_Mensaje" runat="server" Text="" ForeColor="#3399ff"></asp:Label>

                        <br />

                        <div class="col-sm-12" style="overflow-x: auto; align-content: center">

                            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Platillo" class="col-12">
                                <AlternatingItemTemplate>
                                    <tr">
                                        <td>
                                            <asp:Label ID="PlatilloIDLabel" runat="server" Text='<%# Eval("Platillo") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio") %>' />
                                        </td>
                                        <td>
                                            <asp:Button ID="Bttn_ver_platillo" runat="server" Text="Ver" class="btn btn-info" CommandArgument='<%# Eval("Nombre") %>' OnClick="VerDescripcionPlatillo_Click" Width="100" />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:Label ID="PlatilloIDLabel" runat="server" Text='<%# Eval("Platillo") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio") %>' />
                                        </td>
                                        <td>
                                            <asp:Button ID="Bttn_ver_platillo" runat="server" Text="Ver" class="btn btn-info" CommandArgument='<%# Eval("Nombre") %>' OnClick="VerDescripcionPlatillo_Click" Width="100" />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <small id="Help" class="form-text text-muted">Si estas en movil, deslize para mostrar mas contenido</small>
                                    <table runat="server" class="col-12">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: white;" class="table table-bordered table-striped col-12">
                                                    <tr runat="server" class="col-12">
                                                        <th runat="server">Platillo</th>
                                                        <th runat="server">Nombre</th>
                                                        <th runat="server">Precio</th>
                                                        <th runat="server">Descripcion</th>
                                                    </tr>
                                                    <tr id="itemPlaceholder" runat="server">
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr runat="server">
                                            <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF"></td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

