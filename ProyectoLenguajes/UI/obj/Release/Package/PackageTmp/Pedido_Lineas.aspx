<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedido_Lineas.aspx.cs" Inherits="ModuloAdministracion.Pedido_Lineas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">

    <link href="CSS/Administracion2.css" rel="stylesheet" />
</head>
<body>

    <nav class="navbar navbar-expand-md bg-dark navbar-dark">        
        <a class="navbar-brand" >
                &nbsp;&nbsp;<img src="/Imagenes/LogoPagWeb2.png" width="150" height="50" alt=""/>
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
        <div class="row g-4" align="center">
            <div class="col-md-12 col-lg-12" align="center">
                <br />
                <h2 class="mb-4" style="text-align: center; color: white">Pedidos Pendientes</h2>
                <br />
                <form id="form1" runat="server" class="card" >


                    <div>
                        

                        <div class="col-sm-6 col-6" align="center" style="overflow-x:auto; align-content: center">




                        <asp:ListView ID="LVLineaPedidos" runat="server" DataKeyNames="LineaPedidoID" class="table table-striped table-bordered" Style="background-color: white">


                            <AlternatingItemTemplate>
                                <tr >
                                    <td>
                                        <asp:Label ID="PlatilloIDLabel" runat="server" Text='<%# Eval("LineaPedidoID") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Cantidad") %>' />
                                    </td>
                                </tr>
                            </AlternatingItemTemplate>


                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="PlatilloIDLabel" runat="server" Text='<%# Eval("LineaPedidoID") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Cantidad") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>


                            <LayoutTemplate>
                                <small id="Help" class="form-text text-muted">Si estas en movil, deslize para mostrar mas contenido</small>
                                <table runat="server" >
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: white;" class="table table-striped table-bordered" >
                                                <tr runat="server" >
                                                    <th runat="server">LineaPedidoID</th>
                                                    <th runat="server">Nombre</th>
                                                    <th runat="server">Cantidad</th>
                                                </tr>
                                                <tr id="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server"></td>
                                    </tr>
                                </table>
                            </LayoutTemplate>


                        </asp:ListView>

                            <br />

                    
                    <asp:Button ID="BtnDeliver" runat="server" type="button" class="btn btn-primary" Text="Entregar Orden" OnClick="BtnDeliver_Click" />
                            <br />
                            <div>
                        <a ID="Bttn_Regresar" class="btn btn-secondary" runat="server" href="/Cocina.aspx">Regresar</a>
                    </div>
                            </div>
                        </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
