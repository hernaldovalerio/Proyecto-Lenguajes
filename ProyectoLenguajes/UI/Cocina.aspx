<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cocina.aspx.cs" Inherits="ModuloAdministracion.Cocina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">

    <link href="CSS/Administracion2.css" rel="stylesheet" />
</head>
<body>

    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <a class="navbar-brand">&nbsp;&nbsp;<img src="/Imagenes/LogoPagWeb2.png" width="150" height="50" alt="" />
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
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
                <br />
                <br />
                <h2 class="mb-4" style="text-align: center; color: white">Pedidos Pendientes</h2>
                <br />
                <form id="form1" runat="server" class="card">


                    <div>

                        <asp:ScriptManager ID="ScriptManager1" runat="server" />

                        <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                            </Triggers>

                            <ContentTemplate>

                                <asp:Label ID="warning" runat="server" class="form-text" Style="color: red"></asp:Label>
                                <br />

                                <div class="col-sm-12" style="overflow-x: auto; align-content: center">
                                    <asp:ListView ID="LVPedidos" runat="server" DataKeyNames="PedidoID">

                                        <AlternatingItemTemplate>
                                            <tr style='<%# RowColor(Eval("Estado")) %>'>
                                                <td>
                                                    <asp:Label ID="PlatilloIDLabel" runat="server" Text='<%# Eval("PedidoID") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Estado") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Persona") %>' />
                                                </td>
                                                <td>
                                                    <asp:Button ID="Bttn_ver_Orden" runat="server" Text="Ver" class="btn btn-info" CommandArgument='<%# Eval("PedidoID") %>' OnClick="VerOrden_Click" Width="100" />
                                                </td>
                                                <td>
                                                    <asp:Button ID="BtnDeliver" runat="server" class="btn btn-primary" Text="Entregar" OnClick="BtnDeliver_Click" CommandArgument='<%# Eval("PedidoID") %>' />
                                                </td>
                                            </tr>
                                        </AlternatingItemTemplate>

                                        <ItemTemplate>

                                            <tr style='<%# RowColor(Eval("Estado")) %>'>
                                                <td>
                                                    <asp:Label ID="PlatilloIDLabel" runat="server" Text='<%# Eval("PedidoID") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Estado") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Persona") %>' />
                                                </td>
                                                <td>
                                                    <asp:Button ID="Bttn_ver_Orden" runat="server" Text="Ver" class="btn btn-info" CommandArgument='<%# Eval("PedidoID") %>' OnClick="VerOrden_Click" Width="100" />
                                                </td>
                                                <td>
                                                    <asp:Button ID="BtnDeliver" runat="server" class="btn btn-primary" Text="Entregar" OnClick="BtnDeliver_Click" CommandArgument='<%# Eval("PedidoID") %>' />
                                                </td>
                                            </tr>

                                        </ItemTemplate>

                                        <LayoutTemplate>
                                            <div class="col-sm-12" style="overflow-x: auto; align-content: center">
                                                <small id="Help" class="form-text text-muted">Si estas en movil, deslize para mostrar mas contenido</small>
                                                <table runat="server" class="col-12">
                                                    <tr runat="server">
                                                        <td runat="server" align="center">
                                                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: white;" class="table table-bordered">
                                                                <tr runat="server">
                                                                    <th runat="server">PedidoID</th>
                                                                    <th runat="server">Descripcion</th>
                                                                    <th runat="server">Fecha</th>
                                                                    <th runat="server">Estado</th>
                                                                    <th runat="server">Persona</th>
                                                                    <th runat="server">Detalle de Orden</th>
                                                                    <th runat="server">Entregar Orden</th>
                                                                </tr>
                                                                <tr id="itemPlaceholder" runat="server">
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr runat="server">
                                                        <td runat="server" style="text-align: center;"></td>
                                                    </tr>
                                                </table>
                                            </div>

                                        </LayoutTemplate>

                                    </asp:ListView>



                                    <asp:DataPager runat="server" ID="TableDataPager" PagedControlID="LVPedidos" PageSize="10"></asp:DataPager>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>



                        <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick">
                        </asp:Timer>

                        <asp:Label ID="Mensaje" runat="server" Text="No hay ordenes para deshacer" Visible="false" Style="color: red"></asp:Label>
                    </div>
                    <br />
                    <div align="center">
                        <asp:Button ID="ButtonDeshacer" runat="server" type="button" class="btn btn-primary" Text="Deshacer Ultimo Cambio" OnClick="Button1_Click" />
                    </div>


                </form>
            </div>
        </div>
    </div>
</body>
</html>
