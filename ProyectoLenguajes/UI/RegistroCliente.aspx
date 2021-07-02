<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroCliente.aspx.cs" Inherits="ModuloAdministracion.RegistroCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <!-- BOTONES-->
        <div class="d-flex h-100 align-items-center justify-content-center">
            <br />
            <asp:Button ID="ingresar_btn" runat="server" type="button" class="btn btn-success" Text="Ingresar" />
            &nbsp;
            <asp:Button ID="modificar_btn" runat="server" type="button" class="btn btn-warning" Text="Modificar" />
            <br />
            <br />
            &nbsp;
        </div>
        <br />

        <!-- Email -->
        <div class="form-group d-flex h-100 align-items-center justify-content-around">
            <div class="col-2"></div>
            <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                <label for="email_txt" class="col-form-label">Email</label>
            </div>
            <input type="email" runat="server" class="form-control" id="email_txt" placeholder="Introduzca Email" required="required" style="width: 40.5%" />
            <div class="col-3"></div>

        </div>

        <br />

        <!-- Contraseña -->
        <div class="form-group d-flex h-100 align-items-center justify-content-around">
            <div class="col-2"></div>
            <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                <label for="password_txt" class="col-form-label">Contraseña</label>
            </div>
            <input class="form-control" runat="server" type="password" id="password_txt" required="required" style="width: 38%" data-toggle="password"/>
            <div class="form-group-append">
                <i class="fa fa-eye-slash"></i>
            </div>
            <div class="col-3"></div>
        </div>

        <br />

        <!-- Nombre -->
        <div class="form-group d-flex h-100 align-items-center justify-content-around">
            <div class="col-2"></div>
            <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                <label for="nombre_txt" class="col-form-label">Nombre</label>
            </div>
            <input type="text" runat="server" class="form-control" id="nombre_txt" placeholder="Introduzca Nombre" required="required" style="width: 40.5%" />
            <div class="col-3"></div>

        </div>

        <br />

        <!-- Apellido -->
        <div class="form-group d-flex h-100 align-items-center justify-content-around">
            <div class="col-2"></div>
            <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                <label for="apellido_txt" class="col-form-label">Apellido</label>
            </div>
            <input id="apellido_txt" type="text" runat="server" class="form-control" placeholder="Introduzca Nombre" required="required" style="width: 40.5%" />
            <div class="col-3"></div>

        </div>

        <br />

        <!-- Direccion -->
        <div class="form-group d-flex h-100 align-items-center justify-content-around">
            <div class="col-2"></div>
            <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                <label for="direccion_txt" class="col-form-label">Direccion</label>
            </div>

            <textarea id="direccion_txt" class="col-10 form-control" runat="server" rows="4" style="width: 57%"></textarea>
            <div class="col-1"></div>
        </div>

        <br />

        <br />

        <div class="d-flex h-100 align-items-center justify-content-center">
            <asp:Button ID="volver_btn" runat="server" type="button" class="btn btn-primary" Text="Volver" />
        </div>

        <div>
        </div>
    </form>
</body>
</html>

