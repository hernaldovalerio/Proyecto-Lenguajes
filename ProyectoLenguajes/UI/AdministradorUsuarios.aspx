<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorUsuarios.aspx.cs" Inherits="ModuloAdministracion.AdministradorUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <link href="CSS/Administracion.css" rel="stylesheet" />

</head>
<body>

    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <a class="navbar-brand" href="#" style="text-align: center">Egoavil's</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link active" href="AdministradorUsuarios.aspx">Usuarios</a>
                    <a class="nav-item nav-link" href="AdministrarClientes.aspx">Clientes</a>
                    <a class="nav-item nav-link" href="AdministradorPedido.aspx">Pedidos</a>
                    <a class="nav-item nav-link" href="AdministradorEstados.aspx">Estados</a>
                    <a class="nav-item nav-link" href="MantenimientoPlatillos.aspx">Platos</a>
                </div>
            </div>
        </nav>

    <div class="container">
         <div class="row g-4">
            <div class="col-md-12 col-lg-12">
                    <h3 class="mb-4" style="text-align: center; color: white">Administrador de usuarios</h3>
                    <form id="form1" runat="server" class="card">
        
                        <div class="row g-2">

                            <!-- Email -->
                            <div class="col-sm-6" >
                                <label for="email_txt" class="form-label">Email</label>
                                <input type="email" runat="server" class="form-control" id="email_txt" placeholder="Introduzca Email" required="required"/>
                                <br />
                                <asp:Button ID="buscar_btn" type="button" runat="server" class="btn btn-info" Text="Buscar" OnClick="Unnamed1_Click" />
                                <asp:Button ID="cancelar_btn" type="button" runat="server" class="btn btn-secondary" Text="Cancelar" OnClick="Unnamed2_Click" />
                            </div>

                            <br />

                            <!-- Contraseña -->
                            <div class="col-sm-6" >
                                <label for="password_txt" class="form-label">Contraseña</label>
                                <input class="form-control" runat="server" id="password_txt" type="password" required="required" data-toggle="password"/>
                                <input id="check" for="password_txt" runat="server" type="checkbox" /> Mostrar Contraseña
            
                            </div>

                            <br />

                            <script>
                                $(function () {
                                    $("#check").on("change", function () {
                                        if ($(this).prop('checked')) {
                                            $("#password_txt").attr("type", "text");
                                        } else {
                                            $("#password_txt").attr("type", "password");
                                        }
                                    })
                                })
                            </script>

                            <br />
                            <br />

                            <!-- Nombre -->
                            <div class="col-sm-6">
                                <label for="nombre_txt" class="form-label">Nombre</label>
                                <input type="text" runat="server" class="form-control" id="nombre_txt" placeholder="Introduzca Nombre" required="required"/>
                            </div>

                            <br />

                            <!-- Apellido -->
                            <div class="col-sm-6">
                                <label for="apellido_txt" class="form-label">Apellido</label>
                                <input id="apellido_txt" type="text" runat="server" class="form-control" placeholder="Introduzca Nombre" required="required"/>
                            </div>

                            <br />

                            <!-- Rol -->
                            <div class="col-sm-3">
                                <label for="rol_opt" class="col-form-label">Rol</label>
                                <select class="form-control" runat="server" id="rol_opt" >
                                    <option>Administrador</option>
                                    <option>Cocina</option>
                                </select>
                            </div>

                            <br />

                            <!-- Direccion -->
                            <div class="col-sm-9">
                                <label for="direccion_txt" class="col-form-label">Direccion</label>
                                <textarea id="direccion_txt" class="col-10 form-control" runat="server" rows="4"></textarea>
                            </div>

                            <br />

                            <!-- BOTONES-->
                            <div class="d-flex h-100 align-items-center justify-content-center">
                                <br />
                                <asp:Button ID="ingresar_btn" runat="server" type="button" class="btn btn-success" Text="Ingresar" />
                                &nbsp;
                                <asp:Button ID="modificar_btn" runat="server" type="button" class="btn btn-warning" Text="Modificar" />
                                &nbsp;
                                <asp:Button ID="eliminar_btn" runat="server" type="button" class="btn btn-danger" Text="Eliminar" />
                                <br />
                                <br />
                                &nbsp;
                            </div>

                            <br />

                            <!-- Tabla -->
                            <div class="col-sm-12">
                                <table id="dtBasicExample" class="table table-striped table-bordered" background-color: white">
                                    <%= DataGridCreation()%>
                                </table>
                            </div>

                            <br />

                            <div class="d-flex h-100 align-items-center justify-content-center">
                                <asp:Button ID="volver_btn" runat="server" type="button" class="btn btn-primary" Text="Volver" />
                            </div>

                        </div>
                    </form>
                </div>
             </div>
        </div>
</body>
</html>
