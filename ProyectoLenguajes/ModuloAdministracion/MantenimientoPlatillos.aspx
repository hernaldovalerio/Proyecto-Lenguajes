<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MantenimientoPlatillos.aspx.cs" Inherits="ModuloAdministracion.MantenimientoPlatillos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>

<body>
    <form id="form1" runat="server">
        
        <div>
            <!-- BOTONES-->
            <div class="d-flex h-100 align-items-center justify-content-center">
                <br />
                <button type="button" class="btn btn-success">Ingresar</button>
                &nbsp;
            <button type="button" class="btn btn-warning">Modificar</button>
                &nbsp;
            <button type="button" class="btn btn-danger">Eliminar</button>
                <br />
                <br />
            </div>

            <br />

            <!-- Nombre Platillo -->
            <div class="form-group d-flex h-100 align-items-center justify-content-center" style="height: 100px;">
                <label for="plato_txt" class="col-form-label">Plato&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input type="text" class="col-10 form-control" id="plato_txt" placeholder="Introduzca Nombre Plato" required="required" /><br />
            </div>

            <br />

            <!-- Descripcion -->
            <div class="form-group d-flex h-100 align-items-center justify-content-center" style="height: 100px;">
                <label for="descripcion_txt" class="col-form-label">Descripción&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <textarea class="col-10 form-control" id="descripcion_txt" rows="3"></textarea>
            </div>

        </div>

    </form>
</body>
</html>
