<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorPedido.aspx.cs" Inherits="ModuloAdministracion.AdministradorPedido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
    <style>
        body {
            background-image: url('/Imagenes/Fondo3.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }

        label {
            color: black;
            display: none;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        .card {
            box-sizing: content-box;
            margin-left: auto;
            border: 2px solid #000000;
            padding: 5px;
            width: 100%;
            max-width: 70%;
            padding: 15px;
            margin: auto;
            background: white center;
            background-size: 20% 20%;
            background-repeat: no-repeat;
            background-origin: content-box;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            display: none;
        }
    </style>
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
                <a class="nav-item nav-link active" href="AdministradorPedido.aspx">Pedidos</a>
                <a class="nav-item nav-link" href="AdministradorEstados.aspx">Estados</a>
                <a class="nav-item nav-link" href="MantenimientoPlatillos.aspx">Platos</a>
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
                <h2 class="mb-3" style="text-align: center; color: white; font-family: 'Kaushan Script', cursive;">Buscador de Pedidos</h2>
                <form id="form1" runat="server" class="card">


                    <script>

                        function Fechas() {

                            var d = new Date();

                            let year = d.getFullYear();
                            let month = 12;
                            let day = 31;
                            let hour = 23;
                            let min = 59;

                            for (let i = 2018; i <= year; i++) {

                                $('#befyear_opt').append(`<option value="${i}">
                                       ${i}
                                  </option>`);
                            }

                            for (let i = 1; i <= month; i++) {

                                val = i;

                                $('#befmonth_opt').append(`<option value="${val}">
                                       ${val}
                                  </option>`);
                            }

                            for (let i = 1; i <= day; i++) {

                                val = i;

                                $('#befday_opt').append(`<option value="${val}">
                                       ${val}
                                  </option>`);
                            }

                            for (let i = 2018; i <= year; i++) {

                                $('#afyear_opt').append(`<option value="${i}">
                                       ${i}
                                  </option>`);
                            }

                            for (let i = 1; i <= month; i++) {

                                val = i;

                                $('#afmonth_opt').append(`<option value="${val}">
                                       ${val}
                                  </option>`);
                            }

                            for (let i = 1; i <= day; i++) {

                                val = i;

                                $('#afday_opt').append(`<option value="${val}">
                                       ${val}
                                  </option>`);
                            }

                            for (let i = 0; i <= hour; i++) {

                                val = i;

                                $('#afhour_opt').append(`<option value="${val}">
                                       ${val}
                                  </option>`);
                            }

                            for (let i = 0; i <= min; i++) {

                                val = i;

                                $('#afmin_opt').append(`<option value="${val}">
                                       ${val}
                                  </option>`);
                            }

                            for (let i = 0; i <= hour; i++) {

                                val = i;

                                $('#befhour_opt').append(`<option value="${val}">
                                       ${val}
                                  </option>`);
                            }

                            for (let i = 0; i <= min; i++) {

                                val = i;

                                $('#befmin_opt').append(`<option value="${val}">
                                       ${val}
                                  </option>`);
                            }

                        }

                    </script>

                    <script>

                        $(document).ready(function () {
                            $('#Calendar1').hide();
                            $('#Calendar2').hide();
                            $('#check_email').prop('checked', false);
                            $('#check_nombre').prop('checked', false);
                            $('#check_fecha').prop('checked', false);
                            $('#estado_check').prop('checked', false);
                        });

                    </script>

                    <script>
                        function Checks() {

                            var c1 = 0;
                            var c2 = 0;
                            var c3 = 0;

                            if ($('#check_email').is(":checked")) {
                                $('#id_txt').show();
                                $('#id_lbl').show();
                            } else {
                                $('#id_txt').hide();
                                $('#id_lbl').hide();
                            };

                            if ($('#check_nombre').is(":checked")) {
                                $('#nombre_txt').show();
                                $('#apellido_lbl').show();
                                $('#apellido_txt').show();
                                $('#nombre_lbl').show();
                            } else {
                                $('#nombre_txt').hide();
                                $('#apellido_lbl').hide();
                                $('#apellido_txt').hide();
                                $('#nombre_lbl').hide();
                            };

                            if ($('#check_fecha').is(":checked")) {
                                $('#Calendar1').show();
                                $('#Calendar2').show();
                                $('#desde_lbl').show();
                                $('#hasta_lbl').show();
                            } else {
                                $('#Calendar1').hide();
                                $('#Calendar2').hide();
                                $('#desde_lbl').hide();
                                $('#hasta_lbl').hide();
                            };

                            if ($('#estado_check').is(":checked")) {
                                $('#estado_opt').show();
                                $('#estado_lbl').show();
                            }
                            else {
                                $('#estado_opt').hide();
                                $('#estado_lbl').hide();
                            };

                            $('#check_email').on('change', function () {
                                if ($(this).is(":checked")) {
                                    $('#id_txt').show();
                                    $('#id_lbl').show();
                                    c1 = 1;
                                }
                                else {
                                    $('#id_txt').hide();
                                    $('#id_lbl').hide();
                                    c1 = 0;
                                }
                            });

                            $('#check_nombre').on('change', function () {
                                if ($(this).is(":checked")) {
                                    $('#nombre_txt').show();
                                    $('#apellido_lbl').show();
                                    $('#apellido_txt').show();
                                    $('#nombre_lbl').show();
                                    c2 = 1;
                                }
                                else {
                                    $('#nombre_txt').hide();
                                    $('#apellido_lbl').hide();
                                    $('#apellido_txt').hide();
                                    $('#nombre_lbl').hide();
                                    c2 = 0;
                                }
                            });

                            $('#check_fecha').on('change', function () {
                                if ($(this).is(":checked")) {
                                    $('#Calendar1').removeAttr('hidden');
                                    $('#Calendar2').removeAttr('hidden');
                                    $('#Calendar1').show();
                                    $('#Calendar2').show();
                                    $('#desde_lbl').show();
                                    $('#hasta_lbl').show();
                                    c3 = 1;
                                }
                                else {
                                    $('#Calendar1').hide();
                                    $('#Calendar2').hide();
                                    $('#desde_lbl').hide();
                                    $('#hasta_lbl').hide();
                                    $('#check_fecha').prop('checked', false);
                                    c3 = 0;
                                }
                            });

                            $('#estado_check').on('change', function () {
                                if ($(this).is(":checked")) {
                                    $('#estado_opt').show();
                                    $('#estado_lbl').show();
                                }
                                else {
                                    $('#estado_opt').hide();
                                    $('#estado_lbl').hide();
                                }
                            });
                        }
                    </script>




                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                    <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Conditional">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="filtro_btn" />
                            <asp:AsyncPostBackTrigger ControlID="filtro1_btn" />
                        </Triggers>


                        <ContentTemplate>
                            <div class="row g-3">

                                <asp:Label ID="mensaje_lbl" class="form-text col-12" runat="server"></asp:Label>

                                <script type="text/javascript">
                                    Sys.Application.add_load(Fechas);
                                    Sys.Application.add_load(Checks);
                                </script>



                                <br />

                                <!-- Check Nombre -->
                                <div class="col-12">
                                    <input id="check_nombre" for="nombre_txt" runat="server" type="checkbox" />
                                    Filtro por Nombre
                                </div>

                                <br />

                                <!-- Filtro por Nombre -->
                                <div class="col-sm-6">
                                    <label for="nombre_txt" class="form-label" id="nombre_lbl">Nombre</label>
                                    <input type="text" runat="server" class="form-control" id="nombre_txt" placeholder="Introduzca Nombre" maxlength="50" />
                                </div>

                                <br />

                                <!-- Filtro por Apellido -->
                                <div class="col-sm-6">
                                    <label for="apellido_txt" class="form-label" id="apellido_lbl">Apellido</label>
                                    <input id="apellido_txt" type="text" runat="server" class="form-control" placeholder="Introduzca Nombre" maxlength="50" />

                                </div>

                                <br />

                                <!-- Check Estado -->
                                <div class="col-12">
                                    <input id="estado_check" for="estado_txt" runat="server" type="checkbox" />
                                    Filtro por Estado
                                </div>

                                <br />

                                <!-- Filtro por Estado -->
                                <div class="col-sm-6">
                                    <label for="estado_opt" class="form-label" id="estado_lbl">Estado</label>
                                    <select type="text" runat="server" class="form-control" id="estado_opt">
                                        <option>Elegir Estado</option>
                                        <option>A Tiempo</option>
                                        <option>Sobre Tiempo</option>
                                        <option>Demorado</option>
                                        <option>Anulado</option>
                                        <option>Entregado</option>
                                    </select>
                                </div>

                                <br />

                                <!-- Check Fecha -->
                                <div class="col-12">
                                    <input id="check_fecha" for="befday_opt" runat="server" type="checkbox" />
                                    Filtro por Fecha
                                </div>

                                <br />



                                <!-- Fecha Desde -->
                                <div class="col-sm-6">
                                    <label for="Calendar1" class="col-form-label" id="desde_lbl" runat="server">Desde: </label>
                                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                </div>


                                <br />

                                <!-- Fecha Hasta -->

                                <div class="col-sm-6">
                                    <label for="Calendar2" class="col-form-label" id="hasta_lbl" runat="server">Hasta: </label>
                                    <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                                </div>


                                <br />

                                <!-- BOTON FILTRO -->
                                <div class="d-flex h-100 align-items-center justify-content-center">
                                    <asp:Button ID="filtro1_btn" runat="server" type="button" class="btn btn-primary" Text="Aplicar Filtros" OnClick="Filtrar_Click" />

                                </div>
                                <div class="d-flex h-100 align-items-center justify-content-center">
                                    <asp:Button ID="filtro_btn" runat="server" type="button" class="btn btn-secondary" Text="Quitar Filtros" OnClick="Cancelar_Click" />
                                </div>

                                <!-- Tabla -->
                                <div class="col-sm-12" style="overflow-x: auto">
                                    <small id="Help" class="form-text text-muted">Si estas en movil, deslize para mostrar mas contenido</small>
                                    <table id="dtBasicExample" class="table table-striped table-bordered" style="background-color: white">
                                        <%= GetTable()%>
                                    </table>
                                </div>

                                <br />

                                <!-- BOTON Volver -->
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
