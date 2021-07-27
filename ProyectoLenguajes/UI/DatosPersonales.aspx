<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatosPersonales.aspx.cs" Inherits="ModuloAdministracion.DatosPersonales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title>Inicio de sesion</title>
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
                <a class="nav-item nav-link active" href="DatosPersonales.aspx">Datos Personales</a>
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
                <br />

                <h2 style="text-align: center; color: white; font-family: 'Kaushan Script', cursive;">Datos personales</h2>

                <br />

                <form class="form-horizontal card" runat="server">
                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                    <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Always">
                        <ContentTemplate>
                            <div class="row g-3">

                                <asp:Label ID="mensaje_lbl" class="form-text col-12" runat="server"></asp:Label>

                                <div class="col-sm-6">
                                    <label class="control-label" for="lbl_nombre">Nombre:</label>
                                    <input type="text" runat="server" class="form-control" id="nombre_txt" placeholder="Introduzca su nombre" required="required" maxlength="50" />
                                </div>

                                <br />

                                <div class="col-sm-6">
                                    <label class="control-label" for="lbl_apellido">Apellido:</label>
                                    <input id="apellido_txt" type="text" runat="server" class="form-control" placeholder="Introduzca su apellido" required="required" maxlength="50" />
                                </div>

                                <br />

                                <div class="col-sm-6">
                                    <label class="control-label col-12" for="lbl_correo_electronico">Correo electronico:</label>
                                    <input type="email" runat="server" class="form-control" id="correo_electronico_txt" placeholder="Introduzca su correo electrónico" disabled="disabled" maxlength="100" />

                                </div>

                                <br />


                                <div class="col-sm-6">
                                    <label class="control-label col-12" for="lbl_contrasenna">Contraseña:</label>
                                    <input class="form-control" runat="server" id="contrasenna_txt" type="password" placeholder="Introduzca su contraseña" required="required" data-toggle="password" minlength="8" maxlength="30" />

                                </div>

                                <br />

                                <div class="form-group">
                                    <label class="control-label col-12" for="lbl_Direccion">Dirección:</label>
                                    <div class="col-12">
                                        <textarea id="direccion_txt" class="col-8 form-control" runat="server" rows="4" placeholder="Introduzca su direccion" maxlength="200"></textarea>
                                    </div>
                                </div>

                                <br />

                                <div class="form-group">
                                    <div class="col-sm-offset-4 col-12">
                                        <div class="col-12" align="center">
                                            <asp:Button ID="Bttn_Registrarse" runat="server" Text="Actualizar" class="btn btn-info" Width="100" OnClick="ActualizarCliente_Click" />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-offset-4 col-12">
                                        <div class="col-12" align="center">
                                            <a id="Button1" runat="server" text="Volver" class="btn btn-secondary" width="100" href="PaginaPrincipal.aspx">Volver</a>
                                        </div>
                                    </div>
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
