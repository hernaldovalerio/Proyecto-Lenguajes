using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModuloAdministracion.CapaLogica;

namespace ModuloAdministracion
{
    public partial class AdministradorEstados : System.Web.UI.Page
    {

        private LogicaAdministracion logica;

        protected void Page_Load(object sender, EventArgs e)
        {
            logica = new LogicaAdministracion();
            Session["logica"] = logica;

        }


        protected void Actualizar_Click(object sender, EventArgs e)
        {
            string s = logica.Tiempos(time_txt.Value, delay_txt.Value);
            if (s.Equals("Tiempos de Estados Actualizados"))
            {
                mensaje_lbl.Text = s;
                mensaje_lbl.Attributes.CssStyle.Add("color", "green");
                return;
            }
            mensaje_lbl.Text = s;
            mensaje_lbl.Attributes.CssStyle.Add("color", "red");
        }

    }
}