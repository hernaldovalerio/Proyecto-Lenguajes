using CapaLogicaAdministracion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModuloAdministracion
{
    public partial class CambioEstado : System.Web.UI.Page
    {

        private LogicaAdministracion logica;
        private int est = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            logica = new LogicaAdministracion();
            Session["logica"] = logica;
            est = logica.GetEstadoID(Request.QueryString["Estado"]);

            if (!Page.IsPostBack)
            {
                estado_opt.SelectedIndex = est;
            }
            
        }


        protected void Actualizar_Click(object sender, EventArgs e)
        {
            if (estado_opt.SelectedIndex == est)
            {
                Response.Redirect("AdministradorPedido.aspx");
                return;
            }

            logica.ActualizarEstado(Request.QueryString["Pedido"], estado_opt.SelectedIndex);
            Response.Redirect("AdministradorPedido.aspx");

        }

    }
}