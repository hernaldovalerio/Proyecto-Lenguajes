<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministrarClientes.aspx.cs" Inherits="ModuloAdministracion.AdministrarClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <br />

        <div class="d-flex h-100 align-items-center justify-content-center">
            <asp:Button ID="bloquear_btn" runat="server" type="button" class="btn btn-dark" Text="Bloquear" />
        </div>

        <br />

        <!-- Email -->
        <div class="form-group d-flex h-100 align-items-center justify-content-around">
            <div class="col-2"></div>
            <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                <label for="email_txt" class="col-form-label">Email</label>
            </div>
            <input type="email" runat="server" class="form-control" id="email_txt" placeholder="Introduzca Email" required="required" style="width: 41%" />
            <asp:Button ID="buscar_btn" type="button" runat="server" class="btn btn-info" Style="width: 18%" Text="Buscar" OnClick="Unnamed1_Click" />
            <asp:Button ID="cancelar_btn" type="button" runat="server" class="btn btn-secondary" Style="width: 18%" Text="Cancelar" OnClick="Unnamed2_Click" />
            <div class="col-1" style="width: 4%"></div>

        </div>

        <br />

        <!-- Estado -->
        <div class="form-group d-flex h-100 align-items-center justify-content-around">
            <div class="col-2"></div>
            <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                <label for="estado_txt" class="col-form-label">Estado</label>
            </div>
            <input type="email" runat="server" class="form-control" id="estado" required="required" style="width: 24%" disabled />
            <div class="col-5"></div>

        </div>

        <br />

        <!-- Tabla -->
        <div class="form-group d-flex h-100 align-items-center justify-content-center">
            <table id="dtBasicExample" class="table table-striped table-bordered" style="width: 50%">
                <%= DataGridCreation()%>
            </table>
        </div>

        <br />

        <div class="d-flex h-100 align-items-center justify-content-center">
            <asp:Button ID="volver_btn" runat="server" type="button" class="btn btn-primary" Text="Volver" />
        </div>

        <div>
        </div>
    </form>
</body>
</html>
