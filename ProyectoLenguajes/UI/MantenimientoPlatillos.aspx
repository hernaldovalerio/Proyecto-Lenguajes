<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MantenimientoPlatillos.aspx.cs" Inherits="ModuloAdministracion.MantenimientoPlatillos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="CSS/Administracion2.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
</head>

<body>

    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <a class="navbar-brand" href="/IndexAdmin.aspx">&nbsp;&nbsp;<img src="/Imagenes/LogoPagWeb2.png" width="150" height="50" alt="" />
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link" href="AdministradorUsuarios.aspx">Usuarios</a>
                <a class="nav-item nav-link" href="AdministrarClientes.aspx">Clientes</a>
                <a class="nav-item nav-link" href="AdministradorPedido.aspx">Pedidos</a>
                <a class="nav-item nav-link" href="AdministradorEstados.aspx">Estados</a>
                <a class="nav-item nav-link active" href="MantenimientoPlatillos.aspx">Platos</a>
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
                <h2 class="mb-4" style="text-align: center; color: white; font-family: 'Kaushan Script', cursive;">Mantenimiento de Platillos</h2>
                <form id="form1" runat="server" class="card">



                    <div class="row g-2">

                        <asp:Label ID="mensaje_lbl" class="form-text col-12" runat="server"></asp:Label>

                        <!-- Nombre Platillo -->
                        <div class="col-12">

                            <label for="plato_txt" class="col-form-label">Plato</label>
                            <input type="text" runat="server" class="form-control" id="plato_txt" placeholder="Introduzca Nombre Plato" required="required" maxlength="50" />
                            <br />
                            <asp:Button ID="buscar_btn" type="button" runat="server" class="btn btn-info" Text="Buscar" OnClick="Buscar_Click" formnovalidate />
                            <asp:Button ID="cancelar_btn" type="button" runat="server" class="btn btn-secondary" Text="Cancelar" OnClick="Cancelar_Click" formnovalidate />

                        </div>

                        <br />

                        <!-- Descripcion -->
                        <div class="col-sm-9">
                            <label for="descripcion_txt" class="col-form-label">Descripción</label>
                            <textarea class="col-10 form-control" runat="server" id="descripcion_txt" rows="4" maxlength="200"></textarea>
                        </div>

                        <!-- Inhabilitado -->
                        <div class="col-sm-3">
                            <label for="inhabilitado_txt" class="col-form-label">Inhabilitado</label>
                            <input type="text" runat="server" class="col-2 form-control disabled" id="inhabilitado_txt" />
                        </div>

                        <br />

                        <!-- Precio-->
                        <div class="col-sm-5">
                            <label for="precio_txt" class="col-form-label">Precio</label>
                            <input type="number" runat="server" class="col-10 form-control" id="precio_txt" placeholder="Introduzca Precio" step=".01" pattern=".{1,5}" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" maxlength="5" />
                        </div>

                        <br />

                        <!-- Foto-->
                        <div class="col-sm-7">
                            <label for="foto_fld " class="col-form-label">Imagen</label>
                            <asp:FileUpload type="file" runat="server" class="col-7 col-auto form-control" ID="foto_fld" required="required" accept="image/*" /><br />

                        </div>

                        <br />

                        <!-- BOTONES-->
                        <div class="d-flex h-100 align-items-center justify-content-center">
                            <br />
                            <asp:Button ID="ingresar_btn" runat="server" type="button" class="btn btn-success" Text="Ingresar" OnClick="Ingresar_Click" />
                            &nbsp;
                                <asp:Button ID="modificar_btn" runat="server" type="button" class="btn btn-warning" Text="Modificar" OnClick="Modificar_Click" />
                            &nbsp;
                                <asp:Button ID="eliminar_btn" runat="server" type="button" class="btn btn-danger" Text="Eliminar" OnClick="Eliminar_Click" formnovalidate />
                            &nbsp;
                                <asp:Button ID="deshabilitar_btn" runat="server" type="button" class="btn btn-secondary" Text="Deshabilitar" OnClick="Deshabilitar_Click" formnovalidate/>
                            <br />
                            <br />
                        </div>
                        <br />

                        <!-- Tabla -->
                        <div class="col-12" style="overflow-x: auto">
                            <small id="Help" class="form-text text-muted">Si estas en movil, deslize para mostrar mas contenido</small>
                            <table id="dtBasicExample" class="table table-striped table-bordered" style="background-color: white">

                                <%= DataGridCreation()%>
                            </table>
                        </div>

                        <br />

                        <div class="d-flex h-100 align-items-center justify-content-center">
                            <a runat="server" type="button" class="btn btn-secondary" href="/IndexAdmin.aspx" formnovalidate>Volver</a>
                        </div>

                    </div>


                </form>
            </div>
        </div>
    </div>
</body>
</html>
