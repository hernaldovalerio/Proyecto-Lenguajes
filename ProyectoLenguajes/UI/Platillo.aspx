<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Platillo.aspx.cs" Inherits="ModuloAdministracion.Platillo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title>Platillo</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">

    <link href="CSS/Administracion2.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 114px;
        }
    </style>
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

    <script>
        function agregarOrden() {
            alert("La orden ha sido agregada a la lista de pedidos!");
        }
    </script>

    <div class="container">
        <div class="row g-4" align="center">
            <div class="col-md-12 col-lg-12" align="center">
                <br />
                <h2 class="mb-4" style="text-align: center; color: white; font-family: 'Kaushan Script', cursive;">Detalles de Plato</h2>



                <form id="form1" runat="server" class="card" style="width: 22rem;">

                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                    <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Always">


                        <ContentTemplate>

                            <div class="form-group col-12">
                                <asp:Image ID="Img_Platillo" runat="server" ImageUrl="~/img/cangreburger.jpg" Height="100%" Width="100%" />
                            </div>
                            <br />
                            <div class="form-group col-12">
                                <asp:Label ID="Lbl_Platillo" runat="server" class="form-label control-label" Text="Platillo"></asp:Label>
                            </div>
                            <br />
                            <div class="form-group col-12">
                                <asp:Label ID="Lbl_DescPlatillo" runat="server" class="form-label control-label" Text="Descripcion platillo"></asp:Label>
                            </div>
                            <br />
                            <div class="form-group col-12">
                                <asp:Label ID="Lbl_precio" runat="server" class="form-label control-label" Text="Precio"></asp:Label>
                            </div>
                            <br />
                            <div class="form-group col-12">
                                <asp:Label ID="Lbl_cantidad" runat="server" class="form-label control-label" Text="Cantidad a ordenar: "></asp:Label>
                                <br />
                                <input type="number" runat="server" class="auto-style1 form-control" id="n_cantidad" placeholder="Cantidad" size="3" pattern=".{1,2}" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" maxlength="2" required /><br />
                                <small id="Help" class="form-text text-muted">Rango permitido: 1 a 99</small>
                            </div>

                            <br />
                            <asp:Label ID="mensaje_lbl" class="form-text col-12" runat="server"></asp:Label>
                            <br />
                            <div>
                                <asp:Button ID="Bttn_AgregarOrden" class="btn btn-info" runat="server" Text="Agregar orden" OnClick="AgregarOrden_Click" />
                            </div>
                            <br />
                            <div>
                                <asp:Button ID="Bttn_Regresar" class="btn btn-secondary" runat="server" Text="Regresar" OnClick="Regresar_Click" formnovalidate />
                            </div>

                        </ContentTemplate>
                    </asp:UpdatePanel>

                </form>
                <br />
            </div>
        </div>
    </div>
</body>
</html>
