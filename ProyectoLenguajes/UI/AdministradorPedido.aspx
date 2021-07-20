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
    <style>
        body {
            background-image: url('https://cdn.wallpapersafari.com/12/63/Db6fnP.jpg');
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
            <a class="navbar-brand" href="#" style="text-align: center">Egoavil's</a>
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
            </div>
        </nav>

    <div class="container">
        <div class="row g-4">
            <div class="col-md-12 col-lg-12">
                <h3 class="mb-3" style="text-align: center; color: white">Filtros</h3>
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
                        function Checks() {

                            var c1 = 0;
                            var c2 = 0;
                            var c3 = 0;

                            $('#check_email').on('change', function () {
                                if ($(this).is(":checked")) {
                                    $('#id_txt').show();
                                    $('#id_lbl').show();
                                    c1 = 1;
                                    $('#check_email').prop('checked', true);
                                }
                                else {
                                    $('#id_txt').hide();
                                    $('#id_lbl').hide();
                                    c1 = 0;
                                    $('#check_email').prop('checked', false);
                                    $('#check_email').prop('value', "");
                                }
                            });

                            $('#check_nombre').on('change', function () {
                                if ($(this).is(":checked")) {
                                    $('#nombre_txt').show();
                                    $('#apellido_lbl').show();
                                    $('#apellido_txt').show();
                                    $('#nombre_lbl').show();
                                    c2 = 1;
                                    $('#check_nombre').prop('checked', true);
                                }
                                else {
                                    $('#nombre_txt').hide();
                                    $('#apellido_lbl').hide();
                                    $('#apellido_txt').hide();
                                    $('#nombre_lbl').hide();
                                    c2 = 0;
                                    $('#check_nombre').prop('checked', false);
                                    $('#check_nombre').prop('value', '');
                                }
                            });

                            $('#check_fecha').on('change', function () {
                                if ($(this).is(":checked")) {
                                    $('#befhour_opt').show();
                                    $('#befmin_opt').show();
                                    $('#befday_opt').show();
                                    $('#befyear_opt').show();
                                    $('#befmonth_opt').show();
                                    $('#afhour_opt').show();
                                    $('#afmin_opt').show();
                                    $('#afyear_opt').show();
                                    $('#afmonth_opt').show();
                                    $('#afday_opt').show();
                                    $('#desde_lbl').show();
                                    $('#hasta_lbl').show();
                                    c3 = 1;
                                    $('#check_fecha').prop('checked', true);
                                }
                                else {
                                    $('#befhour_opt').hide();
                                    $('#befmin_opt').hide();
                                    $('#befday_opt').hide();
                                    $('#befyear_opt').hide();
                                    $('#befmonth_opt').hide();
                                    $('#afhour_opt').hide();
                                    $('#afmin_opt').hide();
                                    $('#afyear_opt').hide();
                                    $('#afmonth_opt').hide();
                                    $('#afday_opt').hide();
                                    $('#desde_lbl').hide();
                                    $('#hasta_lbl').hide();
                                    $('#check_fecha').prop('checked', false);
                                    c3 = 0;
                                    $('#check_fecha').prop('value', '');
                                }
                            });

                        }
                    </script>



                    <!--
                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                    <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Always">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="filtro_btn" />
                            
                        </Triggers>


                        <ContentTemplate>-->
                    <!-- <asp:AsyncPostBackTrigger ControlID="mod_btn" />-->

                    <div class="row g-3">

                        <asp:Label ID="mensaje_lbl" class="form-text col-12" runat="server"></asp:Label>

                        <script type="text/javascript">
                            Sys.Application.add_load(Fechas);
                            Sys.Application.add_load(Checks);
                        </script>



                        <!-- Check ID -->
                        <div class="col-12">
                            <input id="check_email" for="email_opt" runat="server" type="checkbox" />
                            Filtro por ID
                        </div>

                        <br />

                        <!-- Filtro por ID -->
                        <div class="col-12">
                            <label for="id_txt" class="forml-label" id="id_lbl">ID Usuario</label>
                            <input type="number" runat="server" class="form-control" id="id_txt" placeholder="Introduzca ID" />
                        </div>

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
                            <input type="text" runat="server" class="form-control" id="nombre_txt" placeholder="Introduzca Nombre" />
                        </div>

                        <br />

                        <!-- Filtro por Apellido -->
                        <div class="col-sm-6">
                            <label for="apellido_txt" class="form-label" id="apellido_lbl">Apellido</label>
                            <input id="apellido_txt" type="text" runat="server" class="form-control" placeholder="Introduzca Nombre" />

                        </div>

                        <br />

                        <!-- Check Fecha -->
                        <div class="col-12">
                            <input id="check_fecha" for="befday_opt" runat="server" type="checkbox" />
                            Filtro por Fecha
                        </div>

                        <br />



                        <!-- Fecha Desde -->
                        <div>
                            <label for="befday_opt, befmonth_opt, befyear_opt" class="col-form-label" id="desde_lbl">Desde: </label>
                        </div>



                        <div class="col-sm-2">
                            <select class="form-control" runat="server" id="befday_opt" placeholder="dia">
                                <option>DD</option>
                            </select>
                        </div>


                        <div class="col-sm-2">

                            <select class="form-control" runat="server" id="befmonth_opt" placeholder="mes">
                                <option>MM</option>
                            </select>
                        </div>


                        <div class="col-sm-2">
                            <select class="form-control" runat="server" id="befyear_opt" placeholder="año">
                                <option>AAAA</option>
                            </select>
                        </div>


                        <div class="col-sm-1">
                            <select class="form-control" runat="server" id="befhour_opt" placeholder="hora">
                                <option>HH</option>
                            </select>
                        </div>


                        <div class="col-sm-1">
                            <select class="form-control" runat="server" id="befmin_opt" placeholder="hora">
                                <option>mm</option>
                            </select>
                        </div>

                        <br />

                        <!-- Fecha Hasta -->

                        <div>
                            <label for="afday_opt, befmonth_opt, befyear_opt" class="col-form-label" id="hasta_lbl">Hasta: </label>
                        </div>
                        <div class="col-sm-2">

                            <select class="form-control" runat="server" id="afday_opt" placeholder="dia">
                                <option>DD</option>
                            </select>

                        </div>

                        <div class="col-sm-2">
                            <select class="form-control" runat="server" id="afmonth_opt" placeholder="mes">
                                <option>MM</option>
                            </select>
                        </div>

                        <div class="col-sm-2">
                            <select class="form-control" runat="server" id="afyear_opt" placeholder="año">
                                <option>AAAA</option>
                            </select>
                        </div>
                        <div class="col-sm-1">
                            <select class="form-control" runat="server" id="afhour_opt" placeholder="hora">
                                <option>HH</option>
                            </select>
                        </div>

                        <div class="col-sm-1">
                            <select class="form-control" runat="server" id="afmin_opt" placeholder="hora">
                                <option>mm</option>
                            </select>
                        </div>

                        <!-- BOTON FILTRO -->
                        <div class="d-flex h-100 align-items-center justify-content-center">
                            <asp:Button ID="filtro_btn" runat="server" type="button" class="btn btn-secondary" Text="Aplicar Filtros" OnClick="Filtrar_Click" />
                            <!--<asp:Button ID="filtro1_btn" runat="server" type="button" class="btn btn-primary" Text="Aplicar Filtros" OnClick="Filtrar_Click"/>-->
                        </div>


                        <!-- Tabla -->
                                <div class="col-sm-12">
                                    <table id="dtBasicExample" class="table table-striped table-bordered" style="background-color: white">
                                        <%= GetTable()%>
                                    </table>
                                </div>

                        <br />

                        <!-- BOTON Volver -->
                        <div class="d-flex h-100 align-items-center justify-content-center">
                            <asp:Button ID="volver_btn" runat="server" type="button" class="btn btn-primary" Text="Volver" />
                        </div>


                    </div>

                        <!--</ContentTemplate>
                    </asp:UpdatePanel>-->
                </form>
            </div>
        </div>
    </div>
</body>
</html>
