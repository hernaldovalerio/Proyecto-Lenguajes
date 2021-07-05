<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MantenimientoCliente.aspx.cs" Inherits="ModuloAdministracion.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mantinimiento Clientes</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <h1>MANTENIMIENTO CLIENTE</h1>
        <div>
                                      
            <br />

            <!-- Nombre Platillo -->
            <div class="form-group d-flex h-100 align-items-center justify-content-around">
                <div class="col-2"></div>
                <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                    <label for="plato_txt" class="col-form-label">Nombre</label>
                </div>
                <input type="text" runat="server" class="form-control" id="plato_txt" placeholder="Introduzca Nombre Plato" required="required" style="width: 41%" />
                <asp:Button ID="buscar_btn" type="button" runat="server" class="btn btn-info" Style="width: 18%" Text="Buscar" OnClick="Unnamed1_Click" />
                <asp:Button ID="cancelar_btn" type="button" runat="server" class="btn btn-secondary" Style="width: 18%" Text="Cancelar" OnClick="Unnamed2_Click" />
                <div class="col-1 text-rigthtext-start" style="width: 4%"></div>

            </div>

            <br />

            <!-- Descripcion -->
            <div class="form-group d-flex h-100 align-items-center justify-content-around">
                <div class="col-2"></div>
                <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                    <label for="descripcion_txt" class="col-form-label">Descripción</label>
                </div>

                <textarea class="col-10 form-control" runat="server" id="descripcion_txt" rows="4" style="width: 57%"></textarea>
                <div class="col-1"></div>
            </div>

            <br />

            <!-- Precio-->
            <div class="form-group d-flex h-100 align-items-center justify-content-around">
                <div class="col-2"></div>
                <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                    <label for="precio_txt" class="col-form-label">Precio</label>
                </div>
                <input type="number" runat="server" class="col-10 form-control" id="precio_txt" placeholder="Introduzca Precio" required="required" style="width: 32%" />
                <div class="col-4"></div>
            </div>

            <br />

            <!-- Foto-->
            <div class="form-group d-flex h-100 align-items-center justify-content-around">
                <div class="col-2"></div>
                <div class="col-1 form-group d-flex h-100 align-items-center justify-content-end">
                    <label for="foto_fld" class="col-form-label">Imagen</label>
                </div>
                <input type="file" runat="server" class="col-7 col-auto form-control" id="foto_fld" required="required" style="width: 54%" /><br />
                <div class="col-1"></div>
            </div>

            <br />

            <!-- Tabla -->
            <div class="form-group d-flex h-100 align-items-center justify-content-around">
                <table id="dtBasicExample" class="table table-striped table-bordered" style="width: 50%">
                    <%= DataGridCreation()%>
                </table>
            </div>

            <br />

            <div class="d-flex h-100 align-items-center justify-content-center">
                <asp:Button ID="volver_btn" runat="server" type="button" class="btn btn-primary" Text="Volver" />
            </div>

        </div>
    </form>
</body>
</html>
