<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="ModuloAdministracion.Pedido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title>Pedido</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
    <link href="CSS/Administracion2.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <a class="navbar-brand" href="/PaginaPrincipal.aspx">
            <img src="/Imagenes/LogoPagWeb2.png" width="150" height="50" alt="" />
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link" href="DatosPersonales.aspx">Datos Personales</a>
                <a class="nav-item nav-link active" href="Pedidos.aspx">Carrito pedidos</a>
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
                <form id="form1" runat="server">
                    <br />
                    <div class="alert alert-success">
                        <asp:Label ID="Lbl_ordenes" runat="server" Text="Label" Font-Bold="true"></asp:Label>
                    </div>
                    <br />
                    <br />


                     <asp:ScriptManager ID="ScriptManager1" runat="server" />
                    <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Always">


                        <ContentTemplate>

                            <div class="col-sm-12" style="overflow-x: auto; align-content: center">

                                <asp:ListView ID="LstVw_OrdenesCliente" runat="server" DataKeyNames="nombre" class="col-12">
                                    <AlternatingItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Lbl_numero" runat="server" Text='<%# Eval("numero") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Lbl_nombre_platillo" runat="server" Text='<%# Eval("nombre") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Lbl_precio" runat="server" Text='<%# Eval("precio") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Lbl_cantidad" runat="server" Text='<%# Eval("cantidad") %>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Bttn_Cambiar_Orden" runat="server" Text="Cambiar" class="btn btn-dark" CommandArgument='<%# Eval("numero") %>' OnClick="Cambiar_Orden_Click" Width="100" />
                                            </td>
                                            <td>
                                                <asp:Button ID="Bttn_Eliminar_Orden" runat="server" Text="Eliminar" class="btn btn-dark" CommandArgument='<%# Eval("numero") %>' OnClick="Eliminar_Orden_Click" Width="100" />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Lbl_numero" runat="server" Text='<%# Eval("numero") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Lbl_nombre_platillo" runat="server" Text='<%# Eval("nombre") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Lbl_precio" runat="server" Text='<%# Eval("precio") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Lbl_cantidad" runat="server" Text='<%# Eval("cantidad") %>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="Bttn_Cambiar_Orden" runat="server" Text="Cambiar" class="btn btn-dark" CommandArgument='<%# Eval("numero") %>' OnClick="Cambiar_Orden_Click" Width="100" />
                                            </td>
                                            <td>
                                                <asp:Button ID="Bttn_Eliminar_Orden" runat="server" Text="Eliminar" class="btn btn-dark" CommandArgument='<%# Eval("numero") %>' OnClick="Eliminar_Orden_Click" Width="100" />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <table runat="server" class="col-12">

                                            <tr runat="server">
                                                <td runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: white;" class="table table-bordered table-striped col-12">
                                                        <tr runat="server" class="col-12">
                                                            <th runat="server">Numero</th>
                                                            <th runat="server">Platillo</th>
                                                            <th runat="server">Precio</th>
                                                            <th runat="server">Cantidad</th>
                                                            <th runat="server">Modificar</th>
                                                            <th runat="server">Eliminar</th>
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
                                <br />
                                <div class="form-group col-12">
                                    <asp:Label ID="Lbl_desc" runat="server" class="form-label control-label" style="color: white" Text="Consideraciones del pedido"></asp:Label>
                                    <br />
                                    <textarea id="consideraciones_txt" class="col-10 form-control" runat="server" rows="2" maxlength="100"></textarea>
                                </div>
                                <br />
                                <div align="center">
                                    <asp:Button ID="Bttn" runat="server" Text="Enviar pedido" class="btn btn-info" OnClick="EnviarPedido_Click" align="center" />
                                </div>
                                <br />
                                <div align="center">
                                    <a ID="Button1" runat="server"  class="btn btn-info" href="/PaginaPrincipal.aspx" align="center">Volver</a>
                                </div>
                            </div>
                      </ContentTemplate>
                      </asp:UpdatePanel>

                </form>
            </div>
        </div>
    </div>
</body>
</html>
