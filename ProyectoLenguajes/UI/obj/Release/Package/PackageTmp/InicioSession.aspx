<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioSession.aspx.cs" Inherits="ModuloAdministracion.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio de session</title>       
    <link href="CSS/Estilos1.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <a class="navbar-brand" href="#" style="text-align: center">Egoavil's</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link" href="">Datos Personales</a>
                    <a class="nav-item nav-link" href="">Pedidos</a>
                    <a class="nav-item nav-link" href="">Acerca de nosotros</a>                    
                </div>
            </div>
        </nav>
    <center>
    <div class="container">  
      <h2>Inicio de session</h2>
      <br />  
  <form class="form-horizontal" action="/action_page.php" runat="server">
    <div class="form-group">
      <label class="control-label col-sm-5" for="email">Correo Electronico:</label>
      <div class="col-sm-4">        
        <asp:TextBox ID="TxtBx_CorreoElectronico" runat="server" placeholder="Introduzca su correo electronico" name="CorreoElectronico" Width="300px"></asp:TextBox>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-5" for="pwd">Contraseña:</label>
      <div class="col-sm-4">                  
          <asp:TextBox ID="TxtBx_Contrasenna" runat="server" placeholder="Ingrese su contraseña" name="Contrasenna" Width="300px"></asp:TextBox>         
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-3 col-sm-7">
        <div class="checkbox">
          <label><input type="checkbox" name="remember"> Remember me</label>
        </div>
      </div>
    </div>
      <div class="form-group">        
      <div class="col-sm-offset-1 col-sm-10">
        <div class="checkbox">
            <a href="DatosPersonales.aspx">Registrarse</a>
        </div>
      </div>
    </div>
    <div class="form-group body bg-gray">        
      <div class="col-sm-offset-3 col-sm-6">
        <button type="submit" class="btn btn-default">Aceptar</button>
      </div>
    </div>
  </form>
</div>
        </center>    
</body>
</html>
