<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarCliente.aspx.cs" Inherits="ModuloAdministracion.RegistrarCliente" %>

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

</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <a class="navbar-brand" href="/InicioSesion.aspx">
            <img src="/Imagenes/LogoPagWeb2.png" width="150" height="50" alt="" />
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
                        <img src="/Imagenes/Login.png" width="20" height="18" alt="" />&nbsp;&nbsp;&nbsp;Iniciar sesion</a>
                </li>
            </ul>
        </div>
    </nav>


    <div class="container">
        <div class="row g-4">
            <div class="col-md-12 col-lg-12">
                <br />
                <h2 class="mb-4" style="text-align: center; color: white">Registrarse</h2>




                <form class="form-horizontal card" runat="server" style="width: 35rem;">
                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                    <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Always">
                        <ContentTemplate>
                            <div class="row g-3">

                                <asp:Label ID="mensaje_lbl" class="form-text col-12" runat="server"></asp:Label>

                                <div class="form-group col-sm-6">
                                    <label class="control-label" for="lbl_nombre">Nombre:</label>
                                    <input type="text" runat="server" class="form-control" id="nombre_txt" placeholder="Introduzca su nombre" required="required" maxlength="50" />
                                </div>

                                <div class="form-group col-sm-6">
                                    <label class="control-label" for="lbl_apellido">Apellido:</label>
                                    <input id="apellido_txt" type="text" runat="server" class="form-control" placeholder="Introduzca su apellido" required="required" maxlength="50" />
                                </div>
                                <div class="form-group col-sm-6">
                                    <label class="control-label col-12" for="lbl_correo_electronico">Correo electronico:</label>
                                    <input type="email" runat="server" class="form-control" id="correo_electronico_txt" placeholder="Introduzca su correo electrónico" required="required" maxlength="100" />
                                </div>
                                <div class="form-group col-sm-6">
                                    <label class="control-label col-sm-5" for="lbl_contrasenna">Contraseña:</label>
                                    <input class="form-control" runat="server" id="contrasenna_txt" type="password" placeholder="Introduzca su contraseña" required="required" data-toggle="password" minlength="8" maxlength="30" />
                                </div>
                                <div class="form-group col-12">
                                    <label class="control-label col-sm-5" for="lbl_Direccion">Dirección:</label>
                                    <textarea id="direccion_txt" class="col-8 form-control" runat="server" rows="4" placeholder="Introduzca su direccion" maxlength="200"></textarea>
                                </div>
                                <div class="form-group" align="center">
                                    <div class="col-sm-offset-4 col-sm-10">
                                        <asp:Button ID="Bttn_Registrarse" runat="server" Text="Aceptar" class="btn btn-info" Width="100" OnClick="RegistrarCliente_Click" />
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
