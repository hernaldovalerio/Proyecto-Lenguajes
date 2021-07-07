<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ModuloAdministracion.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <center>
    <div class="container">  
      <h2>Login</h2>
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
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox" name="remember"> Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>
        </center>
</body>
</html>
