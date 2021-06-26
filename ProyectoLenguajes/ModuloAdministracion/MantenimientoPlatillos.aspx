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
            <div class="form-group d-flex h-100 align-items-center justify-content-around">
                <div class="col-2"></div>
                <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                    <label for="plato_txt" class="col-form-label">Plato</label>
                </div>
                <input type="text" class="form-control" id="plato_txt" placeholder="Introduzca Nombre Plato" required="required" style="width: 40%"/>
                <button type="button" class="btn btn-info" style="width: 14%">Buscar</button>
                <div class="col-1 text-rigth" style="width: 9%"></div>
            
            </div>

            <br />

            <!-- Descripcion -->
            <div class="form-group d-flex h-100 align-items-center justify-content-around">
                <div class="col-2"></div>
                <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                    <label for="descripcion_txt" class="col-form-label">Descripción</label>
                </div>
                <textarea class="col-10 form-control" id="descripcion_txt" rows="4" style="width: 57%"></textarea>
                <div class="col-1"></div>
            </div>

            <br />

            <!-- Precio-->
            <div class="form-group d-flex h-100 align-items-center justify-content-around">
                <div class="col-2"></div>
                <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                    <label for="precio_txt" class="col-form-label">Precio</label>
                </div>
                <input type="number" class="col-10 form-control" id="precio_txt" placeholder="Introduzca Precio" required="required" style="width: 32%"/>
                <div class="col-4"></div>
            </div>

            <br />

            <!-- Foto-->
            <div class="form-group d-flex h-100 align-items-center justify-content-around">
                <div class="col-2"></div>
                <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                    <label for="foto_fld" class="col-form-label">Imagen</label>
                </div>
                <input type="file" class="col-7 col-auto form-control" id="foto_fld" required="required" style="width: 54%"/><br />
                <div class="col-1"></div>
            </div>

        </div>

    </form>
</body>
</html>
