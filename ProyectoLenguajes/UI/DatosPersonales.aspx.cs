using ModuloAdministracion.CapaLogica;
using System;
using ModuloAdministracion.Entidades;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModuloAdministracion.CapaDatos;

namespace ModuloAdministracion
{
    public partial class DatosPersonales : System.Web.UI.Page
    {
        private ClienteBLL clienteBLL = new ClienteBLL();
        private Cliente cliente = new Cliente();
        private List<BuscarCliente_Result> cliente_resultado = null;
        private LogicaAdministracion validacion = new LogicaAdministracion();

        protected void Page_Load(object sender, EventArgs e)
        {
            string correo_electronico = Session["correo_electronico"].ToString();
            mensaje_lbl.Text = "";
            if (!IsPostBack)
            {
                cliente_resultado = clienteBLL.BuscarCliente(correo_electronico);
                nombre_txt.Value = cliente_resultado[0].Nombre;
                apellido_txt.Value = cliente_resultado[0].Apellidos;
                correo_electronico_txt.Value = cliente_resultado[0].Email;
                contrasenna_txt.Value = cliente_resultado[0].Contraseña;
                direccion_txt.Value = cliente_resultado[0].Direccion;
            }

        }

        protected void ActualizarCliente_Click(object sender, EventArgs e)
        {
            if (validacion.SoloLetras(nombre_txt.Value) && validacion.SoloLetras(apellido_txt.Value))
            {
                cliente.nombre = nombre_txt.Value;
                cliente.apellido = apellido_txt.Value;
                cliente.correoElectronico = correo_electronico_txt.Value;
                cliente.contrasenna = contrasenna_txt.Value;
                cliente.direccion = direccion_txt.Value;

                clienteBLL.ActualizarCliente(cliente);
                mensaje_lbl.Text = "";
                Session["Mensaje"] = "Sus datos se han actualizado correctamente!";
                Response.Redirect("PaginaPrincipal.aspx");
            }
            else
            {
                mensaje_lbl.Text = "Por cuestiones de integridad y busqueda, el Nombre y Apellido no acepta numeros";
                mensaje_lbl.Attributes.CssStyle.Add("color", "red");
            }

        }
    }
}