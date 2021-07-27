using ModuloAdministracion.CapaDatos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModuloAdministracion
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        ClienteDAL clienteDAL = new ClienteDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IniciarSesion_Click(object sender, EventArgs e)
        {            
            string correo_electronico = correo_electronico_txt.Value;
            string contrasenna = contrasenna_txt.Value;

            List<IniciarSesion_Result> iniciarSesion_Results = clienteDAL.IniciarSesion(correo_electronico, contrasenna);

            if (iniciarSesion_Results.Count == 1)
            {
                if (iniciarSesion_Results[0].Inhabilitado == false)
                {
                    Session["correo_electronico"] = iniciarSesion_Results[0].Email;
                    if (iniciarSesion_Results[0].RolID == 3)
                    {
                        Response.Redirect("PaginaPrincipal.aspx");
                    }
                    else if (iniciarSesion_Results[0].RolID == 1)
                    {
                        Response.Redirect("IndexAdmin.aspx");
                    }
                    else
                    {
                        Response.Redirect("Cocina.aspx");
                    }
                }
                else
                {
                    Lbl_Error.Text = "Usuario Bloqueado! Contactar a un admin";
                }
            }
            else
            {
                Lbl_Error.Text = "Credenciales inválidas! intente de nuevo";
            }
        }
    }
}