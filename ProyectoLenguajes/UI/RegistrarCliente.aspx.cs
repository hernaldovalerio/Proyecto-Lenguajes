using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModuloAdministracion.CapaLogica;
using ModuloAdministracion.Entidades;

namespace ModuloAdministracion
{
    public partial class RegistrarCliente : System.Web.UI.Page
    {
        private LogicaAdministracion validacion = new LogicaAdministracion();

        private ClienteBLL ClienteBLL = new ClienteBLL();
        private Cliente cliente = new Cliente();
        protected void Page_Load(object sender, EventArgs e)
        {
            mensaje_lbl.Text = "";
        }
        protected void RegistrarCliente_Click(object sender, EventArgs e)
        {
            if (validacion.SoloLetras(nombre_txt.Value) && validacion.SoloLetras(apellido_txt.Value))
            {
                cliente.nombre = nombre_txt.Value;
                cliente.apellido = apellido_txt.Value;
                cliente.correoElectronico = correo_electronico_txt.Value;
                cliente.contrasenna = contrasenna_txt.Value;
                cliente.direccion = direccion_txt.Value;

                mensaje_lbl.Text = "";

                ClienteBLL.guardarCliente(cliente);
                Response.Redirect("InicioSesion.aspx");
            }
            else
            {
                mensaje_lbl.Text = "Por cuestiones de integridad y busqueda, el Nombre y Apellido no acepta numeros";
                mensaje_lbl.Attributes.CssStyle.Add("color", "red");
            }

        }
    }
}