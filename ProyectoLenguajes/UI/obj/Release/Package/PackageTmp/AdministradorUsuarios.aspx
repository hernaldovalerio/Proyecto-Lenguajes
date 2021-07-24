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

    <link href="CSS/Administracion2.css" rel="stylesheet" />

</head>
<body>

    <nav class="navbar navbar-expand-md bg-dark navbar-dark">        
        <a class="navbar-brand" href="/IndexAdmin.aspx">
                &nbsp;&nbsp;<img src="/Imagenes/LogoPagWeb2.png" width="150" height="50" alt=""/>
            </a>
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
                <br />
                <h3 class="mb-4" style="text-align: center; color: white">Administrador de usuarios</h3>
                <form id="form1" runat="server" class="card">

                    <script>
                        function Contraseña() {
                            $("#check").on("change", function () {
                                if ($(this).prop('checked')) {
                                    $("#password_txt").attr("type", "text");
                                } else {
                                    $("#password_txt").attr("type", "password");
                                }
                            })
                        }
                    </script>

                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                    <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Conditional">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="buscar_btn" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="cancelar_btn" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="ingresar_btn" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="modificar_btn" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="eliminar_btn" EventName="Click" />
                        </Triggers>


                        <ContentTemplate>

                            <script type="text/javascript">
                                Sys.Application.add_load(Contraseña);
                            </script>

                            <div class="row g-2">

                                <asp:Label ID="mensaje_lbl" class="form-text col-12" runat="server"></asp:Label>

                                <!-- Email -->
                                <div class="col-sm-6">
                                    <label for="email_txt" class="form-label">Email</label>
                                    <input type="email" runat="server" class="form-control" id="email_txt" placeholder="Introduzca Email" required="required"/>
                                    <br />
                                    <asp:Button ID="buscar_btn" type="button" runat="server" class="btn btn-info" Text="Buscar" OnClick="Buscar_Click" formnovalidate/>
                                    <asp:Button ID="cancelar_btn" type="button" runat="server" class="btn btn-secondary" Text="Cancelar" OnClick="Cancelar_Click" formnovalidate/>
                                </div>

                                <br />

                                <!-- Contraseña -->
                                <div class="col-sm-6">
                                    <label for="password_txt" class="form-label">Contraseña</label>
                                    <input class="form-control" runat="server" id="password_txt" type="password" required="required" data-toggle="password" />
                                    <input id="check" for="password_txt" runat="server" type="checkbox" />
                                    Mostrar Contraseña
            
                                </div>

                                <br />



                                <br />
                                <br />

                                <!-- Nombre -->
                                <div class="col-sm-6">
                                    <label for="nombre_txt" class="form-label">Nombre</label>
                                    <input type="text" runat="server" class="form-control" id="nombre_txt" placeholder="Introduzca Nombre" required="required" />
                                </div>

                                <br />

                                <!-- Apellido -->
                                <div class="col-sm-6">
                                    <label for="apellido_txt" class="form-label">Apellido</label>
                                    <input id="apellido_txt" type="text" runat="server" class="form-control" placeholder="Introduzca Nombre" required="required"/>
                                </div>

                                <br />

                                <!-- Rol -->
                                <div class="col-sm-4">
                                    <label for="rol_opt" class="col-form-label">Rol</label>
                                    <select class="form-control" runat="server" id="rol_opt">
                                        <option>Administrador</option>
                                        <option>Cocina</option>
                                        <option>Cliente</option>
                                    </select>
                                </div>

                                <br />

                                <!-- Direccion -->
                                <div class="col-sm-8">
                                    <label for="direccion_txt" class="col-form-label">Direccion</label>
                                    <textarea id="direccion_txt" class="col-10 form-control" runat="server" rows="4"></textarea>
                                </div>

                                <br />

                                <!-- BOTONES-->
                                <div class="d-flex h-100 align-items-center justify-content-center">
                                    <br />
                                    <asp:Button ID="ingresar_btn" runat="server" type="button" class="btn btn-success" Text="Ingresar" OnClick="Ingresar_Click" />
                                    &nbsp;
                                <asp:Button ID="modificar_btn" runat="server" type="button" class="btn btn-warning" Text="Modificar" OnClick="Modificar_Click" />
                                    &nbsp;
                                <asp:Button ID="eliminar_btn" runat="server" type="button" class="btn btn-danger" Text="Eliminar" OnClick="Eliminar_Click" formnovalidate/>
                                    <br />
                                    <br />
                                    &nbsp;
                                </div>

                                <br />

                                <!-- Tabla -->
                                <div class="col-sm-12" style="overflow-x:auto">
                                    <table id="dtBasicExample" class="table table-striped table-bordered" style="background-color: white">
                                        <%= DataGridCreation()%>
                                    </table>
                                </div>

                                <br />

                                <div class="d-flex h-100 align-items-center justify-content-center">
                                    <a runat="server" type="button" class="btn btn-secondary" href="/IndexAdmin.aspx" formnovalidate>Volver</a>
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
